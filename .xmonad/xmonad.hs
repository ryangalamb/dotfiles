import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
        { terminal = "urxvt"
        , normalBorderColor = "#333333"
        , focusedBorderColor = "#111111"
        , manageHook = manageDocks <+> (className =? "Vlc" --> doFloat) <+> manageHook defaultConfig
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = dynamicLogWithPP xmobarPP
                        { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock; xset dpms force off") 
        , ((controlMask, xK_Print),spawn "sleep 0.2; scrot -s")
        , ((0, xK_Print), spawn "scrot")
        , ((mod4Mask, xK_x), spawn "toggle-touchpad") -- Turn off the touchpad
        , ((mod4Mask , xK_g), spawn "google-chrome") -- Start Chrome
        , ((mod4Mask .|. shiftMask, xK_l), spawn "luakit") -- Start Luakit
        ]
