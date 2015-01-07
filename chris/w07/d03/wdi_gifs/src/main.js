var tags;

var renderNavigation = function(tags){ //this creates the navigation
    var letters = "abcdefghijklmnopqrstuvwxyz#".split("");
    var navigation = "";

    _.each(letters, function(letter){
      navigation += "<a>" + letter + "</a>";
    });

    $("nav").prepend(navigation);
};

var renderTagItems = function(items){ //getting items 
  var gifList = "";
  _.each(items, function(gif) {
    gifList += "<img src =" + gif.url + " >";  //
  });
  $("#content").html(gifList);
};


var renderTagList = function(tags){ //refactored code taken out inside the function
      var listString = "";
    _.each(tags, function(tag) {
      listString += "<div class=\"tag\">" + tag + "</div>";
    });
    $("#content").html(listString); //builds a large string concatination as DO manipulation is significantly slower
};


$(function(){

  });

  $("nav").on("click", "a", function(){
    var self = this;
    var filteredTags =  _.filter(tags, function(tag){
      return $(self).text()===tag[0];
 
    });

   renderTagList(filteredTags);
  });

  $.getJSON("http://www.gifbase.com/js/tags.json", function(data){  //
    //console.log(data);
    tags = data;
    renderTagList(data);
    renderNavigation(data);

      $("#content").on("click", "div", function(){
        var tagName = $(this).html();
        $.getJSON("http://www.gifbase.com/tag/"+ tagName +"?format=json", function(data){ //
        console.log(data);
        renderTagItems(data.gifs);
    });


  });

});