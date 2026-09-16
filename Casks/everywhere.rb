cask "everywhere" do
  version "1.0.0"
  sha256 :no_check

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
