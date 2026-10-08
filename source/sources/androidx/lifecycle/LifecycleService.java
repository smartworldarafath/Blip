package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.Lifecycle;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LifecycleService extends Service implements LifecycleOwner {
    public final ServiceLifecycleDispatcher j = new ServiceLifecycleDispatcher(this);

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        return this.j.a;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getClass();
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.j;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.j;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.j;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_STOP);
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i) {
        ServiceLifecycleDispatcher serviceLifecycleDispatcher = this.j;
        serviceLifecycleDispatcher.getClass();
        serviceLifecycleDispatcher.a(Lifecycle.Event.ON_START);
        super.onStart(intent, i);
    }
}
