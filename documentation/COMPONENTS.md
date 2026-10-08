# Recovered Components Catalog

This catalog documents every discrete recovered component across code, resources, assets, and native binaries.

## 1. Application Screens & Composables

| Screen Name | Recovered File | Route | Functionality |
|---|---|---|---|
| **Onboarding Flow** | `net.blip.android.ui.onboarding.Onboarding*.java` | `onboarding` | Multi-step setup: splash (`OnboardingSplashStep`), email verification (`OnboardingEmailEntryStep`), OTP entry (`OnboardingCodeEntryStep`), system notification permission request (`OnboardingEnableNotificationsStep`), share instructions (`OnboardingShareInstructionsStep`), companion device setup (`OnboardingCompanionDeviceSetupStep`). |
| **Home Dashboard** | `net.blip.android.ui.home.HomeScreenKt.java` | `home` | Main activity feed displaying `HomeTopBar`, `ConnectionStatusHUD`, `PeerTray`, and `TransferGrid`. |
| **Peer Tray** | `net.blip.android.ui.home.PeerTrayKt.java` | Component | Horizontal carousel displaying nearby and remembered peers with status badges and device icons. |
| **Transfer Grid** | `net.blip.android.ui.home.TransferGridKt.java` | Component | Grid displaying active, completed, or pending transfers with cancellation and removal dialog triggers. |
| **Create Transfer** | `net.blip.android.ui.transfer.TransferCreationScreenKt.java` | `createTransfer/{transferId}?isFromShareIntent={isFromShareIntent}` | File sender screen with target peer picker, thumbnail preview, file size calculation, and send trigger. |
| **Settings** | `net.blip.android.ui.settings.SettingsScreenKt.java` | `settings` | Application configuration: device name, default download folder, auto-accept toggle, account details. |
| **Profile Settings** | `net.blip.android.ui.settings.SettingsProfileScreenKt.java` | `settings/profile` | User display name editor and custom avatar generator. |
| **Device Settings** | `net.blip.android.ui.settings.SettingsDeviceScreenKt.java` | `settings/device/{deviceId}` | Linked companion device management and revocation. |
| **Help (Send to Devices)** | `net.blip.android.ui.help.HelpScreenSendToYourDevicesKt.java` | `help/sendToYourDevices` | User guide for transferring between owned devices. |
| **Help (Send to Others)** | `net.blip.android.ui.help.HelpScreenSendToOtherPeopleKt.java` | `help/sendToOtherPeople` | User guide for P2P sharing with external recipients. |
| **Media Gallery** | `net.blip.android.ui.gallery.GalleryScreenKt.java` | `gallery/{urls}` | Full-screen media viewer featuring `ZoomableImageKt` and ExoPlayer-based `GalleryVideoPlayerKt`. |
| **Peer Details** | `net.blip.android.ui.peer.PeerScreenKt.java` | `peer/{peerId}` | Specific peer connection stats, direct transfer history, and fast action triggers. |
| **Audio Picker** | `net.blip.android.ui.audiopicker.*` | `audioPicker/{requestId}` | Custom audio track selector sheet. |

---

## 2. Background Workers & Services

1. **`TransferService`**:
   - Class: `net.blip.android.transferworker.TransferService`
   - Role: Foreground service with `foregroundServiceType="dataSync"` to prevent Android OS from killing long-running file transfers.
2. **`TransferWorker`**:
   - Class: `net.blip.android.transferworker.TransferWorker`
   - Role: AndroidX WorkManager task managing offline queueing and transfer lifecycle timeouts.
3. **`FirebaseNotificationService`**:
   - Class: `net.blip.android.notifications.FirebaseNotificationService`
   - Role: Handles push notifications (`com.google.firebase.MESSAGING_EVENT`), background invite alerts, and token registration with the backend.
4. **`TransferNotificationBroadcastReceiver`**:
   - Class: `net.blip.android.notifications.TransferNotificationBroadcastReceiver`
   - Role: Handles notification interactive actions (Accept, Decline, Cancel buttons in notification shade).

---

## 3. Native JNI & Go Core

1. **`libblip.so` (16 MB)**:
   - Module: `github.com/thesharingcompany/blip`
   - Built with: Go 1.26.7
   - Contains:
     - `frontend`: Reactive client session, event queue
     - `frontend/rpc`: IPC commands
     - `frontend/bsarchive`: Streaming tar/archive serialization
     - `backend/messaging`: Signaling protocol client
     - `backend/httpb`: Local file transfer daemon
2. **`libblip-jni.so` (10 KB)**:
   - Exported functions:
     - `clientCreate`
     - `clientDispatch`
     - `clientGetState`
     - `clientExists`
     - `startHosting`
     - `stopHosting`
     - `configureLogging`
     - `log`
     - `setCrashOutput`

---

## 4. Local Files & Assets

1. **`android-devices.db`**:
   - SQLite Database (1.4 MB)
   - Table `devices`: `_id`, `name`, `codename`, `model`
   - Used to resolve model strings (e.g. `SM-S928B`) to human names (e.g. `Samsung Galaxy S24 Ultra`).
2. **Sound Assets** (`res/raw/`):
   - `complete.wav`
   - `failure.wav`
   - `incoming.wav`
   - `outgoing.wav`
3. **Fonts** (`res/font/`):
   - `manrope.ttf`
   - `roboto_medium_numbers.ttf`
