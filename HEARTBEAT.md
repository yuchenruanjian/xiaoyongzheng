# HEARTBEAT.md

# 定期任务

## NAS 网盘检测（每次心跳）
检查两个知识库网盘是否在线：
- `/Volumes/团队文件-宇辰软件`
- `/Volumes/团队文件-机器人项目`

如果有网盘离线，自动尝试重新挂载：
```bash
open "smb://zhengxiaoyong@192.168.10.199/团队文件-宇辰软件"
open "smb://zhengxiaoyong@192.168.10.199/团队文件-机器人项目"
```

## 关注企业微信技能
- 每周检查一次 OpenClaw 水产市场/ClawHub 是否有企业微信相关技能
- 关键词：企业微信、wxwork、WeCom



