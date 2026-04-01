# Tempus — KDE Plasma 6 Clock Widget

A minimal, fullscreen-ready clock widget for KDE Plasma 6 with dynamic font scaling.
The day name always stretches to fit the full width of the widget — resize it freely.

![Tempus Preview](preview/preview.png)

---

## Features

- Dynamic font scaling — day name fills the widget width automatically
- Wednesday is used as the reference string (longest day)
- Date and time scale proportionally with the widget size
- No background — blends seamlessly with any wallpaper
- Bundled fonts — no manual font installation required

---

## Requirements

- KDE Plasma 6
- Qt 6.x

---

## Installation

### Via KDE Store
1. Right-click on your desktop → **Add or Manage Widgets**
2. Click **Get New Widgets** → **Download New Plasma Widgets**
3. Search for **Tempus** and install

### Manual
```bash
kpackagetool6 --type Plasma/Applet --install com.nyuceer.tempus
```

Or clone and install:
```bash
git clone https://github.com/nadiryuceer/kde6-tempus-widget.git
cd kde6-tempus-widget
kpackagetool6 --type Plasma/Applet --install com.nyuceer.tempus
```

---

## Fonts

Bundled with the widget — no action needed.

| Font | License |
|------|---------|
| Anurati | Free for personal and commercial use |
| Quicksand | SIL Open Font License 1.1 |

---

## License

MIT License — see [LICENSE](LICENSE) for details.

---