# 网站助手 - 技术档案

---

## 网站信息

### 普渡机器人官网 (ahpudu.com)
- 服务器：腾讯云 111.231.58.85
- 宝塔面板：http://111.231.58.85:8888/tencentcloud
- 账号：4cf161f4 / edf37c11455a
- 网站：https://111.231.58.85
- CMS后台：https://www.ahpudu.com/admin.php
- CMS账号：admin / admin
- CMS：PbootCMS V3.1.2

### 金蝶软件官网 (ycjdy.com)
- 同一服务器

---

## 服务器配置

### 云服务器信息
- IP：111.231.58.85
- SSH端口：22
- SSH密码：YUchen112233@

### 反向代理
- nas.ycjdy.com → 飞牛NAS (192.168.10.199:5666) ✅
- ai.ycjdy.com → Mac (192.168.10.166:18789) 待配置

---

## 2026年3月7日 - 飞书插件Bug修复

### 问题
- 飞书渠道每次收到消息后返回错误：`<400> InternalError.Algo.InvalidParameter: Range of input length should be [1, 196608]`
- 原因：飞书 dedup 缓存文件太大（~5KB），触发内部 AI 功能时超出阿里百炼 API 限制

### 解决方案
- 清理飞书去重缓存文件：`~/.openclaw/feishu/dedup/default.json`
- 重启 OpenClaw Gateway

---

## 2026年3月16日 - 企业微信大米机器人配置

### 配置信息
- **Bot ID**: `aibhLk4UxD9-Is8iw32KODz3Yv__RBYW_cZ`
- **Secret**: `J87avIGFR7AkVBoFezQwHzQpERyHetQ6GTpHBD9IWPB`
- **dmPolicy**: `any`（允许所有私聊）

### 配置位置
`~/.openclaw/openclaw.json` → `channels.wecom`

### 常见问题
- 如果报 `invalid secret` 错误，需要去企业微信管理后台重新获取 Secret
- 后台地址：https://work.weixin.qq.com/wework_admin/frame
- 路径：应用管理 → 找到机器人应用 → 查看 Secret

---

## Agent 配置

| ID | 名称 | 用途 |
|---|---|---|
| main | 大管家 | 主助手 |
| 1001 | 百家号 | 百家号文章 |
| 1002 | 知乎 | 知乎文章 |
| 1003 | 今日头条 | 头条文章 |
| 1004 | PPT助手 | PPT制作 |
| 1005 | 网站助手 | 网站相关（当前） |

---

## 文章发布规范（重要！）

### 金蝶软件文章
- **官网**：www.ycjdy.com（必须带上）
- **电话**：15855000501（必须带上）
- **产品线**：精斗云、金蝶AI星辰、金蝶AI星空

### 普渡机器人文章
- **官网**：www.ahpudu.com（必须带上）
- **电话**：15855000501（必须带上）
- **产品线**：工业机器人、清洁机器人
- **不做产品**：❌ 送餐机器人、❌ 酒店服务机器人（写文章时切勿提及！）

### 发布文章时的检查清单
1. 文章末尾必须带上对应官网和电话
2. 普渡文章绝对不能出现送餐机器人、酒店服务机器人
3. 产品线要写对，不要写不做的产品