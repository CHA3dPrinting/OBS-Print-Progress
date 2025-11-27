# OBS Print Progress Overlays

One browser-source scene per printer: drop the HTML file into OBS, edit the `PRINTER_CONFIG` block at the top, and you’re done.

## Files
- `print-progress.css` — shared styling
- `print-progress.js` — shared logic (polls printer + updates overlays)
- `hoss.html`, `sam.html` — per-printer scenes (copy/rename for more printers)

Keep all three files in the same folder.

## Configure a printer (in each HTML)
Edit the `PRINTER_CONFIG` block near the top:
- `name`: Friendly printer name (shows on overlay)
- `ip`: Hostname/IP of the printer API (e.g., `hoss.dracarsfamily` or `192.168.x.x`)
- `camera`: Camera stream URL (e.g., `http://host/webcam/?action=stream`)
- `updateInterval`: Poll rate in ms (default 2000)
- `debug`: `true` to show debug info, `false` to hide

No other edits needed.

## Add another printer
1) Copy an existing HTML (e.g., `hoss.html` → `newprinter.html`).
2) Update the `PRINTER_CONFIG` values in that new file.

## Use in OBS
1) Add a **Browser** source in OBS and point it to the HTML file on disk.
2) Set the source width/height you want; the overlay will scale to fit.
3) If the camera doesn’t load, confirm the `camera` URL is reachable and supports browser playback (MJPEG/stream URL).

## Notes
- Debug info renders in a small block at the bottom—leave `debug: false` for clean use.
- If you move the folder, just repoint the Browser source(s) to the new path.***
