package androidx.media3.exoplayer;

import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements ListenerSet.Event, ListenerSet.IterationFinishedEvent {
    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        int i = ExoPlayerImpl.q0;
        ((Player.Listener) obj).h(new ExoPlaybackException(2, new RuntimeException("Player release timed out."), 1003));
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void f(Object obj, FlagSet flagSet) {
        ((Player.Listener) obj).k(new Player.Events(flagSet));
    }
}
