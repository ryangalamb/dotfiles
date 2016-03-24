import XMonad
import XMonad.Util.EZConfig(additionalKeys)

main = do
  xmonad $ defaultConfig
    { terminal            = myTerminal
    , modMask             = myModMask
    , normalBorderColor   = myNormalBorderColor
    , focusedBorderColor  = myFocusedBorderColor
    } `additionalKeys`
    [ ((mod4Mask, xK_x), spawn "/home/rjmill/bin/toggle_touchpad")
    , ((mod4Mask, xK_g), spawn "/usr/bin/chromium") -- Start browser
    ]

myTerminal            = "urxvt"
myModMask             = mod4Mask
myNormalBorderColor   = "#999999"
myFocusedBorderColor  = "#111111"
