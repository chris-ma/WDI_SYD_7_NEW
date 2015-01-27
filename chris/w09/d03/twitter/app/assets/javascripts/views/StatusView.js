var StatusView = Backbone.View.extend({
  tagName: 'div',
  className: 'status',
  template: JST['statuses/status'],

  events: {
    "click button": "toggleFav"  //button property
  },

  initialize: function(){
      this.model.on("change", this.render, this);   //for updating the model
      this.model.on("destroy", this.remove, this);  //
  },

  render: function() {
    this.$el.html(
      this.template(
        this.model.toJSON()
      )
    );
    return this;  
  },
  remove: function(){
    this.$el.remove();
  },
  toggleFav: function(){
    this.model.set('favourite', !this.model.get('favourite'));
  }
});