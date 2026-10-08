package net.blip.libblip;

import defpackage.jb;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.logging.Level;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LibBlip {
    public static final Companion a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public final native long clientCreate(String str, String str2, boolean z);

        public final native void clientDispatch(long j, byte[] bArr);

        public final native boolean clientExists(long j);

        public final native void clientGetState(long j, ByteBuffer byteBuffer);

        public final native void configureLogging(String str, String str2, int i);

        public final native void log(int i, String str, String[] strArr, String str2, String str3, int i2);

        public final native void setCrashOutput(String str);

        public final native void startHosting(boolean z, String str, String str2, String str3);

        public final native void stopHosting();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [net.blip.libblip.LibBlip$Companion, java.lang.Object] */
    static {
        try {
            System.loadLibrary("blip-jni");
        } catch (UnsatisfiedLinkError unused) {
            String absolutePath = new File(jb.f("../libblipNative/build/nativeLib/current/", System.mapLibraryName("blip-jni"))).getAbsolutePath();
            java.util.logging.Logger.getGlobal().log(Level.WARNING, "Unable to load library blip-jni by name, attempting to load from build products folder: " + absolutePath + ". This is normal for development builds but should not occur for packaged builds.");
            System.load(absolutePath);
        }
    }
}
