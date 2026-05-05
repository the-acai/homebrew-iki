cask "iki" do
  version "1.4.4"
  sha256 "e987e111e05c3f7113257642a5027426b0e1f0a6117e9c4135512843145267da"

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
