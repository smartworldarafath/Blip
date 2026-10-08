# Unrecoverable Components & Technical Limitations

This document details elements that cannot technically be retrieved directly from the compiled Android distribution (XAPK) and provides guidance on how they are addressed.

## 1. Native Go Source Code (`.go` files)

- **Status**: Machine-compiled into `libblip.so` (ELF ARM64 binary).
- **Limitation**: While function symbols, packages (`github.com/thesharingcompany/blip/...`), string tables, and JNI function signatures are 100% recovered and documented, the original Go source files (`.go`) cannot be decompiled into raw source text.
- **Handling**: The original `libblip.so` is preserved and integrated directly in `recovered-project/app/src/main/jniLibs/arm64-v8a/libblip.so`. The JNI bridge (`libblip-jni.so`) is also preserved intact. The Go core continues to execute with complete fidelity.

## 2. Original Git Repository Metadata

- **Status**: Not present in APK/XAPK packages.
- **Limitation**: Commit log, branches, pull requests, tags, and commit author timestamps are omitted during the Android packaging process.
- **Handling**: A new Git repository can be initialized (`git init`) from the reconstructed project.

## 3. Production Keystore / Private Signing Key

- **Status**: Private developer asset.
- **Limitation**: APKs only contain public certificates and SHA-256 signatures (`stamp-cert-sha256`). The private `.jks` / `.keystore` used to sign Play Store releases is never included in an APK.
- **Handling**: Use debug signing or generate a new release keystore for local development and future updates.

## 4. Kotlin Source Inlining & Synthetic Lambda Artifacts

- **Status**: Transformed by Kotlin Compiler & R8 optimizer.
- **Limitation**: R8 aggressively merged anonymous lambdas into indexed helper classes within `defpackage` (`b.java`, `c.java`, `t5.java`, etc.).
- **Handling**: The logic is 100% preserved and fully decompiled. In the reconstructed project, these classes are placed in `recovered-project/app/src/main/java/defpackage/` so the code compiles and functions without behavioral loss.

## 5. Developer Source Code Comments

- **Status**: Stripped during Java bytecode compilation (`javac` / `kotlinc`).
- **Limitation**: Non-javadoc inline comments (`// ...`) are discarded by compilers before bytecode generation.
- **Handling**: System architecture and code documentation have been reconstructed in `documentation/`.
