#!/bin/bash
# 每日 OpenClaw 备份脚本

DATE=$(date +%Y%m%d-%H%M%)
cd ~/.openclaw/workspace

# 添加重要文件
git add SOUL.md MEMORY.md AGENTS.md USER.md IDENTITY.md TOOLS.md HEARTBEAT.md

# 如果有变化则提交并推送
if git diff --cached --quiet; then
    echo "[$DATE] No changes to backup"
else
    git commit -m "Daily backup: $DATE"
    git push origin main
    echo "[$DATE] Backup completed"
fi