
//kicks off the individual bits

var LearnerApp = LearnerApp || {};

LearnerApp.AppRouter = Backbone.Router.extend({
  learnersCollection: new LearnerApp.Learners(),

  openPage: function(url){
    this.navigate(url, {trigger: true});
  },

  routes: {
    "":"home",
    "about": "aboutPage",
    ":username" : "filterUser",
    "*404" : "notFound"
  },

  filterUser: function(username){
    var timelineView = new LearnerApp.TimelineView ({ collection: this.learnersCollection });
    timelineView.username = username;
    timelineView.render();
    $("#container").html(timelineView.el);
  },

  home: function() {
    var timelineView = new LearnerApp.TimelineView ({ collection: this.learnersCollection });
    timelineView.render();
    $("#container").html(timelineView.el);
  },

  aboutPage: function() {
    $("#container").html(JST['about']());
  },

  notFound: function() {
    $("#container").html(JST['404']());
  }

});