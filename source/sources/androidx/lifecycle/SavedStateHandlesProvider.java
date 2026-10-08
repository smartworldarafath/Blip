package androidx.lifecycle;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import defpackage.kb;
import java.util.Arrays;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SavedStateHandlesProvider implements SavedStateRegistry.SavedStateProvider {
    public final SavedStateRegistry a;
    public boolean b;
    public Bundle c;
    public final Lazy d;

    public SavedStateHandlesProvider(SavedStateRegistry savedStateRegistry, ViewModelStoreOwner viewModelStoreOwner) {
        savedStateRegistry.getClass();
        this.a = savedStateRegistry;
        this.d = LazyKt.b(new kb(11, viewModelStoreOwner));
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle a() {
        Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle = this.c;
        if (bundle != null) {
            a.putAll(bundle);
        }
        for (Map.Entry entry : ((SavedStateHandlesVM) this.d.getValue()).b.entrySet()) {
            String str = (String) entry.getKey();
            Bundle a2 = ((SavedStateHandle) entry.getValue()).b.e.a();
            if (!a2.isEmpty()) {
                str.getClass();
                a.putBundle(str, a2);
            }
        }
        this.b = false;
        return a;
    }

    public final void b() {
        if (!this.b) {
            Bundle a = this.a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
            Bundle a2 = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
            Bundle bundle = this.c;
            if (bundle != null) {
                a2.putAll(bundle);
            }
            if (a != null) {
                a2.putAll(a);
            }
            this.c = a2;
            this.b = true;
        }
    }
}
