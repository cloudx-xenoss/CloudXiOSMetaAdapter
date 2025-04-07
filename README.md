# ☁️ CloudXiOSMetaAdapter  
Mintegral adapter for CloudX Core iOS SDK

# 📦 Installation

### 🍫 Cocoapods  
`pod CloudXMetaAdapter`
- Installing via Cocoapods should handle the porject configuration, but if you run into any issues building, running, or seeing ads, check the Project Configuration / Troubleshooting steps below

### 📦 Swift Package Manager  
`https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter`
⚠️ *Note: Meta does NOT offer FBAudienceNetwork as a Swift package, so the FBAudienceNetwork dynamic framework (NOT static and NOT via Cocoapods) must be manually installed in addition to the CloudXiOSMetaAdapter Swift Package*
- FBAudienceNetwork manual installation instructions are found here [FBAudienceNetwork Installation Instructions](https://developers.facebook.com/docs/audience-network/setting-up/platform-setup/ios/add-sdk) 
- NOTE: Follow the Project Configuration / Troubleshooting steps in the section below for additional setup setups

### 🛠️ Manual  
1. Navigate to the releases and open the latest release (or whichever release you would like): [Releases](https://github.com/cloudx-xenoss/CloudXiOSMetaAdapter/releases)  
2. 📥 Download the `CloudXMetaAdapter.xcframework.zip` file from the release  
3. 🗂️ Unzip the download then drag and drop `CloudXMetaAdapter.xcframework` into your XCode project
4. Follow the Project Configuration / Troubleshooting steps in the section below for additional setup setups

## 🧰 Project Configuration / Troubleshooting

✅ **1. Linker Flags**  
Add the following to your project’s Other Linker Flags in Build Settings:  
`-ObjC`

✅ **2. Enable Objective-C Exceptions (Recommended)**
- Some older versions of Mintegral SDKs expect Obj-C exceptions to be enabled.
- Go to Build Settings
- Set Enable Objective-C Exceptions (GCC_ENABLE_OBJC_EXCEPTIONS) to YES


✅ **3. App Transport Security (ATS)**  
If your app communicates with non-HTTPS servers for ads (less common), update your Info.plist to allow exceptions:  
```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```
⚠️ *Note: Only do this if absolutely necessary.*


✅ **4. NSUserTrackingUsageDescription (iOS 14+)**  
If your app targets iOS 14+, and you want access to the IDFA, you must add a usage description in your Info.plist:
```
<key>NSUserTrackingUsageDescription</key>
<string>This identifier will be used to deliver personalized ads to you.</string>
```

✅ **5. Minimum Deployment Target**  
📱 As of recent versions, Mintegral SDK requires iOS 11.0+. Set this in your project’s deployment target.


✅ **6. Bitcode (Optional)**  
🚫 Mintegral SDK does not support Bitcode. If you're running into issues during archive or validation, disable Bitcode:  

Go to your target → Build Settings → Set **Enable Bitcode** to `NO`.
