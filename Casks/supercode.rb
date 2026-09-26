cask "supercode" do
  version "0.1.3"
  sha256 "cbf85946bd112d19d45de9a4d7c50eea663d3e948f09a6322d30a2c0d249b7c5"

  url "https://github.com/yashdev9274/supercli/releases/download/desktop-v#{version}/Supercode-#{version}-universal-development.dmg"
  name "Supercode"
  desc "Native coding agent"
  homepage "https://supercode-terminal.vercel.app/"

  depends_on macos: :sonoma

  app "Supercode.app"

  caveats <<~EOS
    This beta is ad-hoc signed and is not Apple-notarized.
    On first launch, Control-click Supercode in Applications, choose Open,
    then confirm Open in the macOS security dialog.
  EOS
end
