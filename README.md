# Lethal Company Radar Script

A simple PowerShell radar script for **Lethal Company**.

It reads the game log file in real time and uses text-to-speech to announce enemy spawns and useful information while you play.

---

## Pro / Supporter Version

A Pro supporter version with a cleaner UI and extra features is available here:

**LethalRadar Pro:**  
https://ategoss.gumroad.com/l/LethalRadar

The free script version will remain available on GitHub.

---

## Author

**Author:** ASTEGOSS  
**GitHub:** https://github.com/ASTEGOSS

---

## Features

- Reads Lethal Company log files in real time
- Announces enemies using Windows text-to-speech
- Works with vanilla Lethal Company
- Works with modded profiles using BepInEx / Thunderstore logs
- Lightweight PowerShell script
- Free and simple to use

---

## How to Run

Right-click or left-click the script and choose:

Run with PowerShell

The script will ask you for the log file path.

Drag the correct log file into the PowerShell window, press Enter, and let the script run while you play.

Make sure your system volume is turned up, because the script uses text-to-speech.

Setup Instructions
For Modded Lethal Company

Use this if you play through Thunderstore / BepInEx.

1. Install BepInEx

You need a modded profile with BepInEx installed.

Thunderstore is recommended.

2. Find the BepInEx Log File

Open Thunderstore and follow this path:

Thunderstore > Select Profile > Settings > Browse Profile Folder

Then go to:

BepInEx\LogOutput.log
3. Run the Script

Run the PowerShell script.

When it asks for the log path, drag this file into the PowerShell window:

LogOutput.log

Press Enter.

For Vanilla Lethal Company

Use this if you play without mods.

1. Find Player.log

The vanilla log file is usually located here:

%AppData%\..\LocalLow\ZeekerssRBLX\Lethal Company\Player.log

You can also find it manually:

C:\Users\YOUR_USERNAME\AppData\LocalLow\ZeekerssRBLX\Lethal Company\Player.log

If you cannot see the AppData folder, enable hidden folders in Windows Explorer.

2. Run the Script

Run the PowerShell script.

When it asks for the log path, drag this file into the PowerShell window:

Player.log

Press Enter.

Windows PowerShell Warning

Windows may ask for permission to run the script.

If PowerShell blocks the script because of execution policy, you may need to allow it.

You can run this in PowerShell:

Set-ExecutionPolicy -Scope CurrentUser RemoteSigned

Then try running the script again.

Only run scripts you trust.

Notes
This is an unofficial tool for Lethal Company.
It does not modify the game.
It only reads the log file.
The script uses text-to-speech, so make sure your audio is enabled.
Official updates will come from this repository.
Disclaimer

This project is not affiliated with, endorsed by, or connected to Zeekerss or the official Lethal Company game.

Lethal Company belongs to its respective owner.

License

This project is licensed under the MIT License.

See the LICENSE
 file for details.

You may view, fork, modify, and share this project under the terms of the MIT License.

Please credit ASTEGOSS and do not claim the original work as your own.
