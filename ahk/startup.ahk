; #Warn                        ;  Enable warnings to assist with detecting common errors.
SendMode("Input")              ;  Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)     ;  Ensures a consistent starting directory.
#SingleInstance force
Persistent

ChangeIcon("KBD")

; A_MenuMaskKey := "vkFF"          ;  Unassigned. Avoid Ctrl get stuck
A_MenuMaskKey := "vkE8"            ;  No Mapping. Avoid Alt get stuck

; Combos
#Include "keys.ahk"
#Include "dev.ahk"

; Notifications
#Include "caps.ahk"
#Include "layer.ahk"

; Help
#Include "help.ahk"
