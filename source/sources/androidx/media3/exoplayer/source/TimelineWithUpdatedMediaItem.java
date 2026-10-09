package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TimelineWithUpdatedMediaItem extends ForwardingTimeline {
    public final MediaItem c;

    public TimelineWithUpdatedMediaItem(Timeline timeline, MediaItem mediaItem) {
        super(timeline);
        this.c = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
    public final Timeline.Window m(int i, Timeline.Window window, long j) {
        super.m(i, window, j);
        MediaItem mediaItem = this.c;
        window.b = mediaItem;
        MediaItem.LocalConfiguration localConfiguration = mediaItem.b;
        return window;
    }
}
