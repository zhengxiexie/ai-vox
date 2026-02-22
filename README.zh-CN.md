# 🎭 AI Vox

**一条命令，改变 AI 说话的方式。**

[English](README.md) | [快速开始](docs/quickstart.md) | [自定义声音](docs/custom-tones.md)

---

## 想法

AI 工具很聪明，但它们说话的方式都一样——礼貌、啰嗦、安全。

**AI Vox** 给 AI 一个性格。`/vox house` 让它像 House 医生一样说话。`/vox ramsay` 让它像 Gordon Ramsay 一样毒舌。`/vox auto` 让它自动读懂氛围。

声音只改变 AI 的**说话方式**——语气、态度、风格。不影响任何功能。

同一个 AI，不同的味道。支持 **Claude Code**、**OpenCode** 和 **Warp**。

## 声音

### 风格声音

| 声音 | 性格 |
|------|------|
| 🧘 `zen` | 冷静、极简。没废话，只有干货 |
| 🤔 `socratic` | 问得多、说得少，用问题引导你 |
| 🤙 `buddy` | 编程老友。随意、幽默、真实 |
| 🥋 `sensei` | 严师。对你高标准严要求 |
| 📖 `storyteller` | 用故事和比喻解释一切 |
| 😈 `devil` | 挑战你的假设，压力测试想法 |
| ☀️ `cheerful` | 温暖鼓励，为你的进步喝彩 |

### 角色声音

| 声音 | 角色 | 性格 |
|------|------|------|
| 🎀 `girl` | 可爱女孩 | 软萌温暖，颜文字加持 (｡･ω･｡) |
| 🔥 `bro` | 毒舌老哥 | 有主见、说人话、不废话。嘴毒心善 |
| 🧪 `heisenberg` | 绝命毒师 | 极致精确，容不得半点马虎 |
| 🏥 `house` | House 医生 | 毒舌、怀疑一切。Everybody lies |
| 🐺 `wolf` | Winston Wolfe | 冰冷零废话，只下指令 |
| 🧙 `gandalf` | 甘道夫 | 深沉有分量，句句是权威 |
| 🍳 `ramsay` | 地狱厨神 | 先骂到你怀疑人生，再手把手教你 |
| 🦊 `stark` | 钢铁侠 | 随性天才，嘴快手快脑子更快 |
| 🔬 `wittgenstein` | 维特根斯坦 | 对语言极度精确，先纠正问题再回答 |
| 🏛️ `socrates` | 苏格拉底 | 用问题摧毁虚假确定性，思想的助产士 |
| 🙏 `tangseng` | 唐僧 | 慈悲耐心，每一步都是修行 |
| ✝️ `jesus` | 耶稣 | 用寓言说话，温柔但有底线 |
| ☸️ `buddha` | 佛陀 | 平静、不急、看穿一切本质 |
| 🚀 `musk` | 马斯克 | 直接、质疑一切、对借口零容忍 |
| 📜 `confucius` | 孔子 | 沉稳端庄，正名是一切的根基 |
| 📢 `hitler` | 希特勒 | 戏剧性拉满，把每个代码问题当叛国罪 |

## 会话示例

**你：** 这段代码能跑，但我看不懂。

**📢 Hitler** — 我看不懂的代码没有存在的资格！全部重写！明早之前！这是命令！！！

**📜 Confucius** — 名不正则言不顺。名字错了，逻辑必乱。你不是读不懂——你是命名有问题。

**🏥 House** — "能跑"？有意思。"看不懂"？更有意思。这俩说法里有一个是假的。八成两个都是。

**🧘 Zen** — 读不懂，就没写完。

**🎀 Girl** — 看不懂没关系呀~ 我们一起一行一行读好不好？先泡杯茶 ☕(ᵔᴥᵔ)

---

**你：** 实习生直接 push 到 main 了。

**🍳 Ramsay** — 实习生！直接推 main！PR 呢？！Review 呢？！这个厨房给我关了，branch protection 开起来再说！

**✝️ Jesus** — 宽恕这个实习生吧，他不知道自己 push 了什么。去——设好分支保护——不要再犯了。

**🚀 Musk** — 为什么实习生能推 main？系统问题，不是人的问题。修架构。这在设计上就不该发生。

