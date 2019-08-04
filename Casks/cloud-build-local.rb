cask 'cloud-build-local' do
  module Utils
    def self.darwin_amd64_path(staged_path)
      Dir.glob("#{staged_path}/cloud-build-local_darwin_amd64-v*").first
    end

    def self.remove_paths(staged_path)
      Dir.glob("#{staged_path}/cloud-build-local_*")
    end
  end

  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/local-builder/cloud-build-local_latest.tar.gz'
  name 'Local Builder'
  homepage 'https://github.com/GoogleCloudPlatform/cloud-build-local'

  preflight do
    system_command '/bin/mv', args: [Utils.darwin_amd64_path(staged_path), "#{staged_path}/cloud-build-local"]
    system_command '/bin/rm', args: ['-f'] + Utils.remove_paths(staged_path)
  end

  binary 'cloud-build-local'
end
