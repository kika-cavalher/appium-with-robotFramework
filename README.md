# Appium + Robot Framework — Training Wheels Protocol

![Training Wheels Protocol App](./app/appiumTest.png)

This project has an academic purpose. It was adapted and structured using practical automation knowledge.

![Robot Framework](https://img.shields.io/badge/Robot%20Framework-3CB371?style=for-the-badge&logo=robotframework&logoColor=white)
![Appium](https://img.shields.io/badge/Appium-4B0082?style=for-the-badge&logo=appium&logoColor=white)

# 💡 Overview

This guide explains how to set up your environment to run Robot Framework automated tests using Appium on Android simulators. We’ll go through installing all tools, configuring environment variables, and preparing everything to run tests smoothly.

---
##📖 Table of Contents
🧰 Install
  ✅ Install Node.js
  ✅ Install Python
  ✅ Install Robot Framework on VSCode
  ✅ Install Java JDK
🔁 Clone the Project & Install Dependencies
  ✅ Clone the Automation Repository from GitHub
  ✅ Install Required Python Dependencies
🤖 Set Up Android Studio
🧪 Install Appium & Appium Doctor
🖥️ Install Appium Desktop Tools (GUI)

---

## 🧰 Pre-Requisites: Install Essential Tools

- [X] Install Node.js

Go to: https://nodejs.org/  
Download the LTS version - Last Version
After installation, verify on VSCode (bash):

Verify installation:
```sh
node --version 
```
```sh
npm --version
```

- [X] Install Python

Download from: https://www.python.org/downloads/release/python-3125/
⚠️ It’s critical to configure Python correctly during installation to ensure everything runs smoothly with Robot Framework and Appium.

#### 📌 On the first screen:
Make sure to check these options:
☑️ Install launcher for all users (recommended)
☑️ Add Python to PATH
Then click Customize installation instead of "Install Now".

#### ⚙️ On the Optional Features screen:
Make sure all the following options are selected:
☑️ Documentation
☑️ pip → Installs pip to manage Python packages
☑️ tcl/tk and IDLE → Needed for GUI apps (optional, but recommended)
☑️ Python test suite → Installs the standard test suite
☑️ py launcher
  ☑️ for all users (ensures global access from terminal)

#### 🧠 On the Advanced Options screen:
Ensure the following settings:
☑️ Install for all users
☑️ Associate files with Python (requires the py launcher)
☑️ Create shortcuts for installed applications
☑️ Add Python to environment variables
☑️ (Optional) Precompile standard library for faster execution

📁 Customize install location (optional but recommended):
Change the path to something cleaner like: C:\Python

Verify installation:
```sh
python --version
```
```sh
pip --version
```

- [X] Install Robot Framework on VSCode
Download: https://code.visualstudio.com/

Install the following extensions:
<img src="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-64.png" width="20"> Robot Framework Language Server <br>
**These extensions will help you write, run, and debug Robot Framework test cases easily.**


###Fix: Add Robot to PATH (if robot is not recognized)
####👉 Find the Path Where robot Is Installed

Run in terminal:
```sh
python -m site --user-base 
```

Output will look like this:
```sh
C:\Users\YourName\AppData\Roaming\Python\Python
```

Now go to:
```sh
C:\Users\YourName\AppData\Roaming\Python\Python\Scripts
```
Ensure robot.exe is present there.

####👉 Add It to Your System PATH

Press Win + S → Search for "Environment Variables"
Click “Edit the system environment variables”
In the window that opens, click Environment Variables...
Under System variables, find and select Path → click Edit
Click New → Paste the path you copied, e.x.:

```sh
C:\Users\YourName\AppData\Roaming\Python\Python\Scripts 
```
Click OK

####🔁 Restart Terminal (or VS Code)

Close and reopen any terminals or Visual Studio Code.

- [X]  Install Java JDK (Required for Android)

Download the latest JDK: https://www.oracle.com/java/technologies/downloads/
Install the 64-bit version (latest JDK is recommended).

### Set JAVA_HOME environment variable:
Variable Name: JAVA_HOME
Variable Value: Path to your JDK folder, e.x.
```
C:\Program Files\Java\jdk-21 (replace with your installed JDK version)
```

Add to System PATH:
Add this to your Path variable:
```
C:\Program Files\Java\jdk-21\bin (replace with your JDK version)
```

Test in terminal (bash):
```sh
java -version 
```
```sh
echo $JAVA_HOME 
```

Expected response for each command, for example:
```sh
java version "21.0.7" 2025-04-15 LTS 
```
```sh
Java(TM) SE Runtime Environment (build 21.0.7+8-LTS-245) 
```
```sh
Java HotSpot(TM) 64-Bit Server VM (build 21.0.7+8-LTS-245, mixed mode, sharing)
```

Or your JDK path:
```sh
C:\Program Files\Java\jdk-21 
```

## 🤖 Set Up Android Studio & SDK

Download: https://developer.android.com/studio  
Open **Device Manager** → Create and start a virtual device (emulator)

### Set environment variables:

ANDROID_HOME:
```
C:\Users\<YourUsername>\AppData\Local\Android\Sdk
```

ADB_PATH:
```
C:\Users\<YourUsername>\AppData\Local\Android\Sdk\platform-tools
```

Add to system `PATH`:
```
%ANDROID_HOME%\platform-tools
%ANDROID_HOME%\tools
%ANDROID_HOME%\tools\bin
%ANDROID_HOME%\tools\lib
```

> 📦 NOTE: The tools folder is deprecated in some Android Studio versions. If missing:  
Download from: http://dl-ssl.google.com/android/repository/sdk-tools-windows-4333796.zip  
Extract into the SDK directory.

Verify:
```sh
echo %ANDROID_HOME%
```
```sh
adb devices
```



Go to the official Android Studio download page:
👉 https://developer.android.com/studio 
Click on “Download Android Studio” and agree to the terms and conditions.
Once the installer is downloaded:
Windows: Run the .exe installer.

macOS: Open the .dmg file and drag Android Studio to the Applications folder.
Linux: Extract the .zip file and run studio.sh inside the bin directory.

Follow the setup wizard:
Choose Standard installation.
Make sure Android SDK, Android Virtual Device, and Intel HAXM (or Hypervisor) are selected.
Open Android Studio after installation.
If prompted to import settings, you can choose “Do not import settings” (or import if you're updating).
Wait for all components and updates to finish downloading.
In Android Studio, click on "More Actions" from the welcome screen (or go to Tools > Device Manager from the main interface).
Click “Create Device”.
Choose a hardware profile (e.g., Pixel 5 or Pixel 7) and click Finish.
Select a system image (such as Android 14.0 (API 34)):
If it’s not downloaded yet, click Download next to the desired image.
Wait for the download to complete and click Next.
Set the emulator settings (name, orientation, etc.) or leave default values.
Click Finish to create the virtual device.
Go to Tools > Device Manager if not already open.
Click the play icon (▶️) next to the virtual device you just created.
The emulator will boot up and simulate a real Android phone.
If you see the "Detected ADB" error message like the image below:
Could not automatically detect an ADB binary. Some emulator functionality will not work until a custom path to ADB is added...
You need to:
Click on the three dots (...) menu in the emulator window.
Go to Settings.
Uncheck the checkbox for "Use detected ADB location" if it's checked.

### 🧩 Verify Emulator Connection via ADB

Open a bash terminal and run:
```sh
adb devices 
```

You should see something like:
```sh
List of devices     attached 
```
```sh
emulator-5554       device 
```
The value emulator-5554 is your device UDID (used for automation if you prefer a dynamic setup).

---

## 🔁 Clone the Project & Install Dependencies

- [X] Clone the Repository

If you don’t have Git, install it from: https://git-scm.com/downloads
Can be achieved by using Git or the desktop app from GitHub.

- [X] Install Python Dependencies

> This project already includes a `requirements.txt` file.



## 🧪 Install Appium & Appium Doctor

Install Appium and doctor globally via npm:
```sh
npm install -g appium
```
```sh
npm install -g appium-doctor
```

Verify Appium setup:
```sh
appium-doctor --android
```

---

## 🖥️ 6. Install Appium Desktop Tools

- Appium Server GUI: https://github.com/appium/appium-desktop/releases  
- Appium Inspector: https://github.com/appium/appium-inspector/releases

---

## ⚙️ 7. Start the Environment for Testing

- [X] Start your Android Emulator
Open **Android Studio → Device Manager**  
Click ▶️ to start the virtual device

- [X] Launch Appium Server GUI
Open the app and click “Start Server”

- [X] Open Appium Inspector

- [X] Get Emulator UDID
```sh
adb devices
```

Use the UDID in your test configuration or capability files

---

## ▶️ Running Tests

Make sure you're in the root of the project:
```sh
robot tests/login_test.robot
```

---

## 🎯 Final Tips

For each test run:

- [X] Android Emulator ON  
- [X] Appium GUI Server ON  
- [X] Appium Inspector OPEN (optional)

---

## 📊 Example Test Report Output

![Report Tests](./app/reportNew.png)
