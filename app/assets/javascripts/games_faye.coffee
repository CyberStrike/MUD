# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.client = new Faye.Client('/faye')

$(document).on 'ready page:load', ->
  if $('#games.show')[0]?
    client.subscribe '/game' + "1", (payload) ->
      console.log(payload)


$(document).on 'ready page:load', ->
  $('#cmd').parent().on 'submit', (event)->
    event.preventDefault()
    $('.chat-item-container').append("<div class='chat-item'><p class='action'>" + $('#cmd').val() + "</p></div>")
    $('#cmd').val('')
    $('.chat-item-container').animate({
      scrollTop: $(".action:last-of-type").offset().top
    }, 2000);


