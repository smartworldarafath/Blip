package androidx.media3.common;

import android.media.AudioAttributes;
import android.os.Build;
import androidx.media3.common.util.Util;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioAttributes {
    public static final AudioAttributes b = new Object();
    public android.media.AudioAttributes a;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.media3.common.AudioAttributes] */
    static {
        q.q(0, 1, 2, 3, 4);
        Util.z(5);
        Util.z(6);
    }

    public final android.media.AudioAttributes a() {
        if (this.a == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                usage.setAllowedCapturePolicy(1);
                usage.setHapticChannelsMuted(true);
            }
            if (i >= 32) {
                usage.setSpatializationBehavior(0);
                usage.setIsContentSpatialized(false);
            }
            this.a = usage.build();
        }
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AudioAttributes.class == obj.getClass()) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return -436042064;
    }
}
