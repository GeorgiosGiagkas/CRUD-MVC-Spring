$(document).ready(function () {

    //display message when not all input fields are filled
    $("input[type=submit]").click(function (e) {
        const firstName = $("#firstName").val();
        const lastName = $("#lastName").val();
        const trainerSubject = $("#trainerSubject").val();
        
        if (firstName === "") {
            e.preventDefault();
            displayMessage("Please enter First Name");
        }
        else if(lastName === "") {
            e.preventDefault();
            displayMessage("Please enter Last Name");
        }
        else if(trainerSubject ==="" && trainerSubject!==undefined){
            e.preventDefault();
            displayMessage("Please enter Trainer Subject");
        }

    });
    
   
    function displayMessage(msg){
        const message=$("#message");
        message.css({"display":"flex","justify-content":"center", "align-items":"center", "color":"red"});
        message.text(msg);
        setTimeout(function(){
            message.css({"display":"none"});
        },2000);
    };
    
    
    //confirm delete Alert
    $(".delete").click(function(){
        if(confirm("Delete Trainer. Are you sure?")){ 
            return true;
        }
        return false;
    });

});
