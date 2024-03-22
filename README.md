# Cristiano

![Lint](https://github.com/ikhurramraza/cristiano/actions/workflows/lint.yml/badge.svg)
![Test](https://github.com/ikhurramraza/cristiano/actions/workflows/test.yml/badge.svg)
![Release](https://github.com/ikhurramraza/cristiano/actions/workflows/release.yml/badge.svg)

Outputs ASCII art to celebrate the G.O.A.T. 🐐

## 💿 Installation

```bash
gem install cristiano
```

## 🚀 Publishing

1. Bump the version in `lib/cristiano/version.rb` file in a PR.

2. Create and push tag to GitHub.

```bash
git tag --sign -a "v[VERSION_TAG]" -m "v[VERSION_TAG]"

git push origin "v[VERSION_TAG]"
```

3. Wait for Release GitHub action to complete.
