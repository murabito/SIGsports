$ ->

  $(document).on 'ready page:load', ->
  
    $("#responsive-burger a").on 'click', ->
      $('#sidebar').addClass('small');
      $('#sidebar').show()

    $("#sidebar a").on 'click', ->
      if $(this).hasClass 'womens-about'
        window.location.href = "http://sigsports.com/womens-basketball/about"  
