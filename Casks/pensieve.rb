# typed: strict
# frozen_string_literal: true

cask "pensieve" do
  version "0.10.0"
  sha256 "90aec71f57a5596a78284a7853dda72ce8b239d673b4d70058675e95ddebf9f2"

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
