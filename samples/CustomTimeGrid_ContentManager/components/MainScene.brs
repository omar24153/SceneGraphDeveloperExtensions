' ********** Copyright 2020 Roku Corp.  All Rights Reserved. **********

sub Show(args as Object)
    ' Create our custom view
    timegrid = CreateObject("roSGNode", "MyTimeGrid")

    ' Put a handler config on the root node of the tree
    content = CreateObject("roSGNode", "ContentNode")
    content.Update({
        HandlerConfigTimeGrid: { name: "CHRoot" }
    }, true)

    ' Set content to the view
    timegrid.content = content

    ' This will trigger job to show this screen
    m.top.ComponentController.callFunc("show", {
        view: timegrid
    })

    m.top.signalBeacon("AppLaunchComplete")
end sub
