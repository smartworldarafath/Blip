package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.Choreographer;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidUiDispatcher extends CoroutineDispatcher {
    public static final Lazy v = LazyKt.b(new Object());
    public static final AndroidUiDispatcher$Companion$currentThread$1 w = new ThreadLocal();
    public final Choreographer l;
    public final Handler m;
    public boolean r;
    public boolean s;
    public final AndroidUiFrameClock u;
    public final Object n = new Object();
    public final ArrayDeque o = new ArrayDeque();
    public ArrayList p = new ArrayList();
    public ArrayList q = new ArrayList();
    public final AndroidUiDispatcher$dispatchCallback$1 t = new AndroidUiDispatcher$dispatchCallback$1(this);

    public AndroidUiDispatcher(Choreographer choreographer, Handler handler) {
        this.l = choreographer;
        this.m = handler;
        this.u = new AndroidUiFrameClock(choreographer, this);
    }

    public static final void f1(AndroidUiDispatcher androidUiDispatcher) {
        Object removeFirst;
        Runnable runnable;
        boolean z;
        Object removeFirst2;
        do {
            synchronized (androidUiDispatcher.n) {
                ArrayDeque arrayDeque = androidUiDispatcher.o;
                if (arrayDeque.isEmpty()) {
                    removeFirst = null;
                } else {
                    removeFirst = arrayDeque.removeFirst();
                }
                runnable = (Runnable) removeFirst;
            }
            while (runnable != null) {
                runnable.run();
                synchronized (androidUiDispatcher.n) {
                    ArrayDeque arrayDeque2 = androidUiDispatcher.o;
                    if (arrayDeque2.isEmpty()) {
                        removeFirst2 = null;
                    } else {
                        removeFirst2 = arrayDeque2.removeFirst();
                    }
                    runnable = (Runnable) removeFirst2;
                }
            }
            synchronized (androidUiDispatcher.n) {
                if (androidUiDispatcher.o.isEmpty()) {
                    z = false;
                    androidUiDispatcher.r = false;
                } else {
                    z = true;
                }
            }
        } while (z);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        synchronized (this.n) {
            this.o.addLast(runnable);
            if (!this.r) {
                this.r = true;
                this.m.post(this.t);
                if (!this.s) {
                    this.s = true;
                    this.l.postFrameCallback(this.t);
                }
            }
        }
    }
}
