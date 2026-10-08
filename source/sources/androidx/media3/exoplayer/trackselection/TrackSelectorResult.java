package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Tracks;
import androidx.media3.exoplayer.RendererConfiguration;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrackSelectorResult {
    public final int a;
    public final RendererConfiguration[] b;
    public final ExoTrackSelection[] c;
    public final Tracks d;
    public final Object e;

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Tracks tracks, Object obj) {
        boolean z;
        if (rendererConfigurationArr.length == exoTrackSelectionArr.length) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.b = rendererConfigurationArr;
        this.c = (ExoTrackSelection[]) exoTrackSelectionArr.clone();
        this.d = tracks;
        this.e = obj;
        this.a = rendererConfigurationArr.length;
    }

    public final boolean a(TrackSelectorResult trackSelectorResult, int i) {
        if (trackSelectorResult == null || !Objects.equals(this.b[i], trackSelectorResult.b[i]) || !Objects.equals(this.c[i], trackSelectorResult.c[i])) {
            return false;
        }
        return true;
    }

    public final boolean b(int i) {
        if (this.b[i] != null) {
            return true;
        }
        return false;
    }
}
