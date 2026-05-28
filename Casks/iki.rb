cask "iki" do
  version "1.4.6"
  sha256 "79c854b2aaa4dd4466665eab56c04940f1aa4ec889fcf379e4ac8f355f0894e3"

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
