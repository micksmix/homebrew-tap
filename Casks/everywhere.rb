cask "everywhere" do
  version "1.2.0"
  sha256 "b11d44aa9b443be32f40c3df642c7078ba3c57a64e017f3e171a5f5830ec1da3"

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
