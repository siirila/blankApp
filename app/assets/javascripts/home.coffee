# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

blind = true
window.toggle = ->
  console.log blind
  if blind
    blind = false
    $('.hos').fadeToggle(2000)
    setTimeout((-> $('.sig').toggle()), 1800)
  else
    blind = true
    $('.sig').toggle()
    $('.hos').fadeToggle(1000)
