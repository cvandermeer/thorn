ready = ->
  $('.town').on 'click', ->
    $('.overlay').fadeIn()
    $('.town_info').fadeIn()

  $('.overlay').on 'click', ->
    $('.overlay').fadeOut()
    $('.town_info').fadeOut()

  $ ->
  $('.castle').on 'click', ->
    $('.overlay').fadeIn()
    $('.castle_info').fadeIn()

  $('.overlay').on 'click', ->
    $('.overlay').fadeOut()
    $('.castle_info').fadeOut()

$(document).ready(ready)
$(document).on('page:load', ready)