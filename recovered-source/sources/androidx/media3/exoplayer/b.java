package androidx.media3.exoplayer;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.ListenerSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements ListenerSet.Event {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        int i = this.j;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                int i2 = ExoPlayerImpl.q0;
                ((Player.Listener) obj).s((MediaMetadata) obj2);
                return;
            case 1:
                int i3 = ExoPlayerImpl.q0;
                ((Player.Listener) obj).t((TrackSelectionParameters) obj2);
                return;
            default:
                ((Player.Listener) obj).s(ExoPlayerImpl.this.S);
                return;
        }
    }
}
