$(document).ready ->
  bottomNavigation = document.getElementById("nav-bottom")
  if bottomNavigation
    $ ->
      position = $(window).scrollTop()
      minScroll = 80
      maxScroll = 600

      $(window).scroll ->
        scroll = $(window).scrollTop()
        windowHeight = $(window).height()
        documentHeight = $(document).height()

        if (scroll < position) && (position > minScroll)
          $('#nav-bottom').addClass 'show'
        else if(scroll + windowHeight > documentHeight - maxScroll)
          $('#nav-bottom').addClass 'show'
        else
          $('#nav-bottom').removeClass 'show'
        position = scroll
        return
      return

  # Play video on hompage
  steakyVideo = document.getElementById("steaky-video")
  if steakyVideo
    vid = document.getElementById("steaky-video")
    vid.load()
    vid.play()

  # Lottie SVG animations
  svgAnimations = document.getElementById('svg-animations')
  if svgAnimations
    designAnimData =
      container: document.getElementById('design-icon')
      renderer: 'svg'
      loop: false
      autoplay: false
      path: 'design-icon.json'

    codeAnimData =
      container: document.getElementById('code-icon')
      renderer: 'svg'
      loop: false
      autoplay: false
      path: 'code-icon.json'

    motionAnimData =
      container: document.getElementById('motion-icon')
      renderer: 'svg'
      loop: false
      autoplay: false
      path: 'motion-icon.json'

    humanAnimData =
      container: document.getElementById('human-icon')
      renderer: 'svg'
      loop: false
      autoplay: false
      path: 'human-icon.json'

    designAnim = lottie.loadAnimation(designAnimData)
    codeAnim = lottie.loadAnimation(codeAnimData)
    motionAnim = lottie.loadAnimation(motionAnimData)
    humanAnim = lottie.loadAnimation(humanAnimData)

    document.getElementById('design-text').addEventListener 'mouseover', ->
      designAnim.play()
    document.getElementById('design-text').addEventListener 'mouseout', ->
      designAnim.stop()

    document.getElementById('code-text').addEventListener 'mouseover', ->
      codeAnim.play()
    document.getElementById('code-text').addEventListener 'mouseout', ->
      codeAnim.stop()

    document.getElementById('motion-text').addEventListener 'mouseover', ->
      motionAnim.play()
    document.getElementById('motion-text').addEventListener 'mouseout', ->
      motionAnim.stop()

    document.getElementById('human-text').addEventListener 'mouseover', ->
      humanAnim.play()
    document.getElementById('human-text').addEventListener 'mouseout', ->
      humanAnim.stop()


  # Scrollmagic on homepage
  homePage = document.getElementById('intro')
  if homePage
    if window.innerWidth > 900
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
