jQuery ($) ->
  displayIgnoreCiMessage = ->
    ignoreCiMessage = $(".ignoring-ci")
    return unless ignoreCiMessage
    $('.dismiss-ignore-ci-warning').click (event) ->
      event.preventDefault()
      dismissIgnoreCiMessage()

    if localStorage.getItem(getLocalStorageKey())
      ignoreCiMessage.hide()

  dismissIgnoreCiMessage = ->
    localStorage.setItem(getLocalStorageKey(), true)
    ignoreCiMessage = $(".ignoring-ci")
    ignoreCiMessage.hide() if ignoreCiMessage

  getLocalStorageKey = ->
    stackName = $('.repo-name').data('repo-full-name')
    "ignoreCIDismissed" + stackName

  displayIgnoreCiMessage()
