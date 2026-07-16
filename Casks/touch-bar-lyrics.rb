cask "touch-bar-lyrics" do
  version "0.2.2"
  sha256 "ef70ce9e89a337beaa749d026fa4c99fa52049d5e67b78e015ef838427c5e68b"

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
