import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.NoBorders
import XMonad.Hooks.FadeInactive
import System.IO
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ICCCMFocus
import XMonad.Hooks.EwmhDesktops

import XMonad.Layout.Spacing
import qualified Data.Map as M

-- import XMonad.Actions.SwapWorkspaces

myWorkspaces = ["1:main","2:web","3:chat","4:media","5:graph","6:browse","7:dev","8:mail"]
{-myWorkspaceBar = "dzen2 -x '0' -y '0' -h '24' -w '970' -ta 'l' -fg '#FFFFFF' -bg '#161616' -fn '-*-bitstream vera sans-medium-r-normal-*-11-*-*-*-*-*-*-*'"-}
{-myWorkspaceBar = "dzen2 -x '0' -y '0' -h '24' -w '970' -ta 'l' -fg '#FFFFFF' -bg '#161616'"-}

-- Define window focus color
myFocusedBorderColor = "#bada55"

-- myLogHook :: Handle -> X ()
-- myLogHook h = dynamicLogWithPP $ dzenPP
    -- {
        -- ppCurrent           =   dzenColor "#ebac54" "#161616" . pad 
      -- , ppVisible           =   dzenColor "white" "#161616" . pad
      -- , ppHidden            =   dzenColor "white" "#161616" . pad
      -- , ppHiddenNoWindows   =   dzenColor "#444444" "#161616" . pad 
      -- , ppUrgent            =   dzenColor "#ff0000" "#161616" . dzenStrip
      -- , ppWsSep             =   " "
      -- , ppSep               =   "  |  "
      -- , ppLayout            =   dzenColor "#77a8bf" "#161616" . 
                                -- (\x -> case x of
                                        -- "Spacing 10 Tall"         ->      "Tall"
                                        -- "Spacing 10 Full"         ->      "Full"
                                        -- "Mirror Spacing 10 Tall"  ->      "Mirror Tall"
                                        -- "IM ReflectX IM Full"     ->      "IM"
                                        -- "ReflectX IM Mirror Spacing 10 Tall" ->  "IM"
                                        -- _                         ->      x
                                -- )
      -- , ppTitle             =   (" " ++) . dzenColor "white" "#161616" . dzenEscape
      -- , ppOutput            =   hPutStrLn h
    -- }

-- default tiling algorithm partitions the screen into two panes
-- tiled  x  = spacing 2 $ Tall nmaster delta ratio
    -- where
        -- -- The default number of windows in the master pane
        -- nmaster = x

        -- -- Default proportion of screen occupied by master pane
        -- ratio   = 1/2

        -- -- Percent of screen to increment by when resizing panes
        -- delta   = 3/100
-- tiled = spacing 10 $ Tall 1 (1 / 100) (1/2)
-- tiled = spacing 5 $ Tall 1 (1 / 100) (1/2)
-- tiled = spacing 5 $ Tall 1 (1 / 100) (1/2)
tiled = Tall 1 (1 / 100) (1/2)

fullLayout     = noBorders $ Full

-- Define default layouts used on most workspaces
defaultLayouts  = tiled ||| fullLayout 

main = do
        {-workspaceBar <- spawnPipe myWorkspaceBar-}
        {-xmproc <- spawnPipe "/usr/bin/xmobar /home/jack/.xmobarrc"-}
	xmonad $ defaultConfig
		{ manageHook = manageDocks <+> manageHook defaultConfig
		, layoutHook = smartBorders $ avoidStruts $ defaultLayouts 
                , borderWidth = 5
                -- , logHook = myLogHook workspaceBar  >> setWMName "LG3D"
                {-, logHook = myLogHook workspaceBar >> fadeInactiveLogHook 0xdddddddd-}
                {-, logHook = dynamicLogWithPP xmobarPP-}
                                {-{ ppOutput = hPutStrLn xmproc-}
                                {-, ppTitle = xmobarColor "green" "" . shorten 50-}
                                {-}-}
                ,terminal = "urxvt"
                ,modMask = mod4Mask
                ,handleEventHook    = fullscreenEventHook
                ,workspaces = myWorkspaces
                ,startupHook = takeTopFocus >> setWMName "LG3D"
                -- ,logHook = setWMName "LG3D"
                -- ,startupHook = takeTopFocus
                -- ,logHook = takeTopFocus
                -- ,logHook            = takeTopFocus >> setWMName "LG3D" -- fix java Bug
                -- ,normalBorderColor = "#eee"
                ,normalBorderColor = "#eee"
                ,focusedBorderColor = "#88C425"
                -- ,keys = myKeys
		} `additionalKeys` [ ((0, xK_Print), spawn "/home/jack/scripts/screenshot scr") ]

-- -- Send WM_TAKE_FOCUS
-- takeTopFocus = withWindowSet $ maybe (setFocusX =<< asks theRoot) takeFocusX . W.peek

-- atom_WM_TAKE_FOCUS      = getAtom "WM_TAKE_FOCUS"
-- takeFocusX w = withWindowSet $ \ws -> do
    -- dpy <- asks display
    -- wmtakef <- atom_WM_TAKE_FOCUS
    -- wmprot <- atom_WM_PROTOCOLS

    -- protocols <- io $ getWMProtocols dpy w
    -- when (wmtakef `elem` protocols) $ do
        -- io $ allocaXEvent $ \ev -> do
            -- setEventType ev clientMessage
            -- setClientMessageEvent ev w wmprot 32 wmtakef currentTime
 ------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
-- myKeys conf = M.fromList $
--   [
--     -- screenshot screen
--     ((0,               xK_Print     ), spawn "bash /home/jack/scripts/screenshot scr")

--     -- screenshot window or area
--     -- , ((myModMask .|. shiftMask, xK_Print     ), spawn "bash /home/jack/scripts/screenshot win")           
--   ]
