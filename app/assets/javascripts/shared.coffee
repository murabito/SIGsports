$ ->

  $(document).on 'ready page:load', ->

    $("#responsive-burger a").on 'click', (e) ->
      $('#sidebar').addClass('small');
      $('#sidebar').show()

    $("#sidebar a").on 'click', (e) ->
      if $(this).hasClass('about-us')
        window.location.href = "http://sigsports.com/womens-basketball/about"
  
