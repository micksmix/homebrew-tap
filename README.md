# micksmix/homebrew-tap

Homebrew tap for [Everywhere](https://github.com/micksmix/everywhere), a native
macOS file-search app. Users install the app with:

```sh
brew install --cask micksmix/tap/everywhere
```

## Releasing a new version

From the Everywhere repo, one command handles everything:

```sh
make release VERSION=x.y.z
```

It runs the tests, bumps the version, builds the universal binary and zip,
commits and tags the Everywhere repo, publishes the GitHub release with the
zip attached, then updates `Casks/everywhere.rb` here with the matching
version and SHA256 and pushes this repo. Push the Everywhere branch
afterwards with `git push`.

Manual steps, if ever needed:

1. Set `VERSION` in the Everywhere Makefile (`make bump VERSION=x.y.z`).
2. `make dist`, then `git tag v1.0.0 && git push origin v1.0.0` and
   `gh release create v1.0.0 .build/Everywhere-1.0.0.zip`.
3. Update `version` and `sha256` in `Casks/everywhere.rb`, commit, push.

`livecheck` uses the GitHub releases feed, so `brew livecheck everywhere`
follows the latest release automatically.
