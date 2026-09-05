cask "iki" do
  version "1.6.0"
  sha256 "cb9ab2ec8434315d863e7538ecbaeda16eeffc7b5c403ffd42844b1087ec3724"

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
