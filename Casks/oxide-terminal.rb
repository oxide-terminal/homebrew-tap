cask "oxide-terminal" do
  version "0.7.0"
  sha256 "5236402d2d53b21f381f23427f79390312456cad03a88290b780ecb84378b516"

  url "https://downloads.oxideterminal.com/oxide/#{version}/Oxide-#{version}.dmg"
  name "Oxide"
  desc "GPU-rendered terminal emulator written in Rust"
  homepage "https://oxideterminal.com/"

  auto_updates true
  depends_on macos: :monterey

  app "Oxide.app"

  zap trash: [
    "~/.config/oxide",
    "~/Library/Application Support/dev.bobbycoleman.oxide",
    "~/Library/Caches/dev.bobbycoleman.oxide",
    "~/Library/Preferences/dev.bobbycoleman.oxide.plist",
    "~/Library/Saved Application State/dev.bobbycoleman.oxide.savedState",
  ]
end
