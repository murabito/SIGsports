$ ->

  $(document).on 'ready page:load', ->

    $("#responsive-burger a").on 'click', (e) ->
      $('#sidebar').addClass('small');
      $('#sidebar').show()

  
