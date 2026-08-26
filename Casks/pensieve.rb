# typed: strict
# frozen_string_literal: true

cask "pensieve" do
  version "0.13.0"
  sha256 "4d207f97642ebb17212461e49fedcf3fdb7c47e52505fa670aa62006e5799b1d"

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
