package io.github.vinceglb.filekit;

import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformFile {
    public static final Companion Companion = new Object();
    public final AndroidFile a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public final KSerializer<PlatformFile> serializer() {
            return PlatformFileSerializer.a;
        }
    }

    public PlatformFile(AndroidFile androidFile) {
        this.a = androidFile;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof PlatformFile) || !this.a.equals(((PlatformFile) obj).a)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return PlatformFile_androidKt.c(this);
    }
}
