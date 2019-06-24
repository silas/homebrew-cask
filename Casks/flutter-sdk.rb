cask 'flutter-sdk' do
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.5.4-hotfix.2-stable.zip'
  name 'Flutter SDK'
  homepage 'https://flutter.io/'

  binary 'flutter/bin/flutter'
end
