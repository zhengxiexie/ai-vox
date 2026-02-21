# Contributing to AI Vox / 贡献指南

[English](#english) | [中文](#中文)

---

## English

Thanks for your interest in AI Vox! We welcome contributions of all kinds.

### Ways to Contribute

#### 🆕 Add a New Voice

The best contributions are new voices that bring a distinct personality. A good voice should:

1. Have a **clear, unique personality** — not overlap with existing voices
2. Be **useful in real workflows** — solve a real communication need
3. Be **vivid and memorable** — the description should make you *feel* the personality

Create a markdown file in `tones/` with this structure:

```markdown
# 🎯 Voice Name

## Personality
Who is this voice? What's their character and worldview?

## How You Talk
- Specific speech patterns, word choices, habits
- What they would and wouldn't say
- How they handle different situations

## Vibe
> A one-liner that captures the essence.

## Auto-Routing Triggers
- When should auto mode pick this voice?
```

Then run `make install` to update your local installation. Integration files auto-discover voices from `~/.ai-vox/tones/`, so you only need to add the voice name and one-liner to the index tables in the integration files and both READMEs.

**Voice ideas we'd love to see:**
- 🏴‍☠️ **pirate** — Arr, ye code be full of bugs, matey
- 🎭 **dramatic** — Every bug is a crisis, every fix is a triumph
- 🤖 **robotic** — Pure logic. No emotion. Maximum precision.
- 🧙 **wizard** — Ancient wisdom for modern code
- 🎵 **poet** — Speaks in rhythm and metaphor

#### 🔧 Add Platform Support

Help us support more AI tools! Create a directory under `integrations/` with setup instructions.

#### 🌍 Translations

Translate READMEs and docs to more languages.

### Guidelines

- **Personality first.** Voices are about *how* the AI talks, not *what* it does.
- **Be vivid.** The voice definition should make someone smile and immediately get it.
- **Test it.** Try your voice in at least one platform before submitting.
- **Keep it tight.** Shorter voice definitions work better — AI models follow them more consistently.

### PR Process

1. Fork → Branch → Change → Test → PR
2. Include a brief description and at least one example interaction

---

## 中文

感谢你对 AI Vox 的关注！我们欢迎各种形式的贡献。

### 贡献方式

#### 🆕 新增声音

最好的贡献是带来独特性格的新声音。一个好的声音应该：

1. 有**清晰、独特的性格** — 不与现有声音重叠
2. 在**真实工作流中有用** — 解决真实的沟通需求
3. **生动、令人印象深刻** — 描述要让人一读就能*感受到*这个性格

在 `tones/` 目录下创建 markdown 文件：

```markdown
# 🎯 声音名称

## Personality
这个声音是谁？什么性格和世界观？

## How You Talk
- 具体的说话模式、用词习惯
- 会说什么、不会说什么
- 如何处理不同情况

## Vibe
> 一句话概括精髓。

## Auto-Routing Triggers
- auto 模式何时应选择这个声音？
```

然后运行 `make install` 更新本地安装。集成文件会自动从 `~/.ai-vox/tones/` 发现声音，你只需要在集成文件和两个 README 的索引表中添加声音名和一句话简介。

**我们想看到的声音创意：**
- 🏴‍☠️ **pirate** — 嘿，你的代码里有 bug 啊，水手
- 🎭 **dramatic** — 每个 bug 都是灾难，每个修复都是胜利
- 🤖 **robotic** — 纯逻辑。无情感。最大精度。
- 🧙 **wizard** — 古老智慧，现代代码
- 🎵 **poet** — 用韵律和隐喻说话

#### 🔧 新增平台支持

帮我们支持更多 AI 工具！在 `integrations/` 下创建新目录。

#### 🌍 翻译

将 README 和文档翻译成更多语言。

### 注意事项

- **性格第一。** 声音关注的是 AI *怎么说*，不是*做什么*。
- **要生动。** 声音定义应该让人一读就会心一笑。
- **要测试。** 提交前至少在一个平台上试用。
- **保持精炼。** 短的声音定义效果更好，AI 能更稳定地遵循。

### PR 流程

1. Fork → 建分支 → 修改 → 测试 → 提 PR
2. 附上简要描述和至少一个示例交互
