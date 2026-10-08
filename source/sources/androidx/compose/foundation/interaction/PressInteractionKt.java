package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PressInteractionKt {
    public static final MutableState a(MutableInteractionSource mutableInteractionSource, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = SnapshotStateKt.g(Boolean.FALSE);
            gapComposer.g0(K);
        }
        MutableState mutableState = (MutableState) K;
        Object K2 = gapComposer.K();
        if (K2 == composer$Companion$Empty$1) {
            K2 = new PressInteractionKt$collectIsPressedAsState$1$1(mutableInteractionSource, mutableState, null);
            gapComposer.g0(K2);
        }
        EffectsKt.e(gapComposer, mutableInteractionSource, (Function2) K2);
        return mutableState;
    }
}
