cask "iki" do
  version "1.5.0"
  sha256 "76013de274c40fed61c70542d0370e160bb9fa1783374a346dee40b3ad02d344"

  url "https://github.com/the-acai/iki/releases/download/v#{version}/Iki-#{version}.dmg"
  name "Iki"
  desc "Voice dictation powered by on-device AI (Parakeet + Gemma)"
  homepage "https://github.com/the-acai/iki"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Iki.app"

  zap trash: [
    "~/Library/Preferences/com.iki.app.plist",
  ]
end
