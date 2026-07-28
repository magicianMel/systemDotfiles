-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function () 
  hl.exec_cmd("swaync")
  hl.exec_cmd("qs & awww-daemon")
  hl.exec_cmd("obs --disable-shutdown-check")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("copyq --start-server")
  hl.exec_cmd("otd-daemon")
end)
