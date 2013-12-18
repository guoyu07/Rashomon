Rashomon.JobsController = Ember.ArrayController.extend
  currentSlug: 'engineer'

  currentContent: (->
    @get('model').
      findBy('slug', @get('currentSlug')).
      content_html.
      htmlSafe()
  ).property('currentSlug')

  actions:
    setCurrentSlug: (slug) ->
      @set('currentSlug', slug)