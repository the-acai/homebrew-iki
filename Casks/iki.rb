cask "iki" do
  version "1.6.2"
  sha256 "b66b635c1df4d52319070101cb4a2cf9a5c0c40bf55d78e63018c2234d9533f8"

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
