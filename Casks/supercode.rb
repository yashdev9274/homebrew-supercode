cask "supercode" do
  version "0.1.2"
  sha256 "b5e9a1146f3fcf8d050a26c78512907356f768c3b035e2dbd4e44b3f2317280e"

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
