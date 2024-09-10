# Appium+robot_framework--Training Wheels Protocol


<h1 align="center">
  <br>
  <img src="./app/appiumTest.png" alt="Training Wheels Protocol App">
  <br><br>
</h1>

<p align="center">This project has an academic purpose. I adapted and structured it using my previous knowledge.</p>

<p align="center"> 
    <img src="https://img.shields.io/badge/Robot%20Framework-3CB371?style=for-the-badge&logo=robotframework&logoColor=white">
    <img src="https://img.shields.io/badge/Appium-4B0082?style=for-the-badge&logo=appium&logoColor=white">
</p align="center">

## 💻 Pre-requisite
Before starting, you need to have on your computer:

### Have you installed the latest version of:
- [X] Node                   (node -v) and (npm -v)
- [X] Python                 (python -V)
- [X] Robot Framework        pip install robotframework  // (robot --version)

### Install Vscode extensions too for better viewing

<img src="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-64.png" srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x" width="20" class=" lazyloaded" data-srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x"> Robocorp <br>
<img src="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-64.png" srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x" width="20" class=" lazyloaded" data-srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x"> Robot Framework Language Server <br>
<img src="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-64.png" srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x" width="20" class=" lazyloaded" data-srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x"> Thunder Client <br>
<img src="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-64.png" srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x" width="20" class=" lazyloaded" data-srcset="https://cdn1.iconfinder.com/data/icons/material-core/23/extension-256.png 1x, https://cdn1.iconfinder.com/data/icons/material-core/23/extension-512.png 2x"> Hyper Term Theme <br>


 ### After adding the python, node, robot and add the libs in VSCode, we can focus on part of the Android simulator. install: 
- [X] Cmeder - FULL (write in the command line: appium)
##Create a folder called Tools into the computer directory and Add it to this folder After extracting the cmder file, the path will look like this: C:\Tools\cmder

 ### Let's focus now on making the ANDROID simulator work. install: 
- [X] JDK8 X64               Test in cmd if it was installed successfully: (java -version)
## Now we need to configure the environment variables:
- [X] In the system environment variables, click on add a new system variable and in the name write: JAVA_HOME and in the value put the jdk file path as an example: C:\Program Files (x86)\Java\jdk1.8.0_202
- [X] Now let's access the variable that already exists called PATh and let's add the jdk path here too to be global. Add the BIN folder: C:\Program Files (x86)\Java\jdk1.8.0_202\bin
- [X] Test in cmd if it was installed successfully: (echo %JAVA_HOME%) and (echo %PATH%)
## Now let's focus on the Android simulator:
- [X] Android Studio
- [X] Inside the computer's directory, enter the username you use and write \AppData in the path to show a hidden folder. As an example: C:\Users\EricaCavalher\AppData
- [X] Go to the Android folder and then SDK. Copy the path and paste it to be our environment variable.
- [X] In the system environment variables, click on add a new system variable and in the name write: ANDROID_HOME and in the value put the SDK (taught above) file path as an example: C:\Users\EricaCavalher(EVIO)\AppData\Local\Android\Sdk
- [X] Add other system variable with the name write: ADB_PATH and in the value put the folder platform-tools: C:\Users\EricaCavalher(EVIO)\AppData\Local\Android\Sdk\platform-tools
- [X] Now let's access the variable that already exists called PATh and let's add some folders:
      - tools: C:\Users\EricaCavalher(EVIO)\AppData\Local\Android\Sdk\tools
      (Copy the *tools folder from this file: http://dl-ssl.google.com/android/repository/sdk-tools-windows-4333796.zip)
      - Inside tools more 2 files: bin and lib. Also paste these paths into PATHS
- [X] Test in cmd if it was installed successfully: (echo %ANDROID_HOME%) and (echo %PATH%)

 ### At this point we will configure the Appium server:
- [X] In cmd install globally
```sh
npm install appium -g
```
```sh
npm install appium-doctor -g
```  
 ## To make sure that Appium is correctly installed in cmder, run the command:
```sh
appium-doctor --android
```

 ### If everything is working correctly, we will install appium for desktop.
- [X] Appium Server GUI (https://github.com/appium/appium-desktop/releases)
- [X] Appium Inspector (https://github.com/appium/appium-inspector/releases)
 
 ### To work the first time you need to fix some settings, like this:
- [X] You will also need to configure the environment variables
      - To find out the udid just type in cmeder: adb devices

### Other important settings to make:
- [X] You will also need to configure the environment variables (To find out the udid just type in cmeder: adb devices)
- [X] Don't forget to configure the mandatory capability information to access the system (basic file)

### 💻 To start 
## install everything necessary for the project to work
```sh
pip install robotframework
```
```sh
pip install robotframework-appiumlibrary
```

## Start the machine for testing (every time):
- [X] Open Android Studio (Open Device Manager and start the virtual machine)
- [X] Appium Server GUI + Appium Inspector (Open both systems and start session)


<p align="center">
  <kbd>
    <img src="./app/reportNew.png" alt="Report Tests">
  </kbd>
</p>
