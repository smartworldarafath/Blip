package androidx.compose.ui;

import defpackage.k0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CombinedModifier implements Modifier {
    public static final /* synthetic */ int d = 0;
    public final Modifier b;
    public final Modifier c;

    public CombinedModifier(Modifier modifier, Modifier modifier2) {
        this.b = modifier;
        this.c = modifier2;
    }

    @Override // androidx.compose.ui.Modifier
    public final Object b(Object obj, Function2 function2) {
        return this.c.b(this.b.b(obj, function2), function2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CombinedModifier) {
            CombinedModifier combinedModifier = (CombinedModifier) obj;
            if (this.b.equals(combinedModifier.b) && Intrinsics.a(this.c, combinedModifier.c)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.compose.ui.Modifier
    public final boolean f(Function1 function1) {
        if (this.b.f(function1) && this.c.f(function1)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (this.c.hashCode() * 31) + this.b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = (StringBuilder) b(new StringBuilder("["), new k0(9));
        sb.append("]");
        return sb.toString();
    }
}
