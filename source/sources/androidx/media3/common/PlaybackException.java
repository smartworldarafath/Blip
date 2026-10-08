package androidx.media3.common;

import androidx.media3.common.util.Util;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlaybackException extends Exception {
    public final int j;
    public final long k;

    static {
        q.q(0, 1, 2, 3, 4);
        Util.z(5);
    }

    public PlaybackException(String str, Throwable th, int i, long j) {
        super(str, th);
        this.j = i;
        this.k = j;
    }
}
