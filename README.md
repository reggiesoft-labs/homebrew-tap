# ReggieSoft Homebrew Tap

Official Homebrew tap for [ReggieSoft](https://github.com/reggiesoft-labs) software.

## Installation

ZeroG is distributed as a cask. Recent Homebrew versions no longer tap repositories implicitly, so add the tap first:

```bash
brew tap reggiesoft-labs/tap
```

Then install using the fully qualified cask name, which trusts only that cask:

```bash
brew install --cask reggiesoft-labs/tap/zerog
```

Alternatively, trust the cask and use its short name:

```bash
brew trust --cask reggiesoft-labs/tap/zerog
brew install --cask zerog
```

## Updating

```bash
brew upgrade --cask zerog
```

## Uninstalling

```bash
brew uninstall --zap --cask zerog
```
