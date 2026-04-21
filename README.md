# 🐶 DogTI — Find Your Dog Personality

A fun MBTI-style personality quiz that matches you with one of 16 dog breeds. Built as a single HTML file — no build step, no dependencies, works anywhere.

**Live:** [https://dogti.pages.dev](https://dogti.pages.dev)

---

## Features

- **16 personality types** mapped to real dog breeds
- **12 questions** with Chinese and English support (toggle in top-right corner)
- **Shareable results** — copy text or download a result card image
- **Pixel art aesthetic** — hand-crafted pixel dogs scroll across the home screen
- **Single file** — one `index.html`, deploys anywhere (Cloudflare Pages, Vercel, GitHub Pages, any static host)

---

## Quick Start

```bash
# Clone and open in browser
git clone https://github.com/MattSureham/dog-ti.git
cd dog-ti
# Just open index.html in any browser
```

## Deploy to Cloudflare Pages

1. Fork this repo
2. Get your Cloudflare API token ([create one here](https://dash.cloudflare.com/profile/api-tokens))
3. Add `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID` as repo Secrets
4. Push — GitHub Actions deploys automatically

Or drag-and-drop the folder at [cloudflare.com/pages](https://cloudflare.com/pages).

---

## The 16 Types

| Type | Dog | Chinese Name |
|------|-----|-------------|
| ENTJ | Doberman | 气气场先到三步的杜宾 |
| ENTP | Border Collie | 把所有人都绕晕了的边牧 |
| ENFJ | Golden Retriever | 比你更担心你的金毛 |
| ENFP | Beagle | 什么都想闻一口的比格 |
| ESTJ | German Shepherd | 把所有人都管住了的德牧 |
| ESTP | Husky | 说好散步结果跑丢的哈士奇 |
| ESFJ | Labrador | 拒绝不了任何人的拉布拉多 |
| ESFP | Poodle | 出门必须好看的泰迪 |
| INTJ | Shiba | 假装冷静的柴犬 |
| INTP | Alaskan Malamute | 想到一半就忘了的阿拉斯加 |
| INFJ | Samoyed | 永远在笑但只有自己知道为什么的萨摩耶 |
| INFP | Maltese | 你不懂的马尔济斯 |
| ISTJ | Corgi | 没做完不能睡觉的柯基 |
| ISTP | Chow Chow | 不需要你担心的松狮 |
| ISFJ | Bichon | 记住你不喜欢香菜的比熊 |
| ISFP | Dachshund | 急不起来的腊肠 |

---

## Project Structure

```
dog-ti/
├── index.html          # Complete app (HTML + CSS + JS)
├── assets/             # Pixel art dog images (PNG)
│   ├── DOGTI标题.png
│   ├── 杜宾.png
│   ├── 边牧.png
│   └── ...
├── .github/
│   └── workflows/
│       └── deploy.yml  # Auto-deploy to Cloudflare Pages
└── README.md
```

---

## Tech

- Pure HTML/CSS/JS — zero dependencies
- Pixel art assets embedded as PNG
- Canvas API for generating share card images
- CSS animations for the scrolling dog parade
- Responsive mobile-first design (max-width: 390px centered)
- Supports Chinese (`zh`) and English (`en`) with runtime language switching

---

## Credits

Original concept and design by [@乔纳森李](https://xhslink.com/m/7UBo6YIeyPn) (follow on Xiaohongshu!)

Rebuilt and open-sourced by [@MattSureham](https://github.com/MattSureham)
