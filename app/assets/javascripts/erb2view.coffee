class CoffeeChap
    constructor: ->

class CoffeeStory extends CoffeeChap
    constructor: ->
        super
              
    story7: ->
        $("#btn").click =>
            @editext = $('#textarea').text()
            @edihtml = $('#textarea').html()
            alert @editext
            alert @edihtml
            $.post "erb2view/input", text: @edihtml
    
    story8: ->
        $("#btn").click =>
            @edihtml = $('#textfield').text()
            alert @edihtml
            $.post "erb2view/input", text: @edihtml
            
    story9: ->
        $("#btn").click =>
            @edihtml = document.getElementById("textfield").value
            #alert @edihtml
            $.post "erb2view/input", text: @edihtml
    
    story10: ->
        $("#btn").click =>
            @edihtml = document.getElementById("area").value
            #alert @edihtml
            $.post "erb2view/input", text: @edihtml    

class CoffeeAct extends CoffeeStory
    constructor: ->
        super
        #this.story8()
        #this.story9()
        this.story10()
$ ->
    new CoffeeAct