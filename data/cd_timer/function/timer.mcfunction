# Timer Function

scoreboard players remove @e[tag=DummyStand] time 1
$bossbar set cd_timer:time name ["$(display): ",{"score":{"name":"@e[tag=DummyStand]","objective":"time"},"color":"red"}]
execute store result bossbar cd_timer:time value run scoreboard players get @e[tag=DummyStand,limit=1] time
execute unless entity @e[tag=DummyStand,scores={time=0}] run schedule function utility:timer 1s
execute if entity @e[tag=DummyStand,scores={time=0}] run bossbar set cd_timer:time visible false
