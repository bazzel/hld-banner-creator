#= require modernizr
#= require jquery
#= require jquery_ujs
#= require foundation
#= require jquery
#= require handlebars
#= require ember
#= require_self
#= require app

# for more details see: http://emberjs.com/guides/application/
window.App = Ember.Application.create
  LOG_VIEW_LOOKUPS: yes
  LOG_ACTIVE_GENERATION: yes

#= require_tree .
