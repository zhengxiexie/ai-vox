# Quick Start / 快速开始

[English](#english) | [中文](#中文)

---

## English

### Step 1: Clone

```bash
git clone https://github.com/zhengxiexie/ai-vox.git
cd ai-vox
```

### Step 2: Install

#### Claude Code

```bash
make install-claude PROJECT=/path/to/your/project
```

This installs voice definitions to `~/.ai-vox/tones/` and copies `CLAUDE.md` to your project.

#### OpenCode

```bash
make install-opencode
```

Done! Installs vox rules directly to `~/.config/opencode/rules/vox.md`.

#### Warp

```bash
make install-warp PROJECT=/path/to/your/project
```

### Step 3: Try it!

```
/vox buddy
hey, I need help with this function

/vox sensei
review my code, be brutal

/vox auto
[AI picks the voice that matches your vibe]
```

### Other Commands

```bash
make list          # List installed voices
make uninstall     # Remove ~/.ai-vox/
make help          # Show all targets
```

### Tips

- **Start with `/vox auto`** — let the AI read the room.
- **Try `/vox devil`** before making big decisions — it'll find the holes in your plan.
- **Use `/vox zen`** when you just want quick answers without the fluff.

---

## 中文

### 第一步：克隆

```bash
git clone https://github.com/zhengxiexie/ai-vox.git
cd ai-vox
```

### 第二步：安装

#### Claude Code

```bash
make install-claude PROJECT=/你的项目路径
```

这会把声音定义安装到 `~/.ai-vox/tones/`，并复制 `CLAUDE.md` 到你的项目。

#### OpenCode

```bash
make install-opencode
```

搞定！vox 规则会直接安装到 `~/.config/opencode/rules/vox.md`。

#### Warp

```bash
make install-warp PROJECT=/你的项目路径
```

### 第三步：试试！

```
/vox buddy
嘿，这个函数帮我看看

/vox sensei
审查我的代码，别留情

/vox auto
[AI 自动匹配最适合你的声音]
```

### 其他命令

```bash
make list          # 查看已安装的声音
make uninstall     # 删除 ~/.ai-vox/
make help          # 显示所有可用命令
```

### 小贴士

- **先试 `/vox auto`** — 让 AI 自己感知氛围。
- **做大决定前试试 `/vox devil`** — 它会帮你找到计划里的漏洞。
- **想要快速回答就用 `/vox zen`** — 没废话，只有干货。
