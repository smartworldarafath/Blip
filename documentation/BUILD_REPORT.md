# Recovery Report: Blip Android Application

## 1. Application Overview

- **Package Name**: `net.blip.android`
- **Application Label**: `Blip`
- **Version Name**: `1.2.3`
- **Version Code**: `10203000`
- **Minimum SDK**: `28` (Android 9.0 Pie)
- **Target SDK**: `36` (Android 16 preview / Android 15+)
- **Compile SDK**: `37`
- **Architecture / ABIs**: `arm64-v8a`
- **Detected Framework**:
  - **Android UI Layer**: Jetpack Compose (Compose Multiplatform / CMP runtime `1.12.0`, Compose UI, Material, Animation)
  - **Data Serialization & Protocol**: Square Wire Protobuf (`com.squareup.wire`), Okio (`okio:3.9.1`)
  - **Native Backend Engine**: Go (Golang v1.26.7, module `github.com/thesharingcompany/blip`) compiled as shared library (`libblip.so`)
  - **JNI Bridge**: C/C++ NDK dynamic library (`libblip-jni.so`)
  - **Networking & Media**: OkHttp, Ktor, Media3 ExoPlayer (`androidx.media3`)
  - **Async Runtime**: Kotlin Coroutines (`1.11.0`) & StateFlow
  - **Local Persistence & Database**: SQLite (`android-devices.db`), AndroidX DataStore Preferences (`1.1.7`)
  - **File Handling & System Dialogs**: FileKit (`io.github.vinceglb:filekit`)
  - **Crash Analytics**: Sentry Kotlin Multiplatform / Sentry Android NDK
  - **Push Messaging**: Firebase Cloud Messaging (FCM)
  - **In-App Rating**: Google Play In-App Review (`com.google.android.play:review-ktx:2.0.2`)

---

## 2. Successfully Recovered Components

### 2.1 DEX & Source Code
- **Classes**: 5,611 classes analyzed and decompiled via JADX 1.5.0 and Apktool 2.10.0.
- **Application Modules & Packages**:
  - `net.blip.android.*`:
    - Application lifecycle (`App.java`, `MainActivity.java`)
    - Foreground transfer services (`TransferService.java`, `TransferWorker.java`, `TransferWorkerLauncher.java`)
    - Push notifications & broadcasting (`FirebaseNotificationService.java`, `TransferNotificationBroadcastReceiver.java`, `NotificationFactory.java`, `NotificationChannels.java`, `ShortTermDiskCache.java`)
    - File sharing & shortcuts (`AppFileProvider.java`, `InboundShareUriAccess.java`, `InternetShortcutActivity.java`, `FileKitFileProvider`)
    - Network generation tracking (`NetworkGenerationTracker.java`)
    - In-app review prompt (`ReviewRequestPrompt.java`)
    - Full Jetpack Compose UI screens (`HomeScreenKt`, `HomeTopBarKt`, `PeerTrayKt`, `TransferGridKt`, `TransferCreationScreenKt`, `PeerScreenKt`, `SettingsScreenKt`, `SettingsProfileScreenKt`, `SettingsDeviceScreenKt`, `GalleryScreenKt`, `AudioPickerScreen`, Onboarding step composables)
  - `net.blip.libblip.*`:
    - JNI interface binding (`LibBlip.java`)
    - Reactive state bridge (`Core.java`, `Client.java`, `ByteBufferInputStream.java`)
    - Logging facilities (`Logger.java`, `LogLevel.java`)
    - Hardware and OS identifiers (`DeviceKind.java`, `Flavor.java`, `HardwareInfo.java`, `SemanticVersion.java`, `UserAgent.java`, `PeerId.java`)
    - Protobuf event models (33 event classes in `net.blip.libblip.event`)
    - Protobuf frontend state models (18 state models in `net.blip.libblip.frontend`)
    - Protobuf signaling messages (`net.blip.libblip.messaging.MessageFromServer`)
  - `net.blip.shared.*`:
    - Shared UI utilities (`Strings.java`, `LightDarkTheme.java`, `AvatarEditorKt`, `SelectionListKt`, `OTPCodeVisualTransformation.java`, `LinkableTextKt`)
  - `bsarchive.*`:
    - Blip Archive protocol buffer classes (`Metadata`, `File`, `Folder`, `FolderStub`, `Link`, `AnyItem`)

### 2.2 Smali Bytecode
- Complete Smali disassembly: **11,046 Smali files** extracted to `recovered-smali/` preserving exact DEX bytecode instructions, register allocations, and metadata annotations.

### 2.3 Resources & Assets
- **Total resource files**: 709 resource files preserved in `recovered-resources/`.
- **XML Layouts & Controls**: Material dialogs, player controls, notifications, menus, shortcuts.
- **Values**: Full string tables, colors, dimensions, themes, styles (`Theme.Blip`, `Theme.AppCompat.DayNight.NoActionBar`).
- **Raw Audio Resources**:
  - `complete.wav` (transfer success chime)
  - `failure.wav` (transfer error prompt)
  - `incoming.wav` (new transfer alert)
  - `outgoing.wav` (transfer send alert)
- **Vector Graphics & Drawables**: Application icons, file type glyphs (`ic_file_audio`, `ic_file_video`, `ic_file_code`, `ic_file_compressed`, `ic_file_plaintext`, etc.), notification icons.
- **Fonts**: `manrope.ttf`, `roboto_medium_numbers.ttf`.
- **Assets**:
  - `android-devices.db`: 1.4 MB SQLite database containing Android device model names and hardware codenames.
  - `composeResources/`: CMP compiled resource directory.

