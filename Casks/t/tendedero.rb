cask "tendedero" do
  version "1.5.0"
  sha256 "1879b0c638717feebb1c7ef7a534318864d6a69c50915d0c873b8577a713141b"

  url "https://github.com/alejandrobujan/tendedero/releases/download/v#{version}/Tendedero-#{version}.dmg"
  name "Tendedero"
  desc "Screenshot manager for the menu bar"
  homepage "https://tendedero.app/"

  depends_on macos: :sonoma

  app "Tendedero.app"

  uninstall quit: "app.tendedero.Tendedero"

  zap trash: "~/Library/Preferences/app.tendedero.Tendedero.plist",
      rmdir: "~/Library/Application Support/Tendedero"
end
