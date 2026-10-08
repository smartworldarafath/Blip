package androidx.lifecycle;

import android.app.Activity;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import defpackage.e;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProcessLifecycleOwner implements LifecycleOwner {
    public static final ProcessLifecycleOwner r = new ProcessLifecycleOwner();
    public int j;
    public int k;
    public Handler n;
    public boolean l = true;
    public boolean m = true;
    public final LifecycleRegistry o = new LifecycleRegistry(this, true);
    public final e p = new e(14, this);
    public final ProcessLifecycleOwner$initializationListener$1 q = new ProcessLifecycleOwner$initializationListener$1(this);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api29Impl {
        public static final void a(Activity activity, ProcessLifecycleOwner$attach$1$onActivityPreCreated$1 processLifecycleOwner$attach$1$onActivityPreCreated$1) {
            activity.registerActivityLifecycleCallbacks(processLifecycleOwner$attach$1$onActivityPreCreated$1);
        }
    }

    private ProcessLifecycleOwner() {
    }

    public final void b() {
        int i = this.k + 1;
        this.k = i;
        if (i == 1) {
            if (this.l) {
                this.o.e(Lifecycle.Event.ON_RESUME);
                this.l = false;
            } else {
                Handler handler = this.n;
                handler.getClass();
                handler.removeCallbacks(this.p);
            }
        }
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return this.o;
    }
}
