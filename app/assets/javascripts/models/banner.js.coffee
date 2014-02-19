App.Banner = Ember.Object.extend
  title: 'Sukkel'
  appOpenMethod: 'auto'
  appOpenMethods: ['auto', 'new_tab', 'overlay']
  productOpenMethod: 'default'
  productOpenMethods: ['default', 'origin', 'new_tab', 'overlay']
  ctn: ''
  maxWidthOverlay: 800
  maxHeightOverlay: 500
  code: (->
    "<div class=\"pwl-banner\" #{@get('dataAttrs')}></div>"
  ).property('dataAttrs')
  dataAttrs: (->
    data = []
    data.push @get('dataAppOpenMethod')
    data.push @get('dataProductOpenMethod')
    data.push @get('dataCtn')
    unless @get('appOpenMethod') is 'new_tab'
      data.push @get('dataMaxWidthOverlay')
      data.push @get('dataMaxHeightOverlay')
    data.join(' ')
  ).property('appOpenMethod', 'dataCtn', 'dataMaxWidthOverlay', 'dataMaxHeightOverlay', 'dataAppOpenMethod', 'dataProductOpenMethod')

  dataAppOpenMethod: (->
    "data-open-method=\"#{@get('appOpenMethod')}\""
  ).property('appOpenMethod')
  dataProductOpenMethod: (->
    unless @get('productOpenMethod') is 'default'
      "data-product-open-method=\"#{@get('productOpenMethod')}\""
  ).property('productOpenMethod')
  dataCtn: (->
    ctn = Ember.$.trim @get('ctn')
    unless Ember.isEmpty(ctn)
      "data-ctn=\"#{ctn}\""
  ).property('ctn')
  dataMaxWidthOverlay: (->
    "data-max-overlay-width=\"#{@get('maxWidthOverlay')}px\""
  ).property('maxWidthOverlay')
  dataMaxHeightOverlay: (->
    "data-max-overlay-height=\"#{@get('maxHeightOverlay')}px\""
  ).property('maxHeightOverlay')
