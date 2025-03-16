# Timer Function

execute if entity @e[tag=DummyStand,scores={time=0..}] run bossbar set cd_timer:time name [{"nbt": "display_name", "storage": "cd_timer", "interpret":true},{"text":": "},{"score":{"name":"@e[tag=DummyStand]","objective":"time"}},{"text":" 秒"}]
execute if entity @e[tag=DummyStand,scores={time=0..}] run execute store result bossbar cd_timer:time value run scoreboard players get @e[tag=DummyStand,limit=1] time

execute if entity @e[tag=DummyStand,scores={time=..0}] run bossbar set cd_timer:time name [{"nbt": "display_name", "storage": "cd_timer", "interpret":true},{"text":": 0 秒"}]
execute if entity @e[tag=DummyStand,scores={time=-2}] run function cd_timer:stop_timer

scoreboard players remove @e[tag=DummyStand] time 1
execute unless entity @e[tag=DummyStand,scores={time=-3}] run schedule function cd_timer:timer 1s