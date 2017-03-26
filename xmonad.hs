import XMonad
import XMonad.Util.EZConfig(additionalKeys)

main = do
  xmonad $ defaultConfig
    { terminal            = myTerminal
    , modMask             = myModMask
    , normalBorderColor   = myNormalBorderColor
    , focusedBorderColor  = myFocusedBorderColor
    , startupHook         = startup
    } `additionalKeys`
    [ ((mod4Mask, xK_x), spawn "/home/rjmill/bin/toggle_touchpad")
    , ((mod4Mask, xK_g), spawn "/usr/bin/chromium") -- Start browser
    , ((mod4Mask, xK_e), spawn "/home/rjmill/bin/open_tray")
    , ((mod4Mask, xK_r), spawn "/home/rjmill/bin/close_tray")
    ]

myTerminal            = "urxvt"
myModMask             = mod4Mask
myNormalBorderColor   = "#999999"
myFocusedBorderColor  = "#111111"

startup = do
        spawn "nm-applet"
        spawn "volumeicon"
