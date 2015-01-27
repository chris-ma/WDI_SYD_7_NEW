
//collection view. creation of smaller view

var LearnerApp = LearnerApp || {};

LearnerApp.TimelineView = Backbone.View.extend({
  tagName: "div",
  className: "timeline",

  initialize: function(){
    this.collection.on("add", this.addLearner, this);
  },

  render: function(){
    if (this.username) {
      this.collection.filterByUser(this.username).each(this.addLearner, this);
    } else {
      this.collection.each(this.addLearner, this);
    }
  },

  addLearner: function(learner){
    var learnerView = new LearnerApp.LearnerView({ model: learner });
    this.$el.append(learnerView.render().el);
  }
});