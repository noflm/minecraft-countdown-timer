# CountDown Timer
MinecraftのBoss Barを使用したカウントダウンタイマーを実現するデータパック。

# 使い方

zipを展開し、`world/datapacks`に配置。
- `/function cd_timer:install`を実行してBossBarをセットアップ。

- `/function cd_timer:start_timer {name:"(タイマー表示名)", time:(カウントダウンしたい秒数)}`を実行してカウントダウン開始。

- `/function cd_tiemr:stop_timer`でカウントダウン中止。

- `/function cd_timer:uninstall`でデータパックをクリーンアップ。
