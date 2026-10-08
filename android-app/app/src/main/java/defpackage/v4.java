package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.ButtonDefaults;
import androidx.compose.material.MaterialTheme;
import androidx.compose.material.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v4 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PaddingValues k;
    public final /* synthetic */ Function3 l;

    public /* synthetic */ v4(PaddingValues paddingValues, Function3 function3, int i) {
        this.j = i;
        this.k = paddingValues;
        this.l = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        boolean z = false;
        Function3 function3 = this.l;
        PaddingValues paddingValues = this.k;
        int i2 = 1;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    TextKt.a(MaterialTheme.c(gapComposer).k, ComposableLambdaKt.b(165539859, new v4(paddingValues, function3, i2), gapComposer), gapComposer, 48);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer;
                if (gapComposer2.N(intValue & 1, z)) {
                    Modifier c = PaddingKt.c(SizeKt.a(Modifier.Companion.b, ButtonDefaults.b, ButtonDefaults.c), paddingValues);
                    RowMeasurePolicy a = RowKt.a(Arrangement.c, Alignment.Companion.k, gapComposer2, 54);
                    int a2 = ComposablesKt.a(gapComposer2);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer2, c);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    if (gapComposer2.S || !Intrinsics.a(gapComposer2.K(), Integer.valueOf(a2))) {
                        q.r(a2, gapComposer2, a2, ComposeUiNode.Companion.e);
                    }
                    Updater.c(gapComposer2, c2, ComposeUiNode.Companion.b);
                    function3.f(RowScopeInstance.a, gapComposer2, 6);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
