# UI & Navigation Architecture

## Navigation Graph

Blip uses Jetpack Compose Navigation (`androidx.navigation.compose.NavHost`) driven by `net.blip.android.ui.navigation.NavigationRootKt`.

```
                        ┌───────────────────┐
                        │    MainActivity   │
                        └─────────┬─────────┘
                                  │
                                  ▼
                        ┌───────────────────┐
                        │   NavigationRoot  │
                        └─────────┬─────────┘
                                  │
        ┌─────────────────────────┼─────────────────────────┐
        │                         │                         │
        ▼                         ▼                         ▼
┌───────────────┐         ┌───────────────┐         ┌───────────────┐
│  onboarding   │         │     home      │         │createTransfer │
└───────┬───────┘         └───────┬───────┘         └───────────────┘
        │                         │
        ├─ SplashStep             ├─ TopBar & HUD
        ├─ EmailEntryStep         ├─ PeerTray (Nearby/Online peers)
        ├─ CodeEntryStep          ├─ TransferGrid (Active/Recent transfers)
        ├─ NotificationsStep      └─ Bottom Actions / Fast Send
        ├─ ShareInstructionsStep
        └─ CompanionSetupStep
                                  │
    ┌──────────────┬──────────────┼──────────────┬──────────────┐
    ▼              ▼              ▼              ▼              ▼
┌────────┐  ┌─────────────┐ ┌───────────┐ ┌────────────┐ ┌────────────┐
│settings│  │settings/peer│ │  gallery  │ │    peer    │ │audioPicker │
└────────┘  └─────────────┘ └───────────┘ └────────────┘ └────────────┘
```

## Route Table & Screen Mappings

| Route Pattern | Parameters | Screen Composable | Description |
|---|---|---|---|
| `onboarding` | None | `OnboardingScreen` (`OnboardingStepperKt`) | Multi-step user registration & setup flow |
| `home` | None | `HomeScreen` | Main dashboard with peer tray and transfer grid |
| `createTransfer/{transferId}?isFromShareIntent={isFromShareIntent}` | `transferId: String`, `isFromShareIntent: Boolean` | `TransferCreationScreen` | Transfer preview, peer target picker, file list |
| `settings` | None | `SettingsScreen` | Device configuration, account, default download path |
| `settings/profile` | None | `SettingsProfileScreen` | User profile, name, avatar picker |
| `settings/device/{deviceId}` | `deviceId: String` | `SettingsDeviceScreen` | Registered companion device details |
| `help/sendToYourDevices` | None | `HelpScreenSendToYourDevices` | Instructional walk-through for cross-device sharing |
| `help/sendToOtherPeople` | None | `HelpScreenSendToOtherPeople` | Instructional walk-through for sharing with contacts |
| `gallery/{urls}` | `urls: List<Uri>` (JSON-encoded) | `GalleryScreen` | Full-screen media viewer with ZoomableImage and ExoPlayer |
| `peer/{peerId}` | `peerId: String` | `PeerScreen` | Specific peer history, device info, fast transfer initiation |
| `audioPicker/{requestId}` | `requestId: Int` | `AudioPickerScreen` | Specialized audio file selection sheet |
