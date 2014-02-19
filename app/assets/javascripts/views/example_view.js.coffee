App.ExampleView = Ember.View.extend
  actions:
    updatePreview: ->
      code = @get('context.code')
      @$('iframe').attr('src', "live-example.html?#{1*new Date()}")
      Ember.run.later(=>
        @$('iframe').contents().find('#banner').html("#{code}")
        scriptTag = "<script data-main=\"http://www.pwl.philips.com/assets/integration/1.0/oss-hld\" data-token=\"dpv5\" data-lang=\"de-DE\" src=\"//cdnjs.cloudflare.com/ajax/libs/require.js/2.1.8/require.min.js\"</script>"
        #@$('iframe').contents().find('head').append(scriptTag)
        window.frames["example"].window.$("head").append scriptTag
      , 1000)
