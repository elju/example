$(
    width = window.innerWidth
    height = window.innerHeight
    

    moveLetter = ($elt) ->
        $elt.css(
            top: (Math.random() * (height - 50))
            left: (Math.random() * (width - 50))
        )
        $child = $($elt.children()[0])
        $child.css(
            'font-size': Math.random() * 100 + 100
        )

    makeColor = ->
        hex = '#'
        nums = for i in [0..5]
            Math.floor(Math.random() * 14).toString(16)
        for a in nums
            hex += a
        return hex

    yo = () ->
        for faa in $('div')
            colory = makeColor()
            console.log(colory)
            $(faa).css('color', colory)

    main = ->
        for elt in $('div')
            moveLetter($(elt))
        temp = moveColor()
        $('body').css('background-color', '#' + temp + temp + temp)

    setTimeout(yo, 10)
    setInterval(main, 400)
)
