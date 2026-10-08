package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.Display;
import android.view.View;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.v1;
import java.util.PriorityQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPrefetchScheduler implements PrefetchScheduler, PriorityPrefetchScheduler, View.OnAttachStateChangeListener, Runnable, Choreographer.FrameCallback {
    public static long q;
    public final View j;
    public boolean l;
    public boolean o;
    public long p;
    public final PriorityQueue k = new PriorityQueue(11, new v1(0));
    public final Choreographer m = Choreographer.getInstance();
    public final PrefetchRequestScopeImpl n = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PrefetchRequestScopeImpl implements PrefetchRequestScope {
        public boolean a;
        public long b;

        public final long a() {
            if (this.a) {
                return Long.MAX_VALUE;
            }
            return Math.max(0L, this.b - System.nanoTime());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003d, code lost:
    
        if (r0 >= 30.0f) goto L11;
     */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler$PrefetchRequestScopeImpl, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AndroidPrefetchScheduler(View view) {
        float f;
        this.j = view;
        if (q == 0) {
            Display display = view.getDisplay();
            if (!view.isInEditMode() && display != null) {
                f = display.getRefreshRate();
            }
            f = 60.0f;
            q = 1.0E9f / f;
        }
        view.addOnAttachStateChangeListener(this);
        if (view.isAttachedToWindow()) {
            this.o = true;
        }
    }

    public final boolean b() {
        PrefetchRequestScopeImpl prefetchRequestScopeImpl = this.n;
        long a = prefetchRequestScopeImpl.a();
        AndroidTrace_androidKt.a(a, "compose:lazy:prefetch:available_time_nanos");
        boolean z = true;
        if (a > 0) {
            PriorityQueue priorityQueue = this.k;
            Object peek = priorityQueue.peek();
            peek.getClass();
            if (!((PrefetchHandleProvider.HandleAndRequestImpl) ((PriorityTask) peek).b).e(prefetchRequestScopeImpl)) {
                priorityQueue.poll();
                z = false;
            }
            prefetchRequestScopeImpl.a = false;
        }
        return z;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        if (this.o) {
            this.p = j;
            this.j.post(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.o = true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.o = false;
        this.j.removeCallbacks(this);
        this.m.removeFrameCallback(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        PriorityQueue priorityQueue = this.k;
        if (!priorityQueue.isEmpty() && this.l && this.o) {
            View view = this.j;
            if (view.getWindowVisibility() == 0) {
                long nanos = TimeUnit.MILLISECONDS.toNanos(view.getDrawingTime());
                if (System.nanoTime() > (2 * q) + nanos) {
                    z = true;
                } else {
                    z = false;
                }
                PrefetchRequestScopeImpl prefetchRequestScopeImpl = this.n;
                prefetchRequestScopeImpl.a = z;
                prefetchRequestScopeImpl.b = Math.max(this.p, nanos) + q;
                boolean z2 = false;
                while (!priorityQueue.isEmpty() && !z2) {
                    if (prefetchRequestScopeImpl.a) {
                        Trace.beginSection("compose:lazy:prefetch:idle_frame");
                        try {
                            z2 = b();
                        } finally {
                            Trace.endSection();
                        }
                    } else {
                        z2 = b();
                    }
                }
                if (z2) {
                    this.m.postFrameCallback(this);
                } else {
                    this.l = false;
                }
                AndroidTrace_androidKt.a(0L, "compose:lazy:prefetch:available_time_nanos");
                return;
            }
        }
        this.l = false;
    }
}
