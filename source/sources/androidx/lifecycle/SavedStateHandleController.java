package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateHandleController implements LifecycleEventObserver, AutoCloseable {
    public final String j;
    public final SavedStateHandle k;
    public boolean l;

    public SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.j = str;
        this.k = savedStateHandle;
    }

    public final void a(Lifecycle lifecycle, SavedStateRegistry savedStateRegistry) {
        savedStateRegistry.getClass();
        lifecycle.getClass();
        if (!this.l) {
            this.l = true;
            lifecycle.a(this);
            savedStateRegistry.c(this.j, this.k.b.e);
            return;
        }
        u2.l("Already attached to lifecycleOwner");
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.l = false;
            lifecycleOwner.g().b(this);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }
}
