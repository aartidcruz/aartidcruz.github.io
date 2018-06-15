$(document).ready ->
  currentYear = new Date().getFullYear()
  circles = document.querySelectorAll('.kablam-circle')
  triangles = document.querySelectorAll('.kablam-a')
  ds = document.querySelectorAll('.kablam-d')
  swirlys = document.querySelectorAll('.kablam-swirly')

  random = Math.floor(Math.random() * 100);


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
