cask "doctolib" do
  arch arm: "-arm64", intel: ""

  version "2.107.0"
  sha256 arm:   "f2e7b4ba6345a90492bc56274ee414fbe5d44ef0c1f98f6fa4e504df5882769b",
         intel: "599a26648cb32f3d297eaae6874868afe5d93990dc80de9f74493956968bcc61"

  url "https://ddv-install.doctolib.fr/DoctolibProDesktop-latest#{arch}.dmg",
      verified: "ddv-install.doctolib.fr/"
  name "Doctolib"
  desc "Desktop app for Doctolib Pro"
  homepage "https://info.doctolib.fr/bureau/"

  livecheck do
    skip "The vendor's update feed is stale and does not reflect current releases."
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Doctolib.app"

  zap trash: [
    "~/Library/Application Support/Doctolib",
    "~/Library/Caches/com.doctolib.pro.desktop",
    "~/Library/HTTPStorages/com.doctolib.pro.desktop",
    "~/Library/Preferences/com.doctolib.pro.desktop.plist",
  ]
end
