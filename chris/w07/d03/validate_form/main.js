var validate = function(value, selector){

      if (value === "") {
        $(selector).siblings("span").text("required");
        return false;
      }else{
        $(selector).siblings("span").text("");
        return true;
      }
}

$(function() {

    $("#the-form").on("submit", function(){
      var firstName = $("#user_first_name").val();
      var lastName = $("#user_last_name").val();

      var firstValid = validate(firstName, "#user_first_name");
      var lastValid = validate(lastName, "#user_last_name");

      if (!firstValid || !lastValid) {
        event.preventDefault();
      };

      



    });

});