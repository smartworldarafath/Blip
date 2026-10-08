package androidx.compose.ui.platform;

import androidx.compose.runtime.saveable.SaveableStateRegistry;
import defpackage.x7;
import java.util.Map;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DisposableSaveableStateRegistry implements SaveableStateRegistry {
    public final /* synthetic */ SaveableStateRegistry j;
    public final x7 k;

    public DisposableSaveableStateRegistry(SaveableStateRegistry saveableStateRegistry, x7 x7Var) {
        this.j = saveableStateRegistry;
        this.k = x7Var;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean b(Object obj) {
        return this.j.b(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map c() {
        return this.j.c();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object d(String str) {
        return this.j.d(str);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry e(String str, Function0 function0) {
        return this.j.e(str, function0);
    }
}
