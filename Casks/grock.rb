# typed: strict
# frozen_string_literal: true

cask "grock" do
  version "1.0.1"
  sha256 "86d1721b4c3cc023572a6810c80cd4b413b9025943edf041338391b64349d175"

  url "https://github.com/jaredatch/grock/releases/download/v#{version}/Grock-#{version}-arm64.zip"
  name "Grock"
  desc "Launcher for grok.com with a global hotkey and Quick Chat"
  homepage "https://github.com/jaredatch/grock"

  livecheck do
    url "https://raw.githubusercontent.com/jaredatch/grock/master/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Grock.app"
  binary "#{appdir}/Grock.app/Contents/SharedSupport/grock"

  zap trash: [
    "~/Library/Application Scripts/com.jaredatch.Grock",
    "~/Library/Containers/com.jaredatch.Grock",
  ]
end
