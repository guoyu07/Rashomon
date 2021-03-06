Rashomon.Router.map ->
  @route 'index'       , path: '/'
  @route 't-shirt'     , path: '/t-shirt/:position'
  @route 'products'    , path: '/products/:position'
  @route 'warehousing' , path: '/warehousing/:position'
  @route 'distribution', path: '/distribution/:position'
  @route 'jobs'        , path: '/jobs/:position'
  @route 'about'       , path: '/about/:position'

Rashomon.Router.reopen notifyGoogleAnalytics: (->
  ga('send', 'pageview', page: @get('url'), title: @get('url'))
).on('didTransition')
