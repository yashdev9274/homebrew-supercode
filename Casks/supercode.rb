cask "supercode" do
  version "0.1.1"
  sha256 "e7d29ce482988556765e4220935e925bff7365be6bfece8ead99869459f734ea"

  url "https://github.com/yashdev9274/supercli/releases/download/desktop-v#{version}/Supercode-#{version}-universal-development.dmg"
  name "Supercode"
  desc "Native macOS coding agent"
  homepage "https://supercode-terminal.vercel.app"

  depends_on macos: :sonoma

  app "Supercode.app"

  caveats <<~EOS
    This beta is ad-hoc signed and is not Apple-notarized.
    On first launch, Control-click Supercode in Applications, choose Open,
    then confirm Open in the macOS security dialog.
  EOS
end
