# 🛠️ Fix My Damn Windows

**`fixmydamnwindows.bat`** is a simple but effective batch script that automates several essential repair tools in Windows to help you resolve common system issues. If you often find yourself manually running SFC, DISM, and CHKDSK commands every time your Windows PC acts up, this script is for you.

## 🧰 What It Does

This script will:

1. **Schedule a CHKDSK** on the C: drive for the next reboot.
2. **Run System File Checker (SFC)** to scan and repair corrupted system files.
3. **Run multiple DISM commands** to assess and repair the Windows image.
4. **Clean up system components** to improve stability and performance.

All in one go — just sit back and let the script do the work.

## ⚠️ Requirements

* Must be **run as Administrator**.
* Designed for Windows 10/11 systems.
* Script targets the **C: drive by default** for CHKDSK.

## 🚀 How to Use

1. **Right-click** on `fixmydamnwindows.bat` and choose **Run as Administrator**.
2. Follow the prompts in the terminal.
3. **Restart your computer** when prompted to allow CHKDSK to run.

That's it!

## 📝 Notes

* **CHKDSK** is set to run on `C:` by default.
  If your Windows installation is on a different drive (e.g., `D:`), open the `.bat` file in Notepad and change this line:

  ```bat
  echo y | chkdsk C: /f
  ```

  to

  ```bat
  echo y | chkdsk D: /f
  ```

* **Do not interrupt** your system during the reboot and disk scan. It may take some time — patience is key!

## ❗ Disclaimer

This script performs operations that modify system files and configurations. Use at your own risk. Make sure to **back up important data** before running.
