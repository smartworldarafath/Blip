package androidx.media3.exoplayer;

import android.os.Looper;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlayerMessage {
    public final Target a;
    public final Sender b;
    public int c;
    public Object d;
    public final Looper e;
    public boolean f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Sender {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Target {
        void o(int i, Object obj);
    }

    public PlayerMessage(Sender sender, Target target, Timeline timeline, int i, Looper looper) {
        this.b = sender;
        this.a = target;
        this.e = looper;
    }

    public final synchronized void a(boolean z) {
        notifyAll();
    }

    public final void b() {
        Preconditions.n(!this.f);
        this.f = true;
        ExoPlayerImplInternal exoPlayerImplInternal = (ExoPlayerImplInternal) this.b;
        if (!exoPlayerImplInternal.S && exoPlayerImplInternal.r.getThread().isAlive()) {
            exoPlayerImplInternal.p.k(14, this).a();
        } else {
            Log.f("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            a(false);
        }
    }
}
