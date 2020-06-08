$(document).ready(function(){

    //when we click on the id of submit in the show_data.php then the following ajax post request works
    $("#submit").click(function(e){                   
        $.ajax({
            url   :"ajax-load.php",
            type  :"POST",
            success:function(data){
                $("#table-data").html(data);

            },
            error:function(){
                alert("error");
            }

        });
        return false;
     

    });


    //delete record
    //delete-btn which is present in the ajax-load.php file that content(output) will be displayed in the page of show_data.php
    $(document).on("click",".delete-btn",function(){
        if(confirm("Do you really want to delete this record?"))
        {
             var userid = $(this).attr("data-id");
             var element = $(this);
             $.ajax({
                 url: "ajax-delete.php",
                 type: "POST",
                 data: {
                     id:userid
                    },
                 success : function(data){
                     if(data == 1){
                         element.closest("tr").fadeOut();
                     }
                     else{
                      $("#error-message").html("cannot deleted").slideDown();
                      $('#success-message').slideUp();
 
                     }
                 }
 
             });
             return false;
        }
    });


    //load table(without refreshing the page )
    function loadTable(){
        $.ajax({
            url:"ajax-load.php",
            type:"post",
            success:function(data){
                $('#table-data').html(data);
            }

        });
        return false;

    }

  //show modal box(when clicking on the edit-btn then the modal need to show to edit)
    $(document).on("click",".edit-btn", function(){
        $("#modal").show();
        var userid = $(this).data("eid");

        $.ajax({
            url:"load-update-form.php",
            type:"POST",
            data:{
                id:userid
            },
            success:function(data){
                $("#modal-form table").html(data);
            }


        });
        return false;

    });

    //Hide modal box
    $('#close-btn').on("click", function(){
        $('#modal').hide();

    });

    //save update form(load-update-form.php)
    $(document).on("click","#edit-submit", function(){
        var userId = $("#edit-id").val();
        var fname = $("#edit-fname").val();
        var lname = $("#edit-lname").val();
        var email = $("#edit-email").val();
        var dob = $("#edit-dob").val();

        $.ajax({
            url:"ajax-update-form.php",
            type:"post",
            data:{
                id:userId,
                firstname:fname,
                lastname:lname,
                email:email,
                dob:dob
            },
            success:function(data){
                if(data == 1){
                    $("#modal").hide();
                    loadTable();

                }

            }

        });
        return false;

    });


});