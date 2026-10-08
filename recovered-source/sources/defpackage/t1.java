package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1;
import androidx.compose.ui.window.PopupLayout;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class t1 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PopupLayout k;
    public final /* synthetic */ MutableState l;

    public /* synthetic */ t1(PopupLayout popupLayout, MutableState mutableState, int i) {
        this.j = i;
        this.k = popupLayout;
        this.l = mutableState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        float f;
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.l;
        PopupLayout popupLayout = this.k;
        int i2 = 1;
        boolean z2 = false;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.a;
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    CompositionLocalKt.a(AndroidPopup_androidKt.b.b(Boolean.TRUE), ComposableLambdaKt.b(1022273628, new t1(popupLayout, mutableState, i2), gapComposer), gapComposer, 56);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidPopup_androidKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z)) {
                    Object K = gapComposer2.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (K == composer$Companion$Empty$1) {
                        K = new h(9);
                        gapComposer2.g0(K);
                    }
                    Modifier a = SemanticsModifierKt.a(Modifier.Companion.b, false, (Function1) K);
                    boolean h = gapComposer2.h(popupLayout);
                    Object K2 = gapComposer2.K();
                    if (h || K2 == composer$Companion$Empty$1) {
                        K2 = new s1(popupLayout, null == true ? 1 : 0);
                        gapComposer2.g0(K2);
                    }
                    Modifier a2 = OnRemeasuredModifierKt.a(a, (Function1) K2);
                    if (popupLayout.getCanCalculatePosition()) {
                        f = 1.0f;
                    } else {
                        f = 0.0f;
                    }
                    Modifier a3 = AlphaKt.a(a2, f);
                    Function2 function2 = (Function2) mutableState.getValue();
                    Object K3 = gapComposer2.K();
                    if (K3 == composer$Companion$Empty$1) {
                        K3 = AndroidPopup_androidKt$SimpleStack$1$1.a;
                        gapComposer2.g0(K3);
                    }
                    MeasurePolicy measurePolicy = (MeasurePolicy) K3;
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, a3);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, measurePolicy, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                    function2.n(gapComposer2, 0);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
