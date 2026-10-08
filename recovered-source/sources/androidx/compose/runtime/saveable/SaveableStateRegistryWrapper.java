package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.kb;
import java.util.Map;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {
    public final /* synthetic */ SaveableStateRegistry j;
    public LifecycleRegistry k;
    public SavedStateRegistryController l;

    public SaveableStateRegistryWrapper(SaveableStateRegistry saveableStateRegistry) {
        Bundle bundle;
        this.j = saveableStateRegistry;
        Object d = ((SaveableStateRegistryImpl) saveableStateRegistry).d("androidx.savedstate.SavedStateRegistry");
        if (d instanceof Bundle) {
            bundle = (Bundle) d;
        } else {
            bundle = null;
        }
        if (bundle != null && this.l == null) {
            SavedStateRegistryController a = SavedStateRegistryController.Companion.a(this);
            this.l = a;
            a.b(bundle);
        }
        e("androidx.savedstate.SavedStateRegistry", new kb(10, this));
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean b(Object obj) {
        return ((SaveableStateRegistryImpl) this.j).b(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map c() {
        return ((SaveableStateRegistryImpl) this.j).c();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object d(String str) {
        return ((SaveableStateRegistryImpl) this.j).d(str);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry e(String str, Function0 function0) {
        return ((SaveableStateRegistryImpl) this.j).e(str, function0);
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry f() {
        SavedStateRegistryController savedStateRegistryController = this.l;
        if (savedStateRegistryController == null) {
            savedStateRegistryController = SavedStateRegistryController.Companion.a(this);
            this.l = savedStateRegistryController;
            savedStateRegistryController.b(null);
        }
        return savedStateRegistryController.b;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle g() {
        LifecycleRegistry lifecycleRegistry = this.k;
        if (lifecycleRegistry == null) {
            LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this, false);
            this.k = lifecycleRegistry2;
            return lifecycleRegistry2;
        }
        return lifecycleRegistry;
    }
}
