cask "touch-bar-lyrics" do
  version "0.2.1"
  sha256 "ecabee990b6e189ea2dd96bf2012f66043c5f9556b779a9f631f81be2ae66434"

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
