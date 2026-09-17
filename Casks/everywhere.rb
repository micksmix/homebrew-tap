cask "everywhere" do
  version "1.1.0"
  sha256 "f0224fbb5071b55e74808ba6cd59b7f6e6224cddc7b2e3561a63c60699120038"

  url "https://github.com/micksmix/everywhere/releases/download/v#{version}/Everywhere-#{version}.zip"
  name "Everywhere"
  desc "Instant file-search app"
  homepage "https://github.com/micksmix/everywhere"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Everywhere.app"

  zap trash: [
    "~/Library/Application Support/Everywhere",
    "~/Library/Preferences/app.everywhere.macos.plist",
  ]
end
