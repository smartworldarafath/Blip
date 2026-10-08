package io.sentry.android.replay.video;

import android.media.MediaMuxer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SimpleMp4FrameMuxer {
    public final long a;
    public final MediaMuxer b;
    public boolean c;
    public int d;
    public int e;
    public long f;

    public SimpleMp4FrameMuxer(String str, float f) {
        this.a = 1000000.0f / f;
        this.b = new MediaMuxer(str, 0);
    }
}
