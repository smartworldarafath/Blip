# Native Components and JNI Bridge

## 1. Native Libraries Inventory

The application bundles the following dynamic libraries for the `arm64-v8a` architecture:

| Library File | Size | Origin / Implementation | Description |
|---|---|---|---|
| `libblip.so` | 16.05 MB | Go (Golang v1.26.7) | Core network transfer engine, signaling, P2P encryption, and state engine (`github.com/thesharingcompany/blip`). |
| `libblip-jni.so` | 10.88 KB | C / C++ (Android NDK) | JNI bridge library connecting Android JVM `net.blip.libblip.LibBlip` with `libblip.so`. |
| `libandroidx.graphics.path.so` | 10.09 KB | AndroidX Graphics Path | NDK path morphing and curve computation library. |
| `libdatastore_shared_counter.so`| 7.11 KB | AndroidX DataStore | Shared native lock and multi-process counter. |
| `libsentry.so` | 752.72 KB | Sentry NDK | Native signal handler and crash reporter. |
| `libsentry-android.so` | 18.19 KB | Sentry Android NDK | Sentry Android OS integration bridge. |

## 2. JNI Interface Specification (`libblip-jni.so`)

Class: `net.blip.libblip.LibBlip$Companion`

### Exported Functions:

1. `long clientCreate(String dataDir, String userAgentProto, boolean isDev)`
   - Initializes an instance of the Blip Go core client.
   - Allocates internal state channels and returns a `long` client handle pointer.

2. `void clientDispatch(long clientHandle, byte[] eventWireBytes)`
   - Dispatches a serialized event message (e.g. `TransferCreateRequested`, `SetUserAgent`) to the Go engine's event queue.

3. `void clientGetState(long clientHandle, ByteBuffer directBuffer)`
   - Populates the pre-allocated direct `ByteBuffer` (8 MB capacity) with the current Wire-encoded `frontend.State` protobuf binary.
   - Zero-copy IPC design.

4. `boolean clientExists(long clientHandle)`
   - Checks if the client handle remains alive and active.

5. `void startHosting(boolean isForeground, String localIp, String port, String hostId)`
   - Starts the local P2P HTTP transfer server listener.

6. `void stopHosting()`
   - Stops the local listener and releases network ports.

7. `void configureLogging(String logDir, String logLevel, int maxFiles)`
   - Sets up native file logging and log rotation.

8. `void log(int level, String tag, String[] tags, String file, String msg, int line)`
   - Writes a log entry into the native logger from JVM.

9. `void setCrashOutput(String path)`
   - Sets the target file path for native panic / backtrace dumps.

## 3. Go Runtime & Packages

Compiler: Go 1.26.7
Identified Go packages in `libblip.so`:
- `github.com/thesharingcompany/blip/frontend`: State machine, reactive client session
- `github.com/thesharingcompany/blip/frontend/rpc`: RPC endpoints and command handlers
- `github.com/thesharingcompany/blip/frontend/bsarchive`: Archive file packing, streaming, indexing
- `github.com/thesharingcompany/blip/backend/messaging`: Signaling websocket / HTTP client
- `github.com/thesharingcompany/blip/backend/httpb`: Local file transfer HTTP daemon
- `github.com/thesharingcompany/blip/frontend/event`: Event bus and dispatcher
