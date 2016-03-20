window.addEventListener 'load', (->
  $("body").addClass "loaded"
  return
), false


$(document).ready ->

  # skrollr.init constants: box: '150p'

  window.setTimeout (->
    @$(".intro-text").addClass("fill-up")
  ), 1200

  $('.go-down').click ->
    $('html,body').animate { scrollTop: $('.scroll-to').offset().top }, 'slow'

  stickyNav = ->
    if $(window).scrollTop() >= 40
      @$('#top-nav').addClass 'show'
    else
      @$('#top-nav').removeClass 'show'

  $(window).scroll ->
    stickyNav()

  # $('#owl').owlCarousel
  #   items: 1
  #   animateOut: 'fadeOut'
  #   nav: true


