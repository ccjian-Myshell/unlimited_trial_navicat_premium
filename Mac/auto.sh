#!/usr/bin/env bash

# 为reset_navicat.sh文件授予可执行权限
chmod u+x reset_navicat.sh

# 将com.ccjian.reset.navicat.premium.trial.period.plist复制到~/Library/LaunchAgents文件夹中，当前用户登录后便会自动加载该定时任务
cp com.ccjian.reset.navicat.premium.trial.period.plist ~/Library/LaunchAgents/com.ccjian.reset.navicat.premium.trial.period.plist

# 加载定时任务，如果没有报错则任务就加载成功了，会按照计划执行重置脚本，如果上面开启了加载即执行任务和任务日志输出，此时可以去查看日志文件，获取脚本执行情况
launchctl load -w ~/Library/LaunchAgents/com.ccjian.reset.navicat.premium.trial.period.plist

# 如果要调整plist文件或是停止任务，请执行以下命令后再进行调整，更多launchctl使用技巧请看文末的参考链接
# launchctl unload -w ~/Library/LaunchAgents/com.ccjian.reset.navicat.premium.trial.period.plist

# 可以通过 launchctl list 查看到 进程号
# launchctl list ｜ grep ccjian

# 卸载、关闭命令
# launchctl unload ~/Library/LaunchAgents/com.ccjian.reset.navicat.premium.trial.period.plist
# launchctl stop com.ccjian.reset.navicat.premium.trial.period.plist