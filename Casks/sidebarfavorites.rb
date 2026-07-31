cask "sidebarfavorites" do
  version "1.1.0"
  sha256 "ef6dcebf51bbb5920b8fab7253ac001a75d6aba4e013294fef2bb16eca0c84cc"

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
