package defpackage;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import net.blip.android.ui.components.DividerKt;
import net.blip.android.ui.home.ComposableSingletons$HomeTopBarKt;
import net.blip.android.ui.home.HomeTopBarKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o9 implements Function3 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ Function0 k;
    public final /* synthetic */ Function0 l;
    public final /* synthetic */ boolean m;
    public final /* synthetic */ Function0 n;
    public final /* synthetic */ Object o;

    public /* synthetic */ o9(MutableState mutableState, Function0 function0, Function0 function02, Function0 function03, boolean z) {
        this.k = function0;
        this.m = z;
        this.l = function02;
        this.n = function03;
        this.o = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj4 = Composer.Companion.a;
        Object obj5 = this.o;
        Function0 function0 = this.k;
        switch (i) {
            case 0:
                MutableState mutableState = (MutableState) obj5;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if ((intValue & 17) != 16) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    boolean f = gapComposer.f(function0);
                    Object K = gapComposer.K();
                    if (f || K == obj4) {
                        K = new k1(function0, mutableState, 2);
                        gapComposer.g0(K);
                    }
                    AndroidMenu_androidKt.b((Function0) K, null, this.m, null, ComposableSingletons$HomeTopBarKt.b, gapComposer, 196608, 26);
                    DividerKt.a(null, gapComposer, 0, 1);
                    Function0 function02 = this.l;
                    boolean f2 = gapComposer.f(function02);
                    Object K2 = gapComposer.K();
                    if (f2 || K2 == obj4) {
                        K2 = new k1(function02, mutableState, 3);
                        gapComposer.g0(K2);
                    }
                    AndroidMenu_androidKt.b((Function0) K2, null, false, null, ComposableSingletons$HomeTopBarKt.c, gapComposer, 196608, 30);
                    Function0 function03 = this.n;
                    boolean f3 = gapComposer.f(function03);
                    Object K3 = gapComposer.K();
                    if (f3 || K3 == obj4) {
                        K3 = new k1(function03, mutableState, 4);
                        gapComposer.g0(K3);
                    }
                    AndroidMenu_androidKt.b((Function0) K3, null, false, null, ComposableSingletons$HomeTopBarKt.d, gapComposer, 196608, 30);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Function0 function04 = (Function0) obj5;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                if ((intValue2 & 17) != 16) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    Modifier e = SizeKt.e(PaddingKt.h(Modifier.Companion.b, 24.0f, 0.0f, 8.0f, 0.0f, 10), 58.0f);
                    RowMeasurePolicy a = RowKt.a(Arrangement.a, Alignment.Companion.k, gapComposer2, 48);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c = ComposedModifierKt.c(gapComposer2, e);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                    HomeTopBarKt.a(0, gapComposer2);
                    SpacerKt.a(gapComposer2, RowScopeInstance.a.a());
                    boolean f4 = gapComposer2.f(function0);
                    Object K4 = gapComposer2.K();
                    if (f4 || K4 == obj4) {
                        K4 = new s(3, function0);
                        gapComposer2.g0(K4);
                    }
                    IconButtonKt.a((Function0) K4, null, false, ComposableSingletons$HomeTopBarKt.a, gapComposer2, 24576, 14);
                    Object K5 = gapComposer2.K();
                    if (K5 == obj4) {
                        K5 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.g0(K5);
                    }
                    MutableState mutableState2 = (MutableState) K5;
                    Object K6 = gapComposer2.K();
                    if (K6 == obj4) {
                        K6 = new o1(mutableState2, 17);
                        gapComposer2.g0(K6);
                    }
                    IconButtonKt.a((Function0) K6, null, false, ComposableLambdaKt.b(913191064, new q9(mutableState2, this.l, this.n, function04, this.m), gapComposer2), gapComposer2, 24582, 14);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ o9(Function0 function0, Function0 function02, boolean z, Function0 function03, Function0 function04) {
        this.k = function0;
        this.l = function02;
        this.m = z;
        this.n = function03;
        this.o = function04;
    }
}
