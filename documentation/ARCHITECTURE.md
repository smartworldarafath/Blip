# Blip Architecture & System Overview

## System Architecture

Blip is a high-performance cross-platform file transfer and device synchronization application built using a hybrid architecture:

```
┌─────────────────────────────────────────────────────────────┐
│                 Android User Interface                      │
│     Jetpack Compose + Compose Multiplatform (CMP)          │
│  Navigation Compose • Material Themes • Coil 3 • FileKit    │
└──────────────────────────────┬──────────────────────────────┘
                               │ StateFlow<State> / Events
┌──────────────────────────────▼──────────────────────────────┐
│                    Kotlin Core (KMP)                        │
│               net.blip.libblip.Core (JVM)                   │
│   • ByteBuffer Direct State Streaming                      │
│   • Square Wire Protobuf Deserialization / Serialization   │
│   • Background Services & WorkManager Integration          │
└──────────────────────────────┬──────────────────────────────┘
                               │ JNI (libblip-jni.so)
┌──────────────────────────────▼──────────────────────────────┐
│                 C/C++ JNI Bridge Layer                      │
│                  libblip-jni.so                             │
│   • Direct memory buffer passing (Zero-copy ByteBuffer)     │
│   • Exception translation & native crash reporting          │
└──────────────────────────────┬──────────────────────────────┘
                               │ C ABI (libblip.h)
┌──────────────────────────────▼──────────────────────────────┐
│               Go Native Core (libblip.so)                   │
│       Module: github.com/thesharingcompany/blip             │
│   • P2P Transport & Direct Socket Streaming                 │
│   • Signaling, Discovery & Peer Search                      │
│   • bsarchive File Packaging & Parsing                      │
│   • Cryptographic Authentication & Transfer Verification    │
└─────────────────────────────────────────────────────────────┘
```

## Module Organization

The project originally was structured as a multi-project Kotlin/Gradle and Go repository:
- `app/` (or `androidApp/`): Android application module containing activities, Android-specific lifecycle, services, broadcast receivers, and Android UI wrappers.
- `shared/`: Kotlin Multiplatform shared UI and utility logic (`net.blip.shared`).
- `libblip/`: Kotlin multiplatform client binding layer with Wire Protobuf generated models (`net.blip.libblip`).
- `libblipNative/`: Native bridge compiling `libblip-jni.so` (C++) and linking against `libblip.so` (built from Go via `c-shared`).
- `bsarchive/`: Wire Protobuf models for Blip Archive metadata packaging (`bsarchive.*`).
