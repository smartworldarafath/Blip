package kotlin;

import defpackage.k8;
import kotlin.jvm.functions.Function0;

/* loaded from: classes.dex */
public abstract class LazyKt extends LazyKt__LazyKt {
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlin.SafePublicationLazyImpl, java.lang.Object, kotlin.Lazy] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, kotlin.UnsafeLazyImpl, kotlin.Lazy] */
    public static Lazy a(LazyThreadSafetyMode lazyThreadSafetyMode, Function0 function0) {
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.a;
        function0.getClass();
        int ordinal = lazyThreadSafetyMode.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    ?? obj = new Object();
                    obj.j = function0;
                    obj.k = uninitialized_value;
                    return obj;
                }
                k8.e();
                return null;
            }
            ?? obj2 = new Object();
            obj2.j = function0;
            obj2.k = uninitialized_value;
            return obj2;
        }
        return new SynchronizedLazyImpl(function0);
    }

    public static Lazy b(Function0 function0) {
        function0.getClass();
        return new SynchronizedLazyImpl(function0);
    }
}
