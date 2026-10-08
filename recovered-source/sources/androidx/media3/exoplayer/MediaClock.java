package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MediaClock {
    void c(PlaybackParameters playbackParameters);

    PlaybackParameters e();

    long k();

    default boolean m() {
        return false;
    }
}
