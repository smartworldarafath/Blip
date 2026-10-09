package androidx.lifecycle;

import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.Lifecycle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ServiceLifecycleDispatcher {
    public final LifecycleRegistry a;
    public final Handler b = new Handler(Looper.getMainLooper());
    public DispatchRunnable c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DispatchRunnable implements Runnable {
        public final LifecycleRegistry j;
        public final Lifecycle.Event k;
        public boolean l;

        public DispatchRunnable(LifecycleRegistry lifecycleRegistry, Lifecycle.Event event) {
            lifecycleRegistry.getClass();
            event.getClass();
            this.j = lifecycleRegistry;
            this.k = event;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!this.l) {
                this.j.e(this.k);
                this.l = true;
            }
        }
    }

    public ServiceLifecycleDispatcher(LifecycleService lifecycleService) {
        this.a = new LifecycleRegistry(lifecycleService, true);
    }

    public final void a(Lifecycle.Event event) {
        DispatchRunnable dispatchRunnable = this.c;
        if (dispatchRunnable != null) {
            dispatchRunnable.run();
        }
        DispatchRunnable dispatchRunnable2 = new DispatchRunnable(this.a, event);
        this.c = dispatchRunnable2;
        this.b.postAtFrontOfQueue(dispatchRunnable2);
    }
}
