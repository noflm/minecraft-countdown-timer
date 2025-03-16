# Setup scoreboard and boss bar for countdown timer

# Set DummyStand
execute as @p run summon minecraft:armor_stand ~ ~ ~ {Tags:[DummyStand],NoGravity:true,Marker:true,Invisible:true}
# Add Scoreboard time
scoreboard objectives add time dummy
# Create BossBar
bossbar add cd_timer:time "time"
bossbar set cd_timer:time visible false