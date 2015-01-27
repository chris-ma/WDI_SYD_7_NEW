//manages a small list of data

var LearnerApp = LearnerApp || {};

LearnerApp.Learner = Backbone.Model.extend({ 
  urlRoot: '/learners',
    defaults: {
    course: "Computer Basics 101",
    description: "What is a computer",
    username: "Cambridge"
  }
});