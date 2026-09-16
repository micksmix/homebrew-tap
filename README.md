# micksmix/homebrew-tap

Homebrew tap for [Everywhere](https://github.com/micksmix/everywhere), a native
macOS file-search app. Users install the app with:

```sh
brew tap micksmix/tap
brew trust micksmix/tap
brew install --cask micksmix/tap/everywhere
```

The cask downloads the zip from the Everywhere repository's GitHub releases
and `livecheck` follows its latest release. A GitHub Actions workflow in the
Everywhere repo builds the universal zip, publishes the release there, and
updates `Casks/everywhere.rb` automatically whenever a `v*` tag is pushed.

Manual fallback, if needed:

1. `make dist` in the Everywhere repo builds `.build/Everywhere-<version>.zip`
   and prints its SHA256.
2. `gh release create v<version> .build/Everywhere-<version>.zip` against the
   Everywhere repo.
3. Update `version` and `sha256` in `Casks/everywhere.rb`, commit, push.
