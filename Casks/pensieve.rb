# typed: strict
# frozen_string_literal: true

cask "pensieve" do
  version "0.14.0"
  sha256 "c5366155057e8965e6983e721ea5ffc3da45172c9ecd77a0a17545d71a91688b"

  url "https://github.com/jaredatch/pensieve/releases/download/v#{version}/Pensieve-#{version}.dmg"
  name "Pensieve"
  desc "Manage and sync AI skills across agents and machines"
  homepage "https://github.com/jaredatch/pensieve"

  livecheck do
    url "https://raw.githubusercontent.com/jaredatch/pensieve/main/appcast.xml"
    strategy :sparkle
  end

  app "Pensieve.app"

  zap trash: [
    "~/Library/Caches/com.jaredatch.Pensieve",
    "~/Library/Preferences/com.jaredatch.Pensieve.plist",
  ]
end
