#SingleInstance, force

; Swap caps with esc
CapsLock::Esc
Return
Esc::CapsLock
Return

; Multiple desktops
#j::^#Left ; move one desktop left
Return
#k::^#Right ; move one desktop right
Return

#+j:: ; Move window one desktop left
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Left}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return
#+k:: ; Move window one desktop right
  WinGetTitle, Title, A
  WinSet, ExStyle, ^0x80, %Title%
  Send {LWin down}{Ctrl down}{Right}{Ctrl up}{LWin up}
  sleep, 50
  WinSet, ExStyle, ^0x80, %Title%
  WinActivate, %Title%
Return

; Window commands
#m::  ; Toggle maximize
  WinGet, MX, MinMax, A
  if MX
    WinRestore, A
  else
    WinMaximize, A
Return
#h::#Left ; Move window to left
Return
