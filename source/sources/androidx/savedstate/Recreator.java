package androidx.savedstate;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.LegacySavedStateHandleController;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Recreator implements LifecycleEventObserver {
    public final SavedStateRegistryOwner j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {
        public final LinkedHashSet a = new LinkedHashSet();

        public SavedStateProvider(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.c("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
        public final Bundle a() {
            Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            SavedStateWriter.a(a, "classes_to_restore", CollectionsKt.X(this.a));
            return a;
        }
    }

    public Recreator(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.j = savedStateRegistryOwner;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_CREATE) {
            lifecycleOwner.g().b(this);
            SavedStateRegistryOwner savedStateRegistryOwner = this.j;
            Bundle a = savedStateRegistryOwner.f().a("androidx.savedstate.Restarter");
            if (a != null) {
                ArrayList<String> stringArrayList = a.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    for (String str : stringArrayList) {
                        try {
                            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
                            asSubclass.getClass();
                            try {
                                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                                declaredConstructor.setAccessible(true);
                                try {
                                    Object newInstance = declaredConstructor.newInstance(null);
                                    newInstance.getClass();
                                    if (savedStateRegistryOwner instanceof ViewModelStoreOwner) {
                                        ViewModelStore e = ((ViewModelStoreOwner) savedStateRegistryOwner).e();
                                        SavedStateRegistry f = savedStateRegistryOwner.f();
                                        LinkedHashMap linkedHashMap = e.a;
                                        LinkedHashMap linkedHashMap2 = e.a;
                                        Iterator it = CollectionsKt.a0(linkedHashMap.keySet()).iterator();
                                        while (it.hasNext()) {
                                            ViewModel viewModel = (ViewModel) linkedHashMap2.get(it.next());
                                            if (viewModel != null) {
                                                LegacySavedStateHandleController.a(viewModel, f, savedStateRegistryOwner.g());
                                            }
                                        }
                                        if (!CollectionsKt.a0(linkedHashMap2.keySet()).isEmpty()) {
                                            f.d();
                                        }
                                    } else {
                                        k8.s(savedStateRegistryOwner, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ");
                                        return;
                                    }
                                } catch (Exception e2) {
                                    u2.k(jb.f("Failed to instantiate ", str), e2);
                                    return;
                                }
                            } catch (NoSuchMethodException e3) {
                                throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
                            }
                        } catch (ClassNotFoundException e4) {
                            u2.k(q.i("Class ", str, " wasn't found"), e4);
                            return;
                        }
                    }
                    return;
                }
                u2.l("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                return;
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
