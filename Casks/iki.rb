cask "iki" do
  version "1.6.1"
  sha256 "cff859cc3bbad37c340f9de30e5fc2dfec0026b8c383e396c0cbbeec8f249ce0"

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
