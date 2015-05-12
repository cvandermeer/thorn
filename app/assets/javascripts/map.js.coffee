$ ->
  $('.town').on 'click', ->
    $('.overlay').fadeIn()
    $('.town_info').fadeIn()

  $('.overlay').on 'click', ->
    $('.overlay').fadeOut()
    $('.town_info').fadeOut()

