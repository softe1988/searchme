$ ->

  $.ajax
    url: "https://maps.googleapis.com/maps/api/js?key=Figaro.env.GMAPS_API_KEY"
    dataType: 'script'
    cache: true


window.fbAsyncInit = ->
  FB.init(appId: '972425912884517', cookie: true)

  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      window.location = '/auth/facebook' if response.authResponse

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true


