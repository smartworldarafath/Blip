package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements ListenerSet.Event {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;

    public /* synthetic */ f(int i, int i2) {
        this.j = i2;
        this.k = i;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void b(Object obj) {
        int i = this.j;
        int i2 = this.k;
        Player.Listener listener = (Player.Listener) obj;
        switch (i) {
            case 0:
                int i3 = ExoPlayerImpl.q0;
                listener.u(i2);
                return;
            default:
                int i4 = ExoPlayerImpl.q0;
                listener.b(i2);
                return;
        }
    }
}
