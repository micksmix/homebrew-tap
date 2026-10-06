cask "everywhere" do
  version "1.8.0"
  sha256 "8d057c73c7dc0a3ec9a5e139d552fe3d41a913993f4d3d25d6f18f6cf20ea153"

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
