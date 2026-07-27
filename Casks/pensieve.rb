# typed: strict
# frozen_string_literal: true

cask "pensieve" do
  version "0.9.1"
  sha256 "2071217664b0318f04076f1031bf645f993f93258b5c73bcddb461f0d1dff6db"

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
