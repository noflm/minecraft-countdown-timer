
packlist = \
	pack.mcmeta \
	pack.png \
	data/cd_timer/function/uninstall.mcfunction \
	data/cd_timer/function/stop_timer.mcfunction \
	data/cd_timer/function/install.mcfunction \
	data/cd_timer/function/start_timer.mcfunction \
	data/cd_timer/function/timer.mcfunction \
	data/minecraft/tags/function/load.json

countdown_timer.zip : $(packlist)
	-rm -f countdown_timer.zip
	-find . -name .DS_Store | xargs rm
	zip -9or countdown_timer.zip $(packlist)



