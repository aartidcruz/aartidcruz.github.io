$(document).ready(function(){var a,bottomNavigation,codeAnim,codeAnimData,code_first_click,controller,controller2,designAnim,designAnimData,design_first_click,homePage,humanAnim,humanAnimData,human_first_click,i,motionAnim,motionAnimData,motion_first_click,slides,steakyVideo,svgAnimations,vid;bottomNavigation=document.getElementById("nav-bottom");if(bottomNavigation){$(function(){var maxScroll,minScroll,position;position=$(window).scrollTop();minScroll=80;maxScroll=600;$(window).scroll(function(){var documentHeight,scroll,windowHeight;scroll=$(window).scrollTop();windowHeight=$(window).height();documentHeight=$(document).height();if(scroll<position&&position>minScroll){$("#nav-bottom").addClass("show")}else if(scroll+windowHeight>documentHeight-maxScroll){$("#nav-bottom").addClass("show")}else{$("#nav-bottom").removeClass("show")}position=scroll})})}steakyVideo=document.getElementById("steaky-video");if(steakyVideo){vid=document.getElementById("steaky-video");vid.load();vid.play()}svgAnimations=document.getElementById("svg-animations");if(svgAnimations){designAnimData={container:document.getElementById("design-icon"),renderer:"svg",loop:false,autoplay:false,path:"design-icon.json"};codeAnimData={container:document.getElementById("code-icon"),renderer:"svg",loop:false,autoplay:false,path:"code-icon.json"};motionAnimData={container:document.getElementById("motion-icon"),renderer:"svg",loop:false,autoplay:false,path:"motion-icon.json"};humanAnimData={container:document.getElementById("human-icon"),renderer:"svg",loop:false,autoplay:false,path:"human-icon.json"};designAnim=lottie.loadAnimation(designAnimData);codeAnim=lottie.loadAnimation(codeAnimData);motionAnim=lottie.loadAnimation(motionAnimData);humanAnim=lottie.loadAnimation(humanAnimData);code_first_click=true;document.getElementById("code-icon").onclick=function(){if(code_first_click){code_first_click=false;codeAnim.play()}else{codeAnim.stop();codeAnim.play();code_first_click=false}};design_first_click=true;document.getElementById("design-icon").onclick=function(){if(design_first_click){design_first_click=false;designAnim.play()}else{designAnim.stop();designAnim.play();design_first_click=false}};motion_first_click=true;document.getElementById("motion-icon").onclick=function(){if(motion_first_click){motion_first_click=false;motionAnim.play()}else{motionAnim.stop();motionAnim.play();motion_first_click=false}};human_first_click=true;document.getElementById("human-icon").onclick=function(){if(human_first_click){human_first_click=false;humanAnim.play()}else{humanAnim.stop();humanAnim.play();human_first_click=false}};code_first_click=true;document.getElementById("code-text").onclick=function(){if(code_first_click){code_first_click=false;codeAnim.play()}else{codeAnim.stop();codeAnim.play();code_first_click=false}};design_first_click=true;document.getElementById("design-text").onclick=function(){if(design_first_click){design_first_click=false;designAnim.play()}else{designAnim.stop();designAnim.play();design_first_click=false}};motion_first_click=true;document.getElementById("motion-text").onclick=function(){if(motion_first_click){motion_first_click=false;motionAnim.play()}else{motionAnim.stop();motionAnim.play();motion_first_click=false}};human_first_click=true;document.getElementById("human-text").onclick=function(){if(human_first_click){human_first_click=false;humanAnim.play()}else{humanAnim.stop();humanAnim.play();human_first_click=false}};setTimeout(function(){designAnim.play()},300);design_first_click=false;setTimeout(function(){codeAnim.play()},2e3);code_first_click=false;setTimeout(function(){motionAnim.play()},4e3);motion_first_click=false;setTimeout(function(){humanAnim.play()},6e3);human_first_click=false}homePage=document.getElementById("intro");if(homePage){if(window.innerWidth>900){controller=new ScrollMagic.Controller({globalSceneOptions:{triggerHook:"onLeave"}});controller2=new ScrollMagic.Controller({globalSceneOptions:{triggerHook:"onLeave"}});slides=document.querySelectorAll(".panel");i=0;while(i<2){new ScrollMagic.Scene({triggerElement:slides[i]}).setPin(slides[i]).addTo(controller);i++}a=0;while(a<slides.length){new ScrollMagic.Scene({triggerElement:slides[a],offset:-400}).setClassToggle(slides[a],"active").addTo(controller2);a++}}}});