### 2.4 Native Binaries
- `libblip.so` (16.05 MB arm64-v8a Go core)
- `libblip-jni.so` (10.88 KB arm64-v8a JNI C++ bridge)
- `libandroidx.graphics.path.so`
- `libdatastore_shared_counter.so`
- `libsentry.so`
- `libsentry-android.so`

---

## 3. Reconstructed Components

1. **Gradle Build System**:
   - Reconstructed `settings.gradle.kts` and `build.gradle.kts`.
   - Reconstructed `app/build.gradle.kts` with exact library dependencies and compiler flags.
   - Reconstructed `app/proguard-rules.pro`.
2. **Google Services & Firebase Configuration**:
   - Reconstructed `app/google-services.json` from recovered project metadata:
     - Project ID: `blip-net`
     - Project Number: `38447872007`
     - Mobile SDK App ID: `1:38447872007:android:837cae3ec34cfff89712a2`
     - Storage Bucket: `blip-net.appspot.com`
     - OAuth Client ID: `38447872007-nldtegtlbo63ftv196chq0q9f3qt8u5g.apps.googleusercontent.com`
3. **Android Project Tree**:
   - Created clean development project in `recovered-project/app/src/main/` with `java/`, `res/`, `assets/`, `jniLibs/`, and `AndroidManifest.xml`.
4. **Wire Protobuf Schemas**:
   - Synthesized `.proto` schema definitions for `bsarchive` and `libblip` from adapter reflection.

---

## 4. Partially Recovered Components

1. **Kotlin Multiplatform Source File Separation**:
   - In the compiled DEX, commonMain, androidMain, and generated sources are unified into JVM bytecode. The recovered code is currently organized as an Android project rather than a multi-module KMP project.
2. **Go Core Source Code (`libblip.so`)**:
   - The compiled machine code and symbols are intact, and the function interfaces, package structures, and JNI bridges are completely mapped. However, exact Go `.go` source files are compiled into native ARM64 machine instructions and cannot be 1:1 decompiled into Go source text.

---

## 5. Unrecoverable Information

1. **Original Commit History & Git Tags**:
   - VCS history is not bundled in APK distributions.
2. **Original Keystore / Signing Keys**:
   - The release signature (`stamp-cert-sha256`) is present, but the private signing keystore cannot be retrieved from an APK.
3. **Local Developer Comments & Unused Code**:
   - Comments and dead code stripped by R8 during compilation.

---

## 6. Obfuscation & R8 Analysis

- **Obfuscation Status**: Partial optimization with R8.
- **Impact**:
  - Core domain packages (`net.blip.android`, `net.blip.libblip`, `net.blip.shared`, `bsarchive`) maintained original class names, field names, and method names because of Wire serialization keep rules, JNI symbol requirements, and reflection.
  - Kotlin lambdas, inlined functions, and synthetic helpers were merged into `defpackage` (`b.java`, `c.java`, `t5.java`, `k0.java`, `jb.java`).
  - All navigation destinations, screen routes, and UI composables were fully resolved from the lambda switch dispatchers.

---

## 7. Third-Party Dependencies

| Library | Exact Version | Source |
|---|---|---|
| Android Gradle Plugin | `9.1.1` (configured `8.5.2` for build stability) | `app-metadata.properties` |
| AndroidX Compose Runtime / Foundation / UI | `1.12.0` | `.version` metadata |
| AndroidX Activity Compose | `1.13.0` | `.version` metadata |
| AndroidX AppCompat | `1.8.0` | `.version` metadata |
| AndroidX Core KTX | `1.18.0` | `.version` metadata |
| AndroidX Lifecycle | `2.11.0` | `.version` metadata |
| AndroidX Navigation Compose | `2.10.0` | `.version` metadata |
| AndroidX WorkManager | `2.11.2` | `.version` metadata |
| AndroidX DataStore | `1.1.7` | `.version` metadata |
| AndroidX Room | `2.7.0` | `.version` metadata |
| Kotlinx Coroutines | `1.11.0` | `.version` metadata |
| Square Wire Protobuf | `4.9.9` | Bytecode inspection |
| Square Okio | `3.9.1` | Bytecode inspection |
| Square OkHttp | `4.12.0` | Bytecode inspection |
| Google Play Review | `2.0.2` | `review.properties` |
| Play Services Base / Tasks / Cloud Messaging | `18.9.0` / `18.4.0` / `17.4.0` | `.properties` metadata |
| Firebase Messaging & Encoders | `24.0.3` / `17.0.0` | `.properties` metadata |
| Coil 3 Image Loader | `3.0.4` | Bytecode inspection |
| FileKit Picker | `0.8.8` | Bytecode inspection |
| DeviceName | `2.1.1` | Bytecode inspection |
| Sentry KMP / Android | `7.18.1` | Bytecode inspection |

---

## 8. Build & Project Status

- The recovered project has been assembled at `d:\Antigravity Projects\Blip\recovered-project\`.
- All native binaries are placed in `recovered-project/app/src/main/jniLibs/arm64-v8a/`.
- All assets, databases, and resources are positioned in standard Android directories.
- Gradle build scripts (`build.gradle.kts`, `settings.gradle.kts`) have been configured to support compilation and packaging.
