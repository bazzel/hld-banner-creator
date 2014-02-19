App.IndexRoute = Ember.Route.extend
  model: ->
    App.banner
  renderTemplate: ->
    @render 'index'
    @render 'example',
      outlet: 'example'
