#Requires AutoHotkey v2.0

lastDashTime := 0
doublePressThreshold := 400

SC00C:: {
    global lastDashTime, doublePressThreshold

    currentTime := A_TickCount

    if (currentTime - lastDashTime <= doublePressThreshold) {
        Send('{BS}—')
        lastDashTime := 0
    } else {
        Send('-')
        lastDashTime := currentTime
    }
}
