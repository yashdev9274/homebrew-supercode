cask "supercode" do
  version "0.1.0"
  sha256 "d4a3ade34a30dccb7df3bd9093ef74f7af0bebab9a61aa00d621d17030cb6d58"

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
