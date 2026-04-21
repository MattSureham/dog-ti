# Contributing to DogTI

🎉 Thanks for your interest! All contributions are welcome.

## Ways to Contribute

- **Report bugs** — Open an issue with the quiz question/result that seems off
- **Suggest features** — New questions, new languages, new dog breeds?
- **Improve translations** — English translations exist but may need refinement
- **Fix typos** — This repo is bilingual (zh/en)
- **Share it** — Post it, send it to friends, make memes

## Development Setup

```bash
git clone https://github.com/MattSureham/dog-ti.git
cd dog-ti
open index.html          # just open in browser, no build needed
make test               # run quiz logic tests
```

## Project Structure

```
index.html     — Complete app (HTML + CSS + JS). Edit here.
assets/        — Pixel art PNGs (don't edit these directly)
test_quiz.py  — Quiz logic unit tests
Makefile       — Common tasks
```

## Adding a New Language

1. Add translation data to the `T` object (bottom of `index.html`)
2. Add `enQuestions` / `XXQuestions` translations
3. Add result descriptions for all 16 MBTI types
4. Update `setLang()` to handle the new language toggle

## Adding New Questions

Questions are defined in the `questions` array. Each question maps to one MBTI dimension:

```js
{
  text: "question text",
  hint: "hint shown below question",
  options: [
    { key: "A", text: "option text", dim: "E" }, // E/I/S/N/T/F/J/P
    { key: "B", text: "...", dim: "I" },
    { key: "C", text: "...", dim: "S" }
  ]
}
```

The quiz uses **plurality voting** — the most-selected letter in each dimension wins. Ties go to the letter listed first in the MBTI pair (E over I, S over N, T over F, J over P).

## Running Tests

```bash
python3 test_quiz.py
```

## Submitting Changes

1. Fork the repo
2. Create a feature branch (`git checkout -b my-feature`)
3. Make your changes
4. Run `make test` to verify nothing broke
5. Push and open a PR

## Code Style

- Single HTML file — no external JS dependencies
- Vanilla JS, no frameworks
- CSS custom properties for theming
- Mobile-first, 390px max-width centered layout
