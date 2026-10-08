package androidx.compose.ui.platform;

import android.view.Choreographer;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidUiDispatcher$dispatchCallback$1 implements Choreographer.FrameCallback, Runnable {
    public final /* synthetic */ AndroidUiDispatcher j;

    public AndroidUiDispatcher$dispatchCallback$1(AndroidUiDispatcher androidUiDispatcher) {
        this.j = androidUiDispatcher;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.j.m.removeCallbacks(this);
        AndroidUiDispatcher.f1(this.j);
        AndroidUiDispatcher androidUiDispatcher = this.j;
        synchronized (androidUiDispatcher.n) {
            if (!androidUiDispatcher.s) {
                return;
            }
            androidUiDispatcher.s = false;
            ArrayList arrayList = androidUiDispatcher.p;
            androidUiDispatcher.p = androidUiDispatcher.q;
            androidUiDispatcher.q = arrayList;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Choreographer.FrameCallback) arrayList.get(i)).doFrame(j);
            }
            arrayList.clear();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        AndroidUiDispatcher.f1(this.j);
        AndroidUiDispatcher androidUiDispatcher = this.j;
        synchronized (androidUiDispatcher.n) {
            if (androidUiDispatcher.p.isEmpty()) {
                androidUiDispatcher.l.removeFrameCallback(this);
                androidUiDispatcher.s = false;
            }
        }
    }
}
