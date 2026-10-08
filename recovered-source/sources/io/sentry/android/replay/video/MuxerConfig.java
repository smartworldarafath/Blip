package io.sentry.android.replay.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import defpackage.q;
import java.io.File;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(24)
/* loaded from: classes.dex */
public final class MuxerConfig {
    public final File a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final String f = "video/avc";

    public MuxerConfig(File file, int i, int i2, int i3, int i4) {
        this.a = file;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MuxerConfig) {
                MuxerConfig muxerConfig = (MuxerConfig) obj;
                if (!this.a.equals(muxerConfig.a) || this.b != muxerConfig.b || this.c != muxerConfig.c || this.d != muxerConfig.d || this.e != muxerConfig.e || !this.f.equals(muxerConfig.f)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f.hashCode() + q.b(this.e, q.b(this.d, q.b(this.c, q.b(this.b, this.a.hashCode() * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        return "MuxerConfig(file=" + this.a + ", recordingWidth=" + this.b + ", recordingHeight=" + this.c + ", frameRate=" + this.d + ", bitRate=" + this.e + ", mimeType=" + this.f + ')';
    }
}
