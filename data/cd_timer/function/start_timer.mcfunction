# Start Timer

# Set Time
$scoreboard players set @e[tag=DummyStand] time $(time)

# Set BossBar
execute store result bossbar cd_timer:time max run scoreboard players get @e[tag=DummyStand,limit=1] time
bossbar set cd_timer:time color blue
bossbar set cd_timer:time players @a
bossbar set cd_timer:time visible true

$data modify storage cd_timer display_name set value {"text": "$(name)"}

# Start Countdown
function cd_timer:timer