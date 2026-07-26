cask "sidebarfavorites" do
  version "1.0.1"
  sha256 "b3674bc1b3d116ca316c8d4de3118e9177d167bb64673ddec19a2163b9ac0b23"

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
