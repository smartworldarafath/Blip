package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.k8;
import defpackage.u2;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SavedStateHandleSupport {
    public static final SavedStateHandleSupport$special$$inlined$Key$1 a = new Object();
    public static final SavedStateHandleSupport$special$$inlined$Key$2 b = new Object();
    public static final SavedStateHandleSupport$special$$inlined$Key$3 c = new Object();

    public static final SavedStateHandle a(CreationExtras creationExtras) {
        SavedStateHandlesProvider savedStateHandlesProvider;
        creationExtras.getClass();
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) creationExtras.a(a);
        Bundle bundle = null;
        if (savedStateRegistryOwner != null) {
            ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) creationExtras.a(b);
            if (viewModelStoreOwner != null) {
                Bundle bundle2 = (Bundle) creationExtras.a(c);
                String str = (String) creationExtras.a(ViewModelProvider.b);
                if (str != null) {
                    SavedStateRegistry.SavedStateProvider b2 = savedStateRegistryOwner.f().b("androidx.lifecycle.internal.SavedStateHandlesProvider");
                    if (b2 instanceof SavedStateHandlesProvider) {
                        savedStateHandlesProvider = (SavedStateHandlesProvider) b2;
                    } else {
                        savedStateHandlesProvider = null;
                    }
                    if (savedStateHandlesProvider != null) {
                        LinkedHashMap linkedHashMap = c(viewModelStoreOwner).b;
                        SavedStateHandle savedStateHandle = (SavedStateHandle) linkedHashMap.get(str);
                        if (savedStateHandle == null) {
                            savedStateHandlesProvider.b();
                            Bundle bundle3 = savedStateHandlesProvider.c;
                            if (bundle3 != null && bundle3.containsKey(str)) {
                                Bundle bundle4 = bundle3.getBundle(str);
                                if (bundle4 == null) {
                                    bundle4 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                                }
                                bundle3.remove(str);
                                if (bundle3.isEmpty()) {
                                    savedStateHandlesProvider.c = null;
                                }
                                bundle = bundle4;
                            }
                            SavedStateHandle a2 = SavedStateHandle.Companion.a(bundle, bundle2);
                            linkedHashMap.put(str, a2);
                            return a2;
                        }
                        return savedStateHandle;
                    }
                    u2.l("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
                    return null;
                }
                u2.g("CreationExtras must have a value by `VIEW_MODEL_KEY`");
                return null;
            }
            u2.g("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        u2.g("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
        return null;
    }

    public static final void b(SavedStateRegistryOwner savedStateRegistryOwner) {
        Lifecycle.State state = ((LifecycleRegistry) savedStateRegistryOwner.g()).i;
        if (state != Lifecycle.State.k && state != Lifecycle.State.l) {
            k8.r("Failed to enable `SavedStateHandle` for `", savedStateRegistryOwner, "`. The `Lifecycle.State` must be `INITIALIZED` or `CREATED`, but was `", state, "`. You must call `enableSavedStateHandles()` before the `Lifecycle.State` moves to `STARTED`.");
        } else if (savedStateRegistryOwner.f().b("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(savedStateRegistryOwner.f(), (ViewModelStoreOwner) savedStateRegistryOwner);
            savedStateRegistryOwner.f().c("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            savedStateRegistryOwner.g().a(new SavedStateHandleAttacher(savedStateHandlesProvider));
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.ViewModelProvider$Factory, java.lang.Object] */
    public static final SavedStateHandlesVM c(ViewModelStoreOwner viewModelStoreOwner) {
        ?? obj = new Object();
        CreationExtras a2 = ViewModelStoreOwnerDefaults.a(viewModelStoreOwner);
        a2.getClass();
        ViewModelProvider viewModelProvider = new ViewModelProvider(viewModelStoreOwner.e(), obj, a2);
        return (SavedStateHandlesVM) viewModelProvider.a.a(Reflection.a(SavedStateHandlesVM.class), "androidx.lifecycle.internal.SavedStateHandlesVM");
    }
}
