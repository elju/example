$(
    width = window.innerWidth
    height = window.innerHeight
    

    moveLetter = ($elt, i) ->
        $elt.css(
            top: (Math.random() * (height - 50) * (Math.min(i, 12) + 1) / 12)
            left: (Math.random() * (width - 50))
        )
        $child = $($elt.children()[0])
        $child.css(
            'font-size': Math.random() * 100 + 100
        )

    makeColor = ->
        hex = '#'
        nums = for i in [0..5]
            Math.floor(Math.random() * 16).toString(16)
        for a in nums
            hex += a
        return hex

    yo = () ->
        for faa in $('div')
            colory = makeColor()
            console.log(colory)
            $(faa).css('color', colory)

    main = ->
        for elt, i in $('div')
            moveLetter($(elt), i)
        temp = Math.floor(Math.random() * 2).toString(16)
        $('body').css('background', '#' + temp + temp + temp)

    setTimeout(yo, 10)
    setInterval(main, 400)
)
