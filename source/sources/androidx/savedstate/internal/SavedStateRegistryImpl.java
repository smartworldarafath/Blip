package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.h5;
import defpackage.kb;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateRegistryImpl {
    public final SavedStateRegistryOwner a;
    public final kb b;
    public final SynchronizedObject c = new Object();
    public final MutableScatterMap d;
    public boolean e;
    public Bundle f;
    public boolean g;
    public boolean h;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.savedstate.internal.SynchronizedObject, java.lang.Object] */
    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, kb kbVar) {
        this.a = savedStateRegistryOwner;
        this.b = kbVar;
        long[] jArr = ScatterMapKt.a;
        this.d = new MutableScatterMap();
        this.h = true;
    }

    public final void a() {
        SavedStateRegistryOwner savedStateRegistryOwner = this.a;
        if (((LifecycleRegistry) savedStateRegistryOwner.g()).i == Lifecycle.State.k) {
            if (!this.e) {
                this.b.a();
                savedStateRegistryOwner.g().a(new h5(3, this));
                this.e = true;
                return;
            }
            u2.l("SavedStateRegistry was already attached.");
            return;
        }
        u2.l("Restarter must be created only during owner's initialization stage");
    }
}
