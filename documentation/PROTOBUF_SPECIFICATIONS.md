# Protocol Buffer & Wire Models Specification

Blip uses Square Wire to serialize and deserialize messages between the Kotlin JVM UI layer and the Go native core binary.

## 1. Blip Archive (`bsarchive`)

Package: `bsarchive`
Schema definition reconstructed from Wire `ProtoAdapter`:

```protobuf
syntax = "proto2";

package bsarchive;

message Metadata {
  map<string, AnyItem> items = 1;
  map<string, string> disk_locations = 2;
}

message AnyItem {
  oneof item {
    File file = 1;
    Folder folder = 2;
    FolderStub folder_stub = 3;
    Link link = 4;
  }
}

message File {
  optional string name = 1;
  optional int64 size = 2;
  optional string mime_type = 3;
  optional int64 modified_timestamp = 4;
  optional bytes sha256 = 5;
}

message Folder {
  optional string name = 1;
  repeated string children_ids = 2;
}

message FolderStub {
  optional string name = 1;
  optional int64 total_size = 2;
  optional int32 item_count = 3;
}

message Link {
  optional string url = 1;
  optional string title = 2;
}
```

## 2. Frontend State (`frontend.State`)

Root message: `net.blip.libblip.frontend.State`
Deserialized via `State$Companion$ADAPTER$1` from direct memory `ByteBuffer`:

```protobuf
syntax = "proto3";

package frontend;

message State {
  Auth auth = 1;
  Config config = 2;
  Registration registration = 3;
  Onboarding onboarding = 4;
  Users users = 5;
  Messaging messaging = 6;
  MessagingStatus messaging_status = 7;
  Search search = 8;
  repeated Transfer transfers = 9;
  SystemInfo system_info = 10;
  NotificationPermissionStatus notification_permission_status = 11;
  PushNotifications push_notifications = 12;
  repeated PeerInteraction peer_interactions = 13;
  Err last_error = 14;
}

message Transfer {
  string transfer_id = 1;
  string peer_id = 2;
  int32 progress_percentage = 3;
  bsarchive.Metadata metadata = 4;
  string source_device_name = 5;
  string target_device_name = 6;
  bool is_local_network = 7;
  TransferErr error = 8;
  TransferErr remote_error = 9;
  Direction direction = 10; // OUTGOING = 1, INCOMING = 2
  Status status = 11;       // PENDING = 1, ACCEPTED = 2, IN_PROGRESS = 3, COMPLETED = 4, CANCELED = 5, FAILED = 6
  bool can_auto_accept = 12;
  bool is_encrypted = 13;
  int64 total_bytes = 14;
  ConnStats stats = 15;
  int32 file_count = 16;
  int64 created_at = 17;
}
```

## 3. Dispatched Events (`net.blip.libblip.event.*`)

Dispatched to Go core via `LibBlip.clientDispatch(handle, eventBytes)`:

- **Transfer Lifecycle**:
  - `TransferCreateRequested`
  - `TransferAddContentRequested`
  - `TransferInviteRequested`
  - `TransferAcceptanceRequested`
  - `TransferDeclineRequested`
  - `TransferCancellationRequested`
  - `TransferRemoveRequested`
  - `TransferResume`
  - `TransferSetAutoAccept`
  - `TransferSetCustomDefaultSavePath`
  - `TransferRespondFromNotification`
- **Peer & Network Management**:
  - `Search`
  - `AbandonSearch`
  - `AddBlockedUser`
  - `RemoveContact`
  - `NetworkAvailable`
  - `NetworkUnavailable`
- **Authentication & User Profile**:
  - `SendRegistrationCodeRequested`
  - `RegistrationRequested`
  - `UpdateUser`
  - `UpdateDevice`
  - `SetUserAvatar`
  - `Logout`
  - `RemoveDevice`
  - `RemoveDeviceThenLogout`
- **Onboarding & Permissions**:
  - `OnboardingSkipSplash`
  - `OnboardingSkipEnableNotifications`
  - `OnboardingSkipShareInstructions`
  - `OnboardingSkipCompanionDeviceSetup`
  - `NotificationPermissionsChanged`
  - `NotificationTokenGenerated`
