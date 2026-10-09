package androidx.media3.common.util;

import android.os.Looper;
import com.google.common.base.Preconditions;
import defpackage.b4;
import defpackage.d7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackgroundThreadStateHandler<T> {
    public final HandlerWrapper a;
    public final HandlerWrapper b;
    public final StateChangeListener c;
    public Object d;
    public Object e;
    public int f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface StateChangeListener<T> {
        void a(Object obj, Object obj2);
    }

    public BackgroundThreadStateHandler(Object obj, Looper looper, Looper looper2, SystemClock systemClock, StateChangeListener stateChangeListener) {
        this.a = systemClock.a(looper, null);
        this.b = systemClock.a(looper2, null);
        this.d = obj;
        this.e = obj;
        this.c = stateChangeListener;
    }

    public final Object a() {
        boolean z;
        Looper myLooper = Looper.myLooper();
        if (myLooper == ((SystemHandlerWrapper) this.b).a.getLooper()) {
            return this.d;
        }
        if (myLooper == ((SystemHandlerWrapper) this.a).a.getLooper()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        return this.e;
    }

    public final void b(Runnable runnable) {
        SystemHandlerWrapper systemHandlerWrapper = (SystemHandlerWrapper) this.a;
        if (!systemHandlerWrapper.a.getLooper().getThread().isAlive()) {
            return;
        }
        systemHandlerWrapper.d(runnable);
    }

    public final void c(Object obj) {
        this.e = obj;
        b4 b4Var = new b4(this, obj, 0);
        SystemHandlerWrapper systemHandlerWrapper = (SystemHandlerWrapper) this.b;
        if (!systemHandlerWrapper.a.getLooper().getThread().isAlive()) {
            return;
        }
        systemHandlerWrapper.d(b4Var);
    }

    public final void d(d7 d7Var, d7 d7Var2) {
        boolean z;
        int i = 0;
        if (Looper.myLooper() == ((SystemHandlerWrapper) this.b).a.getLooper()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        this.f++;
        b(new a(i, this, d7Var2));
        Object apply = d7Var.apply(this.d);
        Object obj = this.d;
        this.d = apply;
        if (!obj.equals(apply)) {
            this.c.a(obj, apply);
        }
    }
}
