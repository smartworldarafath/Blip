package androidx.compose.runtime;

import defpackage.j6;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComputedProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {
    public final ComputedValueHolder b;

    public ComputedProvidableCompositionLocal(Function1 function1) {
        super(new j6(12));
        this.b = new ComputedValueHolder(function1);
    }

    @Override // androidx.compose.runtime.CompositionLocal
    public final ValueHolder a() {
        return this.b;
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ProvidedValue b(Object obj) {
        boolean z;
        if (obj == null) {
            z = true;
        } else {
            z = false;
        }
        return new ProvidedValue(this, obj, z, null, null, true);
    }
}
