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
public abstract class FocusInteractionKt {
    public static final MutableState a(InteractionSource interactionSource, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = SnapshotStateKt.g(Boolean.FALSE);
            gapComposer.g0(K);
        }
        MutableState mutableState = (MutableState) K;
        if ((((i & 14) ^ 6) > 4 && gapComposer.f(interactionSource)) || (i & 6) == 4) {
            z = true;
        } else {
            z = false;
        }
        Object K2 = gapComposer.K();
        if (z || K2 == composer$Companion$Empty$1) {
            K2 = new FocusInteractionKt$collectIsFocusedAsState$1$1(interactionSource, mutableState, null);
            gapComposer.g0(K2);
        }
        EffectsKt.e(gapComposer, interactionSource, (Function2) K2);
        return mutableState;
    }
}
