$(document).ready ->
  $ ->
    position = $(window).scrollTop()
    minScroll = 80
    maxScroll = 500

    $(window).scroll ->
      scroll = $(window).scrollTop()
      windowHeight = $(window).height()
      documentHeight = $(document).height()

      if (scroll < position) && (position > minScroll)
        $('.nav').addClass 'bottom'
      else if(scroll + windowHeight > documentHeight - maxScroll)
        $('.nav').addClass 'bottom'
      else
        $('.nav').removeClass 'bottom'
      position = scroll
      return
    return

  if window.innerWidth > 1024
    controller = new (ScrollMagic.Controller)(globalSceneOptions: triggerHook: 'onLeave')
    controller2 = new (ScrollMagic.Controller)(globalSceneOptions: triggerHook: 'onLeave')
    # get all slides
    slides = document.querySelectorAll('.panel')
    # create scene for every slide
    i = 0
    while i < 2
      new (ScrollMagic.Scene)(triggerElement: slides[i]).setPin(slides[i]).addTo controller
      i++
    a = 0
    while a < slides.length
      new (ScrollMagic.Scene)(triggerElement: slides[a], offset: -400).setClassToggle(slides[a], "active").addTo controller2
      a++
    return
