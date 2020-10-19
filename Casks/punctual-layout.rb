cask "punctual-layout" do
  version "1.0"
  sha256 "7aa98adcd59b5e2a5402262900514c67afc4d65938ab9bc1e04e587773662b3b"

  url "https://github.com/mikekurkin/Punctual-Layout/releases/download/v#{version}/Punctual_v#{version}.zip"
  name "Punctual Layout"
  homepage "https://github.com/mikekurkin/Punctual-Layout"

  artifact \
    "Punctual.bundle",
    target: Pathname.new(File.expand_path("~")).join("Library/Keyboard Layouts/Punctual.bundle")

  caveats <<~EOS
    To enable new keyboard layouts, you must add them manually in System Preferences. More info on #{homepage}.
  EOS
end
