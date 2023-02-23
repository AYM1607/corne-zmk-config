#Include "shared.ahk"

; Modifiers
; ^ Ctrl
; ! Alt
; + Shift
; # Win

^!+$F19::
{
    ShowHelp("BAS")
}

^!+$F20::
{
    ShowHelp("DEV")
}

^!+$F21::
^!+$F22::
{
    ShowHelp("AXN")
}

^!+$F23::
{
    ShowHelp("STG")
}
