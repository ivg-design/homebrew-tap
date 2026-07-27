cask "sidebarfavorites" do
  version "1.0.2"
  sha256 "35b0b28503d98cf3a99cd7d9260030ae5f0b42b0c2847dd2b057e21e47ffd33a"

  url "https://github.com/ivg-design/SidebarFavorites/releases/download/v#{version}/SidebarFavorites-#{version}.dmg"
  name "SidebarFavorites Manager"
  desc "Adds custom icons to folders in Finder's sidebar"
  homepage "https://github.com/ivg-design/SidebarFavorites"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SidebarFavorites Manager.app"

  uninstall quit: "com.ivg-design.SidebarFavoritesManager"

  zap trash: [
    "~/Library/Application Support/SidebarFavorites",
    "~/Library/Preferences/com.ivg-design.SidebarFavoritesManager.plist",
    "~/Library/Saved Application State/com.ivg-design.SidebarFavoritesManager.savedState",
  ]
end
