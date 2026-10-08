package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TrackSelector {
    public InvalidationListener a;
    public BandwidthMeter b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface InvalidationListener {
        void a(TrackSelectionParameters trackSelectionParameters);
    }

    public abstract void a(TrackSelectionParameters trackSelectionParameters);
}
