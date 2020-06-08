
//ajax 
$(document).ready(function(){
    $("#submit").click(function(){                   //after the submit button clicked then the ajax post request is worked
        $.ajax({
                url: "insert.php", 
                type:"post",
                data:$("#form").serialize(),        //serialize is the jquery method
				success: function(d) {              //d contains the data of the user
                    alert(d);
                    $("#form")[0].reset();          //it reset the form after submitted
				},
				
        });
        return false;

    });

});