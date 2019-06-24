cask 'defold' do
  version :latest
  sha256 :no_check

  url 'https://www.defold.com/download/editor2/Defold-x86_64-darwin.dmg'
  name 'Defold'
  homepage 'https://www.defold.com/'

  app 'Defold.app'

  zap trash: [
               '~/Library/Application Support/Defold',
               '~/Library/Saved Application State/com.defold.editor.savedState',
             ]
end
