package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.AndroidAlertDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.controls.AndroidSwitchKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.settings.ComposableSingletons$SettingsScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ef implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;
    public final /* synthetic */ Function1 l;

    public /* synthetic */ ef(int i, MutableState mutableState, Function1 function1) {
        this.j = i;
        this.k = mutableState;
        this.l = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        boolean z2 = false;
        Function1 function1 = this.l;
        MutableState mutableState = this.k;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    RowMeasurePolicy a = RowKt.a(Arrangement.a, Alignment.Companion.k, gapComposer, 48);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier c = ComposedModifierKt.c(gapComposer, companion);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(LayoutNode.b0);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer);
                    Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                    ListRowKt.c(null, "Searchable by name", "Help people find you on Blip", 0L, gapComposer, 432, 9);
                    SpacerKt.a(gapComposer, SizeKt.d(companion, 1.0f));
                    Modifier c2 = OffsetKt.c(companion, 0.0f, 2);
                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                    boolean f = gapComposer.f(mutableState) | gapComposer.f(function1);
                    Object K = gapComposer.K();
                    if (f || K == composer$Companion$Empty$1) {
                        K = new lc(mutableState, function1);
                        gapComposer.g0(K);
                    }
                    AndroidSwitchKt.a(booleanValue, (Function1) K, c2, false, null, gapComposer, 384);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    ListRowKt.c(null, "Sign out", null, Color.e, gapComposer2, 3120, 5);
                    if (((Boolean) mutableState.getValue()).booleanValue()) {
                        gapComposer2.W(-1651653356);
                        boolean f2 = gapComposer2.f(mutableState);
                        Object K2 = gapComposer2.K();
                        if (f2 || K2 == composer$Companion$Empty$1) {
                            K2 = new cd(mutableState, 21);
                            gapComposer2.g0(K2);
                        }
                        AndroidAlertDialog_androidKt.a((Function0) K2, ComposableLambdaKt.b(1300695898, new ea(function1, i2), gapComposer2), null, ComposableLambdaKt.b(1184378460, new a1(mutableState, 3), gapComposer2), ComposableSingletons$SettingsScreenKt.m, ComposableSingletons$SettingsScreenKt.n, null, 0L, 0L, null, gapComposer2, 224304);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(-1649222987);
                        gapComposer2.p(false);
                    }
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
