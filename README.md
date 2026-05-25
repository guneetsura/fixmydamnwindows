# 🛠️ Fix My Damn Windows

**A toolkit of batch scripts to repair common Windows issues with a single click.**

This repo includes:

- [`fixmydamnwindows.bat`](./fixmydamnwindows.bat) — for general system repair  
- [`WindowsNetworkRepair.bat`](./WindowsNetworkRepair.bat) — for network-related troubleshooting

If you’re tired of manually typing commands into the terminal every time Windows starts misbehaving, these scripts are for you.

---

## 📂 Scripts Overview

### 🔧 `fixmydamnwindows.bat`

Automates essential system repair tools to fix common Windows issues.

#### 🧰 What It Does

- ✅ Schedules a `CHKDSK` on the `C:` drive for the next reboot  
- 🛠️ Runs **System File Checker (SFC)** to scan and repair system files  
- 🔍 Executes multiple **DISM** commands to check and restore Windows health  
- 🧹 Cleans up Windows components to improve performance and reduce issues

#### 🛡️ VirusTotal Scan

[View VirusTotal Report](https://www.virustotal.com/gui/file/9d17a356a530b8d486b4f653aed863c5301662d428fc2a49b3ca13d4105d380e/detection)

---

### 🌐 `WindowsNetworkRepair.bat`

Fixes common internet and network problems with one command.

#### 🧰 What It Does

- 🔁 Resets **Winsock** (for socket/connection issues)  
- 📡 Resets **TCP/IP stack** to default settings  
- 📴 Releases and 🔄 renews your IP address  
- 🧠 Flushes **DNS cache** to resolve name resolution problems

#### 🛡️ VirusTotal Scan

[View VirusTotal Report](https://www.virustotal.com/gui/file/fd04988e206c5163bfbfa3d44dfb8b70b446c2d84b802966509bc55bfb0e411e?nocache=1)

---

## ⚠️ Requirements

- 🛑 Must be **run as Administrator**
- 🖥️ Designed for **Windows 10/11**
- 🧩 For `CHKDSK`: assumes your system drive is `C:` (you can change it)

---

## 🚀 How to Use

1. Download the `.bat` file(s) you need
2. **Right-click** the file and choose **Run as Administrator**
3. Follow the on-screen instructions
4. Restart your system if asked (especially for `fixmydamnwindows.bat`)

---

## 📝 Notes

### Changing the Drive for CHKDSK

If your system drive is not `C:`, open the `fixmydamnwindows.bat` file in Notepad and modify this line:

```bat
echo y | chkdsk C: /f
  ```

  to

  ```bat
  echo y | chkdsk D: /f
  ```

**Do not interrupt** your system during the reboot and disk scan. It may take some time — patience is key!

## ❗ Disclaimer

These scripts make changes to your system configuration and files.
Use at your own risk. Always **back up important data** before proceeding.
