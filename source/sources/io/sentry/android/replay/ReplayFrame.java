package io.sentry.android.replay;

import defpackage.jb;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReplayFrame {
    public final File a;
    public final long b;
    public final String c;

    public ReplayFrame(File file, long j, String str) {
        this.a = file;
        this.b = j;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ReplayFrame) {
                ReplayFrame replayFrame = (ReplayFrame) obj;
                if (!this.a.equals(replayFrame.a) || this.b != replayFrame.b || !Intrinsics.a(this.c, replayFrame.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int a = jb.a(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return a + hashCode;
    }

    public final String toString() {
        return "ReplayFrame(screenshot=" + this.a + ", timestamp=" + this.b + ", screen=" + this.c + ')';
    }
}
