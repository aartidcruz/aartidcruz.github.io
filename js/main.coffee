$(document).ready ->
  if window.innerWidth > 800
    controller = new (ScrollMagic.Controller)(globalSceneOptions: triggerHook: 'onLeave')
    controller2 = new (ScrollMagic.Controller)(globalSceneOptions: triggerHook: 'onLeave')
    # get all slides
    slides = document.querySelectorAll('.panel')
    # create scene for every slide
    i = 0
    while i < slides.length
      new (ScrollMagic.Scene)(triggerElement: slides[i]).setPin(slides[i]).addTo controller
      new (ScrollMagic.Scene)(triggerElement: slides[i], offset: -400).setClassToggle(slides[i], "active").addTo controller2
      i++
    return
