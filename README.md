# 戴雨静个人网站

这是一个基于 GitHub Pages + Jekyll 的个人影像作品档案网站，用于整理戴雨静的影像作品、媒体传播实践和项目档案。

## 本地构建

当前 Windows 本地环境使用 Ruby 3.3 与 GitHub Pages 依赖中的 Jekyll 3.10，直接执行 `bundle exec jekyll build` 可能遇到加载顺序问题。可使用仓库内的兼容构建脚本：

```powershell
ruby tools/build-local.rb
```

生成结果位于 `_site/`。

## GitHub Pages

仓库根目录包含 GitHub Pages 可识别的 Jekyll 结构：

- `_config.yml`
- `_layouts/`
- `_includes/`
- `_works/`
- `assets/`

部署到 GitHub Pages 时，建议使用仓库根目录作为 Pages source。

## 内容替换

作品条目位于 `_works/`。作品封面可使用与作品 Markdown 同名的图片文件，例如 `_works/bilibili-mv-2025-a.md` 对应 `_works/bilibili-mv-2025-a.png`。
