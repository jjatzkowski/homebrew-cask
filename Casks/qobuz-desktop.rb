cask 'qobuz-desktop' do
  version :latest
  sha256 :no_check

  url 'http://www.qobuz.com/apps/qobuz-desktop/osx/QobuzDesktopInstaller.pkg'
  name 'Qobuz Desktop'
  homepage 'http://www.qobuz.com/de-de/applications#app-desktop'
  license :unknown

  pkg 'QobuzDesktopInstaller.pkg'

  uninstall pkgutil: 'com.qobuz.QobuzDesktop.*'

  zap       delete: [
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qobuz.qobuzdesktop.sfl',
                      '~/Library/Application Support/QobuzDesktop',
                      '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.qobuz.QobuzDesktop',
                      '~/Library/Caches/com.qobuz.QobuzDesktop',
                      '~/Library/Caches/Homebrew/Casks/qobuz-desktop-latest.pkg',
                      '~/Library/Caches/Homebrew/qobuz-desktop-latest.pkg',
                      '~/Library/Logs/QobuzDesktop',
                      '~/Library/Preferences/com.qobuz.QobuzDesktop.plist',
                    ]
end
