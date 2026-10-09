package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import java.util.ArrayList;
import kotlin.Function;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposableLambdaKt {
    public static final int a(int i, int i2) {
        return i << (((i2 % 10) * 3) + 1);
    }

    public static final ComposableLambdaImpl b(int i, Function function, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            K = new ComposableLambdaImpl(i, true, function);
            gapComposer.g0(K);
        }
        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) K;
        if (!composableLambdaImpl.l.equals(function)) {
            composableLambdaImpl.l = function;
            if (composableLambdaImpl.k) {
                RecomposeScopeImpl recomposeScopeImpl = composableLambdaImpl.m;
                if (recomposeScopeImpl != null) {
                    RecomposeScopeOwner recomposeScopeOwner = recomposeScopeImpl.a;
                    if (recomposeScopeOwner != null) {
                        recomposeScopeOwner.c(recomposeScopeImpl, null);
                    }
                    composableLambdaImpl.m = null;
                }
                ArrayList arrayList = composableLambdaImpl.n;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) ((RecomposeScope) arrayList.get(i2));
                        RecomposeScopeOwner recomposeScopeOwner2 = recomposeScopeImpl2.a;
                        if (recomposeScopeOwner2 != null) {
                            recomposeScopeOwner2.c(recomposeScopeImpl2, null);
                        }
                    }
                    arrayList.clear();
                }
            }
        }
        return composableLambdaImpl;
    }

    public static final boolean c(RecomposeScope recomposeScope, RecomposeScopeImpl recomposeScopeImpl) {
        if (recomposeScope != null) {
            if (recomposeScope instanceof RecomposeScopeImpl) {
                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) recomposeScope;
                if (recomposeScopeImpl2.b() && recomposeScope != recomposeScopeImpl && !Intrinsics.a(recomposeScopeImpl2.c, recomposeScopeImpl.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
