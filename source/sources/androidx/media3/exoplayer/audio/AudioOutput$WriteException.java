package androidx.media3.exoplayer.audio;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioOutput$WriteException extends Exception {
    public final int j;
    public final boolean k;

    public AudioOutput$WriteException(int i, boolean z) {
        super(q.g(i, "AudioOutput write failed: "));
        this.k = z;
        this.j = i;
    }
}
