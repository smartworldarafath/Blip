package androidx.compose.runtime;

import defpackage.f7;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProvidedValue<T> {
    public final ProvidableCompositionLocal a;
    public final boolean b;
    public final SnapshotMutationPolicy c;
    public final Function1 d;
    public final boolean e;
    public final Object f;
    public boolean g = true;

    public ProvidedValue(ProvidableCompositionLocal providableCompositionLocal, Object obj, boolean z, SnapshotMutationPolicy snapshotMutationPolicy, Function1 function1, boolean z2) {
        this.a = providableCompositionLocal;
        this.b = z;
        this.c = snapshotMutationPolicy;
        this.d = function1;
        this.e = z2;
        this.f = obj;
    }

    public final Object a() {
        if (this.b) {
            return null;
        }
        Object obj = this.f;
        if (obj != null) {
            return obj;
        }
        ComposerKt.b("Unexpected form of a provided value");
        f7.h();
        return null;
    }
}
