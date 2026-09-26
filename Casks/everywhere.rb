cask "everywhere" do
  version "1.5.0"
  sha256 "429b345407e66b7e24bbb490370e9ba32ba424000bf4b05dde68519a7039ffab"

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
