App.IndexController = Ember.ObjectController.extend
  hideAdvancedSettings: (->
    @get('appOpenMethod') is 'new_tab'
  ).property('appOpenMethod')

