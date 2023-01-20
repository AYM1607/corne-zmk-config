#NoEnv                        ;  Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                       ;  Enable warnings to assist with detecting common errors.
SendMode Input                ;  Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%   ;  Ensures a consistent starting directory.

#SingleInstance force
#Persistent

;#MenuMaskKey vkFF            ;  Unassigned. Avoid Ctrl get stuck
 #MenuMaskKey vkE8            ;  No Mapping. Avoid Alt get stuck



; Combos
#include keys.ahk
#include dev.ahk

; Notifications
#include caps.ahk
#include layer.ahk
#include settings.ahk

; Help
#include help.ahk
