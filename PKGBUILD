pkgname=i3-picture-of-the-day
pkgver=1.0
pkgrel=1
pkgdesc="i3 picture of the daily is a wallpaper fetcher"
arch=('any')
url="https://github.com/piotrjasiu95/i3-picture-of-the-day"
license=('MIT')
depends=('feh' 'curl' 'systemd')
install=i3-picture-of-the-day.install
source=("i3-picture-of-the-day.sh"
        "i3-picture-of-the-day.service"
        "i3-picture-of-the-day.timer")
sha256sums=('e0dd27fdba477757de6716ba84c0e4855db7474a7d54f3d9a0d13e5193f5dfa6'
            'e533ae6f771e8bfc47c5fdfbf772ac1a04b8eb020559f69ba3e9a82457f28f1a'
            '8fdd9bf706c9a9d19e572b7d3c8cf26d5c38e1f80ad9fd631a8daaa3797ae068')

package() {
    install -Dm755 "${srcdir}/i3-picture-of-the-day.sh" "${pkgdir}/usr/bin/i3-picture-of-the-day.sh"
    install -Dm644 "${srcdir}/i3-picture-of-the-day.service" "${pkgdir}/usr/lib/systemd/user/i3-picture-of-the-day.service"
    install -Dm644 "${srcdir}/i3-picture-of-the-day.timer" "${pkgdir}/usr/lib/systemd/user/i3-picture-of-the-day.timer"
}
