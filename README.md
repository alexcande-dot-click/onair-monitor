# ✈️ OnAir Monitor for Android

**A read-only companion app for the flight-sim airline manager [OnAir.Company](https://onair.company), by Alexcande.**

Monitor your whole operation from your phone — fleet, crew, economy, FBOs and more — wherever you are. 📲

> ⚠️ Not affiliated with OnAir.Company. This is an independent, open-source fan project that talks only to the official public OnAir API.

---

## ✨ Features

- 📊 **Dashboard** — cash, company value, assets, fleet size, flying aircraft, employees, FBOs, level/XP and weekly income at a glance. Tiles are tappable shortcuts into each module.
- 🗺️ **Live Map** — a Flightradar-style dark map of your fleet. Flying aircraft are amber and rotated to heading; grounded aircraft are grey (toggleable). Tap one for a boarding-pass-style card with its route and live data. Auto-refreshes every 15 s.
- 👥 **Crew** — every employee with filters (Pilots / Cabin Crew / Mechanics) and search. See fatigue, punctuality, comfort, happiness, certifications, wages and flight hours. **Locally** assign crew to aircraft to track who's unassigned (device-only, never pushed to the game).
- 🛩️ **Aircraft** — your fleet with status filter + tail search. State-colored icon (🔵 flying / 🟢 grounded / 🔴 maintenance due), local crew counts, and a free-text **route note** per aircraft. Detail shows condition, fuel, live position/route, and assigned crew.
- 💰 **Economics** — Overview KPIs, a date-ranged **Income Statement** (revenue & expense breakdown with charts), a **Balance Sheet** (assets vs. liabilities + equity), and **Aircraft Profitability** ranked by hourly profit.
- 🏢 **FBO** — your fixed-base operations with fuel stock/price, parking, capacity and workshops.
- 📍 **Airports** — a derived list of airports relevant to you (your FBOs, grounded aircraft, flight destinations) plus an ICAO search and full airport detail with runways. ICAO codes throughout the app are tappable.
- 🔔 **Notifications** — an in-app feed plus background push notifications for new in-game events, across all the companies you monitor. "Read all" with one tap.
- 🏢➕ **Multi-company** — monitor as many companies (or virtual airlines, or worlds) as you like; switch from the sidebar.
- 🔒 **Private by design** — everything lives on your device. See the privacy note at the bottom.

---

## 📥 Installation & Setup

1. **Get the app:** either download the latest `.apk` from the **[Releases page](https://github.com/alexcande-dot-click/onair-monitor/releases/latest)**, or compile it yourself from the source.
2. **Install it:** open the `.apk` on your Android device and install. Because it doesn't come from the Play Store, your device may ask you to allow **"install from unknown sources."**
3. **Get your keys:** open the official OnAir client on your computer → **Settings → Developer options** → copy your **Company ID** and **API key**.
4. **Connect:** paste both into the setup screen and hit **Connect**. 🎉
5. **Add more:** to monitor another company, virtual airline, or a company on another world, open the left sidebar and tap **Add company**.

---

## 🛠️ Support & Suggestions

Found a bug or have a feature request? Please **[open an issue](https://github.com/alexcande-dot-click/onair-monitor/issues)** — I'll do my best to look into it promptly.

Prefer to reach me directly? ✉️ **hello@alexcande.click**

---

## ❓ FAQ

**Q: Will you make an iPhone version?**
A: It's not on the roadmap right now, but if I get enough requests I'll do it.

**Q: Can I manage my company from the app?**
A: Not at the moment — the OnAir API is read-only. A new API is expected soon; if the OnAir developers give us POST endpoints, I'll do my best to turn this into a true mobile client for the game.

**Q: Will you add other languages?**
A: Not on the roadmap for now since English is fairly universal, but if I get enough requests I'll do it.

---

## 🔐 Privacy

This app does not send any of your personal data to third parties. All data and app settings are stored locally, and this app retrieves all its data from the official OnAir public API using the keys you provided during setup.

The only permissions this app requires are internet access and notifications (optional). It uses only **GET** requests, never POST.

Your API keys are stored **encrypted**, and all communications with OnAir's API are done through **HTTPS**. Requests to the API are made directly from your device to OnAir's servers without any intermediary. There are no cookies, no trackers, and no third parties — except OnAir.Company, which may or may not log the IPs of API callers.

This app is not affiliated with OnAir.Company. It is an open-source project built by someone who loves to play this game. Feel free to participate in the development or post any issues you encounter so I can fix them. 🙌
