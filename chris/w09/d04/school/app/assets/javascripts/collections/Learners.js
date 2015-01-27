//pulls data

var LearnerApp = LearnerApp || {};

LearnerApp.Learners = Backbone.Collection.extend({
  model: LearnerApp.Learner,
  url: '/learners',

  filterByUser: function(username){
    var matchedLearners = this.filter(function(learner){
    return learner.get('username') === username;
  });
  return new LearnerApp.Learners(matchedLearners);
  }
});