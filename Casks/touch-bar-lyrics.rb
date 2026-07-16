cask "touch-bar-lyrics" do
  version "0.2.0"
  sha256 "9d9f8c0a15a8203401ba848a3829a74397e177f9f78ca02447f83c022d1e244d"

  url "https://github.com/iqbalrahman-jpg/mac-touchbar-lyric/releases/download/v#{version}/TouchBarLyrics-v#{version}-arm64.zip"
  name "Touch Bar Lyrics"
  desc "Display synchronized Spotify lyrics on a MacBook Pro Touch Bar"
  homepage "https://github.com/iqbalrahman-jpg/mac-touchbar-lyric"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Touch Bar Lyrics.app"

  uninstall quit: "com.iqbalrahman.TouchBarLyrics"

  zap trash: "~/Library/Preferences/com.iqbalrahman.TouchBarLyrics.plist"

  caveats <<~EOS
    Touch Bar Lyrics is ad-hoc signed and is not notarized by Apple.

    If macOS blocks the first launch, open System Settings > Privacy & Security,
    choose Open Anyway for Touch Bar Lyrics, and confirm Open. Only approve the
    app when it came from the official Touch Bar Lyrics repository.
  EOS
end
