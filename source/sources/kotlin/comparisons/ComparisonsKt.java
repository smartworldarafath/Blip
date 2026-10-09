package kotlin.comparisons;

import defpackage.c5;
import defpackage.u2;
import kotlin.jvm.functions.Function1;

/* loaded from: classes.dex */
public abstract class ComparisonsKt extends ComparisonsKt___ComparisonsKt {
    public static c5 a(Function1... function1Arr) {
        if (function1Arr.length > 0) {
            return new c5(1, function1Arr);
        }
        u2.g("Failed requirement.");
        return null;
    }

    public static int b(Comparable comparable, Comparable comparable2) {
        if (comparable == null) {
            if (comparable2 == null) {
                return 0;
            }
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }
}
