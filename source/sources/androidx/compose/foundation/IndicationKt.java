package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IndicationKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new Object());

    public static final Modifier a(Modifier modifier, final InteractionSource interactionSource, final Indication indication) {
        if (indication == null) {
            return modifier;
        }
        if (indication instanceof IndicationNodeFactory) {
            return modifier.l(new IndicationModifierElement(interactionSource, (IndicationNodeFactory) indication));
        }
        return ComposedModifierKt.a(modifier, new Function3(interactionSource) { // from class: androidx.compose.foundation.d
            @Override // kotlin.jvm.functions.Function3
            public final Object f(Object obj, Object obj2, Object obj3) {
                ((Integer) obj3).getClass();
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = IndicationKt.a;
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.W(-353972293);
                Indication.this.getClass();
                gapComposer.W(1257603829);
                gapComposer.p(false);
                boolean f = gapComposer.f(NoIndicationInstance.a);
                Object K = gapComposer.K();
                if (f || K == Composer.Companion.a) {
                    K = new Object();
                    gapComposer.g0(K);
                }
                IndicationModifier indicationModifier = (IndicationModifier) K;
                gapComposer.p(false);
                return indicationModifier;
            }
        });
    }
}
