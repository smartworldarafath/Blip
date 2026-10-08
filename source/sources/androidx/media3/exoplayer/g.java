package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ListenerSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements BackgroundThreadStateHandler.StateChangeListener, ListenerSet.Event {
    public final /* synthetic */ ExoPlayerImpl j;

    public /* synthetic */ g(ExoPlayerImpl exoPlayerImpl) {
        this.j = exoPlayerImpl;
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public void a(Object obj, Object obj2) {
        ((Integer) obj).getClass();
        int intValue = ((Integer) obj2).intValue();
        int i = ExoPlayerImpl.q0;
        ExoPlayerImpl exoPlayerImpl = this.j;
        exoPlayerImpl.w0();
        exoPlayerImpl.l.p.a(40, intValue, 0).a();
        exoPlayerImpl.m.f(21, new f(intValue, 1));
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        ((Player.Listener) obj).D(this.j.R);
    }
}
