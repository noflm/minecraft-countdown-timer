# Start Timer

# Set Time
$scoreboard players set @e[tag=DummyStand] time $(time)

# Set BossBar
bossbar set cd_timer:time color blue
bossbar set cd_timer:time players @a
bossbar set cd_timer:time visible true

# Start Countdown
$function utility:timer {display:"$(name)"}