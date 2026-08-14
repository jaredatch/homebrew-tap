# typed: strict
# frozen_string_literal: true

cask "pensieve" do
  version "0.11.0"
  sha256 "713ce1cf3348da3b65aa64144f0d6f46506514644eabc9cce065c4c4baef97b2"

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
