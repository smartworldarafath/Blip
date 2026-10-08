package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.LegacySavedStateHandleController;
import androidx.savedstate.Recreator;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateRegistry {
    public final SavedStateRegistryImpl a;
    public Recreator.SavedStateProvider b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AutoRecreated {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SavedStateProvider {
        Bundle a();
    }

    public SavedStateRegistry(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.a = savedStateRegistryImpl;
    }

    public final Bundle a(String str) {
        Bundle bundle;
        SavedStateRegistryImpl savedStateRegistryImpl = this.a;
        if (savedStateRegistryImpl.g) {
            Bundle bundle2 = savedStateRegistryImpl.f;
            if (bundle2 == null) {
                return null;
            }
            if (bundle2.containsKey(str)) {
                bundle = bundle2.getBundle(str);
                if (bundle == null) {
                    SavedStateReaderKt.a(str);
                    throw null;
                }
            } else {
                bundle = null;
            }
            bundle2.remove(str);
            if (bundle2.isEmpty()) {
                savedStateRegistryImpl.f = null;
            }
            return bundle;
        }
        u2.l("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
        return null;
    }

    public final SavedStateProvider b(String str) {
        SavedStateProvider savedStateProvider;
        SavedStateRegistryImpl savedStateRegistryImpl = this.a;
        synchronized (savedStateRegistryImpl.c) {
            savedStateProvider = (SavedStateProvider) savedStateRegistryImpl.d.e(str);
        }
        return savedStateProvider;
    }

    public final void c(String str, SavedStateProvider savedStateProvider) {
        savedStateProvider.getClass();
        SavedStateRegistryImpl savedStateRegistryImpl = this.a;
        synchronized (savedStateRegistryImpl.c) {
            if (!savedStateRegistryImpl.d.b(str)) {
                savedStateRegistryImpl.d.o(str, savedStateProvider);
            } else {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
        }
    }

    public final void d() {
        if (this.a.h) {
            Recreator.SavedStateProvider savedStateProvider = this.b;
            if (savedStateProvider == null) {
                savedStateProvider = new Recreator.SavedStateProvider(this);
            }
            this.b = savedStateProvider;
            try {
                LegacySavedStateHandleController.OnRecreation.class.getDeclaredConstructor(null);
                Recreator.SavedStateProvider savedStateProvider2 = this.b;
                if (savedStateProvider2 != null) {
                    savedStateProvider2.a.add(LegacySavedStateHandleController.OnRecreation.class.getName());
                    return;
                }
                return;
            } catch (NoSuchMethodException e) {
                throw new IllegalArgumentException("Class " + LegacySavedStateHandleController.OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
            }
        }
        u2.l("Can not perform this action after onSaveInstanceState");
    }
}
