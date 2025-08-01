cask "ibackup-viewer" do
  version "4.3201"
  sha256 :no_check

  url "https://www.imactools.com/download/iBackupViewer.dmg"
  name "iBackup Viewer"
  desc "Extract Data from iPhone Backups"
  homepage "https://www.imactools.com/iphonebackupviewer/"

  livecheck do
    url "https://www.imactools.com/update/ibackupviewer.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "iBackup Viewer.app"

  zap trash: [
    "~/Library/Application Support/iBackup Viewer",
    "~/Library/Caches/com.imactools.iBackup-Viewer",
    "~/Library/HTTPStorages/com.imactools.iBackup-Viewer",
    "~/Library/Logs/iBackup Viewer",
    "~/Library/Preferences/com.imactools.iBackup-Viewer.plist",
    "~/Library/Saved Application State/com.imactools.iBackup-Viewer.savedState",
    "~/Library/WebKit/com.imactools.iBackup-Viewer",
  ]
end
