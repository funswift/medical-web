App.tv = App.cable.subscriptions.create "TvChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    switch data.type
      when "comment"
        if (comment = document.getElementById("comment")) != null
          div = document.createElement("div")
          fragment = document.createDocumentFragment()
          small = document.createElement("small")
          small.textContent = data.from
          p = document.createElement("p")
          p.textContent = data.message
          fragment.appendChild(small)
          fragment.appendChild(p)
          comment.appendChild(fragment)
      
      when "meal"
        if (meal = document.getElementById("meal")) != null
          div = document.createElement("div")
          fragment = document.createDocumentFragment()
          small = document.createElement("small")
          small.textContent = data.date
          img = document.createElement("img")
          img.src = data.img.url
          fragment.appendChild(small)
          fragment.appendChild(img)
          meal.appendChild(fragment)