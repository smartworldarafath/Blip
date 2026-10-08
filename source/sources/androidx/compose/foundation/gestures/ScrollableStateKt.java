package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.i2;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollableStateKt {
    public static final ScrollableState a(Function1 function1) {
        return new DefaultScrollableState(function1);
    }

    public static final ScrollableState b(Function1 function1, GapComposer gapComposer) {
        MutableState k = SnapshotStateKt.k(function1, gapComposer);
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            DefaultScrollableState defaultScrollableState = new DefaultScrollableState(new i2(k, 14));
            gapComposer.g0(defaultScrollableState);
            K = defaultScrollableState;
        }
        return (ScrollableState) K;
    }
}
