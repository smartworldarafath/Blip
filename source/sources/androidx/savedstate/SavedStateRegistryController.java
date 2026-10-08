package androidx.savedstate;

import android.os.Bundle;
import androidx.collection.MutableScatterMap;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import defpackage.k8;
import defpackage.kb;
import defpackage.u2;
import java.util.Arrays;
import kotlin.Pair;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateRegistryController {
    public final SavedStateRegistryImpl a;
    public final SavedStateRegistry b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static SavedStateRegistryController a(SavedStateRegistryOwner savedStateRegistryOwner) {
            return new SavedStateRegistryController(new SavedStateRegistryImpl(savedStateRegistryOwner, new kb(12, savedStateRegistryOwner)));
        }
    }

    public SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.a = savedStateRegistryImpl;
        this.b = new SavedStateRegistry(savedStateRegistryImpl);
    }

    public final void a() {
        this.a.a();
    }

    public final void b(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.a;
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryImpl.a;
        if (!savedStateRegistryImpl.e) {
            savedStateRegistryImpl.a();
        }
        if (((LifecycleRegistry) savedStateRegistryOwner.g()).i.compareTo(Lifecycle.State.m) < 0) {
            if (!savedStateRegistryImpl.g) {
                Bundle bundle2 = null;
                if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
                    Bundle bundle3 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                    if (bundle3 != null) {
                        bundle2 = bundle3;
                    } else {
                        SavedStateReaderKt.a("androidx.lifecycle.BundlableSavedStateRegistry.key");
                        throw null;
                    }
                }
                savedStateRegistryImpl.f = bundle2;
                savedStateRegistryImpl.g = true;
                return;
            }
            u2.l("SavedStateRegistry was already restored.");
            return;
        }
        k8.s(((LifecycleRegistry) savedStateRegistryOwner.g()).i, "performRestore cannot be called when owner is ");
    }

    public final void c(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.a;
        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle2 = savedStateRegistryImpl.f;
        if (bundle2 != null) {
            a.putAll(bundle2);
        }
        synchronized (savedStateRegistryImpl.c) {
            MutableScatterMap mutableScatterMap = savedStateRegistryImpl.d;
            Object[] objArr = mutableScatterMap.b;
            Object[] objArr2 = mutableScatterMap.c;
            long[] jArr = mutableScatterMap.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                int i4 = (i << 3) + i3;
                                String str = (String) objArr[i4];
                                Bundle a2 = ((SavedStateRegistry.SavedStateProvider) objArr2[i4]).a();
                                str.getClass();
                                a2.getClass();
                                a.putBundle(str, a2);
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        if (!a.isEmpty()) {
            bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", a);
        }
    }
}
