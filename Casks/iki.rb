cask "iki" do
  version "1.4.3"
  sha256 "8ad015350f78c73a415de88ed59dac46f6fb65dba6080aae9859907e791ad339"

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
