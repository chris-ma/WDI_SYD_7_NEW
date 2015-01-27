var Learner = Backbone.Model.extend({ 
  urlRoot: '/learners',
    defaults: {
    course: "Computer Basics 101",
    description: "What is a computer"
  }
});