#= require vendor/jquery.min
#= require bootstrap.min

fix_subnav_width = () ->
  $("[data-clampedwidth]").each ->
    elem = $(this)
    parentPanel = elem.data("clampedwidth")
    resizeFn = ->
      sideBarNavWidth = $(parentPanel).width() - parseInt(elem.css("paddingLeft")) - parseInt(elem.css("paddingRight")) - parseInt(elem.css("marginLeft")) - parseInt(elem.css("marginRight")) - parseInt(elem.css("borderLeftWidth")) - parseInt(elem.css("borderRightWidth"))
      elem.css "width", sideBarNavWidth

    resizeFn()
    $(window).resize resizeFn

$ ->
  fix_subnav_width()
