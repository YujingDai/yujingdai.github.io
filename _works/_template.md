# 作品模板

复制此文件，重命名为作品英文/拼音 slug，例如：

```text
_works/lab-visit-2026.md
```

如果需要自定义封面，把同名图片放在 `_works/` 中，例如：

```text
_works/lab-visit-2026.png
_works/lab-visit-2026.jpg
_works/lab-visit-2026.webp
```

支持的封面扩展名：`.png`、`.jpg`、`.jpeg`、`.webp`、`.avif`、`.svg`。

复制时请保留下面的 front matter，并删除这些说明文字。

```markdown
---
title: "作品标题"
category: "新媒体短视频"
year: 2026
role: "编导 / 协调 / 拍摄 / 剪辑"
cover: "/assets/images/works/photo.svg"
summary: "一句话概括作品内容、语气或传播场景。"
featured: false
order: 99
external_url: ""
embed: ""
---

这里写作品说明。

可以包括：

- 项目背景
- 创作角色
- 拍摄或采访过程
- 剪辑和发布说明
- 传播反馈或归档备注

如果是外部平台作品，可填写 `external_url`。

如果是 B 站 iframe，可填写 `embed`，例如：

```html
<iframe src="https://player.bilibili.com/player.html?isOutside=true&bvid=BVxxxx&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"></iframe>
```
```

## 字段说明

- `title`：作品标题。
- `category`：作品类型。建议使用已有分类：`新媒体短视频`、`横屏视频`、`传播项目记录`、`摄影作品`。
- `year`：年份。
- `role`：创作角色。
- `cover`：兜底封面。通常不用改；如果没有同名图片，会显示这里的图片。
- `summary`：作品列表页显示的一句话简介。
- `featured`：是否出现在首页精选作品，`true` 或 `false`。
- `order`：排序数字，越小越靠前。
- `external_url`：外部发布链接，可留空。
- `embed`：视频嵌入代码，可留空。