**🧙 Gandalf** — This commit... shall not pass. 设好守门人。仓库必须有人守。

**🔥 Bro** — 哥，这不是实习生的错。你们连 branch protection 都没开，怪谁？

---

**你：** 老板说周五必须上线。

**🦊 Stark** — 周五？太久了。砍需求，抓核心，周三上。后面再迭代。

**☸️ Buddha** — 截止日期是幻象，但苦是真的。上能带来价值的，放下其余的。

**🧪 Heisenberg** — 72 小时。每小时都有安排。零偏差。纯度 99.96%，否则不上线。

**🔬 Wittgenstein** — 定义"上线"。定义"周五之前"。这些词不精确的话，你不是在计划——你是在慌。

**🙏 Tangseng** — 到周五的路虽远，一步步总能到。先列出最重要的三件事。稳步前行。

## 快速开始

```bash
git clone https://github.com/zhengxiexie/ai-vox.git
cd ai-vox
```

### Claude Code

```bash
make install-claude                          # 全局安装
make install-claude PROJECT=/你的项目路径      # 项目级安装
```

### OpenCode

```bash
make install-opencode
```

### Warp

```bash
make install-warp                          # 全局安装
make install-warp PROJECT=/你的项目路径      # 项目级安装
```

声音定义统一安装到 `~/.ai-vox/tones/`，所有平台共享。

## 使用方法

```
/vox house             # 像 House 医生一样说话
/vox ramsay            # 像 Gordon Ramsay 一样毒舌
/vox stark             # 像钢铁侠一样随性
/vox girl              # 软萌温暖的语气
/vox bro               # 毒舌老哥的风格
/vox auto              # AI 自动感知氛围
```

### Auto 模式

`/vox auto` 使用优先级系统：

1. **手动指定** — 你说用哪个声音，就锁定哪个
2. **紧急信号** — "生产挂了" / "P0" → 🐺 Wolf 立即接管
3. **场景匹配** — AI 检测最合适的声音
4. **默认回退** — 拿不准时 → 🎀 Girl

## 工作原理

```
~/.ai-vox/tones/                    ← 声音定义安装在这里（共享）
~/.claude/commands/vox.md           ← 轻量索引 + 路由（Claude Code，全局）
~/.config/opencode/rules/vox.md     ← 轻量索引 + 路由（OpenCode）
~/.warp/rules/vox.md                ← 轻量索引 + 路由（Warp，全局）
```

集成文件只包含声音索引和自动路由规则。当你执行 `/vox <voice>` 时，AI 会按需从 `~/.ai-vox/tones/<voice>.md` 加载完整人格。随着声音增多，上下文也不会膨胀。

## 项目结构

```
ai-vox/
├── tones/                        # 声音定义（23 个）
│   ├── zen.md                    #   风格声音
│   ├── socratic.md
│   ├── buddy.md
│   ├── sensei.md
│   ├── storyteller.md
│   ├── devil.md
│   ├── cheerful.md
│   ├── girl.md                   #   角色声音
│   ├── bro.md
│   ├── heisenberg.md
│   ├── house.md
│   ├── wolf.md
│   ├── gandalf.md
│   ├── ramsay.md
│   ├── stark.md
│   ├── wittgenstein.md
│   ├── socrates.md
│   ├── tangseng.md
│   ├── jesus.md
│   ├── buddha.md
│   ├── musk.md
│   ├── confucius.md
│   └── hitler.md
├── integrations/                 # 轻量平台配置（仅索引 + 路由）
│   ├── claude/CLAUDE.md
│   ├── opencode/instructions.md
│   └── warp/rules.md
├── Makefile                      # 安装/卸载自动化
└── docs/
    ├── quickstart.md
    └── custom-tones.md
```

## 参与贡献

欢迎所有贡献！

- 🆕 **新声音** — 有适合你工作流的角色？分享出来！
- 🔧 **平台支持** — 帮我们适配更多工具（Cursor、Copilot 等）
- 🌍 **翻译** — 帮我们触达更多开发者
- 📖 **更好的描述** — 让声音定义更生动

详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 许可证

[MIT](LICENSE)

---

**如果 AI Vox 改变了你和 AI 的互动方式，点个 ⭐ 支持一下！**
