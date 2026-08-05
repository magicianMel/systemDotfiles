--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)


-- float rules


hl.window_rule({
    name  = "terminal-always-floating",
    match = {
        initial_class      = "kitty",
    },
    float   = true,
})

hl.window_rule({
    name  = "file-manager-always-floats",
    match = {
        initial_class = "org.kde.dolphin",
    },
    float = true,
})

hl.window_rule({
    name = "obs-floats",
    match = {
        initial_class = "com.obsproject.Studio",
    },
    float = true,
})

hl.window_rule({
    name  = "dont-animate-flameshot",
    match = {
        class = "flameshot",
    },
    no_anim = 1,
})

hl.window_rule({
    name  = "mpv-always-floats",
    match = {
        initial_class = "mpv",
    },
    float = true,
})


-- workspace specific rules


hl.window_rule({
    name  = "steam-floats-wkspc4",
    match = {
        initial_class = "steam",
    },
    workspace = 4,
    float = true,

})

hl.window_rule({
    name  = "gamescope-goes-in-wkspc5",
    match = {
        class = "gamescope",
    },
    workspace = 5,
})

hl.window_rule({
    name = "sober-goes-in-gamespace",
    match = {
        class = "org.vinegarhq.Sober",
    },
    workspace = 5,
})

hl.window_rule({
    name  = "discord-goes-in-wkspc3",
    match = {
        class = "discord",
    },
    workspace = 3,
})


-- misc


hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

