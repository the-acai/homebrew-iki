cask "iki" do
  version "1.1.0"
  sha256 "ab1cc05ad34978573aa08e97329892287ceb07f774f2a66fdf4ec107bca7d4b5"

  url "https://github.com/the-acai/iki/releases/download/v#{version}/Iki-#{version}.dmg"
  name "Iki"
  desc "Voice dictation powered by on-device AI (Whisper + MLX)"
  homepage "https://github.com/the-acai/iki"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Iki.app"

  zap trash: [
    "~/Library/Preferences/com.iki.app.plist",
  ]
end
