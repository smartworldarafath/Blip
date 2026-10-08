package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.components.AndroidAvatarEditorKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.settings.ComposableSingletons$SettingsProfileScreenKt;
import net.blip.android.ui.settings.SettingsComposablesKt;
import net.blip.android.ui.settings.SettingsPeerHeaderKt;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ff implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;
    public final /* synthetic */ AuthScope l;

    public /* synthetic */ ff(Function1 function1, AuthScope authScope) {
        this.j = 1;
        this.k = function1;
        this.l = authScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Modifier.Companion companion = Modifier.Companion.b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Unit unit = Unit.a;
        Function1 function1 = this.k;
        AuthScope authScope = this.l;
        boolean z3 = false;
        boolean z4 = false;
        int i2 = 2;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    Modifier d = PaddingKt.d(WindowInsetsPadding_androidKt.c(ScrollKt.b(PaddingKt.h(BackgroundKt.b(SizeKt.c(companion, 1.0f), ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).i, RectangleShapeKt.a), 0.0f, 48.0f, 0.0f, 0.0f, 13), ScrollKt.a(gapComposer))), 8.0f);
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer, 0);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, d);
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
                    SettingsPeerHeaderKt.a(null, new Peer.User(authScope.a), ComposableLambdaKt.b(1503728810, new ff(function1, authScope), gapComposer), gapComposer, 384, 1);
                    SettingsComposablesKt.a(0, gapComposer);
                    SettingsComposablesKt.d(null, null, ComposableLambdaKt.b(2107402870, new ff(authScope, function1, i2), gapComposer), gapComposer, 384, 3);
                    SettingsComposablesKt.a(0, gapComposer);
                    SettingsComposablesKt.d(null, null, ComposableLambdaKt.b(-1994744865, new z5(authScope, 3), gapComposer), gapComposer, 384, 3);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(1 & intValue2, z3)) {
                    Modifier k = SizeKt.k(companion, 96.0f);
                    boolean f = gapComposer2.f(function1);
                    Object K = gapComposer2.K();
                    if (f || K == composer$Companion$Empty$1) {
                        K = new c8(function1, 5);
                        gapComposer2.g0(K);
                    }
                    AndroidAvatarEditorKt.a(k, (Function1) K, authScope.a, gapComposer2, 6);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z2)) {
                    Object K2 = gapComposer3.K();
                    Object obj3 = K2;
                    if (K2 == composer$Companion$Empty$1) {
                        MutableState g = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer3.g0(g);
                        obj3 = g;
                    }
                    MutableState mutableState = (MutableState) obj3;
                    Object K3 = gapComposer3.K();
                    Object obj4 = K3;
                    if (K3 == composer$Companion$Empty$1) {
                        cd cdVar = new cd(mutableState, 17);
                        gapComposer3.g0(cdVar);
                        obj4 = cdVar;
                    }
                    ListRowKt.b(null, ComposableSingletons$SettingsProfileScreenKt.a, null, null, (Function0) obj4, null, ComposableLambdaKt.b(-1596607775, new u(authScope, function1, mutableState, 13), gapComposer3), gapComposer3, 1597488, 45);
                    boolean g2 = gapComposer3.g(authScope.a.t);
                    Object K4 = gapComposer3.K();
                    Object obj5 = K4;
                    if (g2 || K4 == composer$Companion$Empty$1) {
                        MutableState g3 = SnapshotStateKt.g(Boolean.valueOf(authScope.a.t));
                        gapComposer3.g0(g3);
                        obj5 = g3;
                    }
                    MutableState mutableState2 = (MutableState) obj5;
                    boolean f2 = gapComposer3.f(mutableState2) | gapComposer3.f(function1);
                    Object K5 = gapComposer3.K();
                    Object obj6 = K5;
                    if (f2 || K5 == composer$Companion$Empty$1) {
                        k9 k9Var = new k9(mutableState2, function1);
                        gapComposer3.g0(k9Var);
                        obj6 = k9Var;
                    }
                    ListRowKt.b(null, ComposableSingletons$SettingsProfileScreenKt.b, null, null, (Function0) obj6, null, ComposableLambdaKt.b(1385199384, new ef(z4 ? 1 : 0, mutableState2, function1), gapComposer3), gapComposer3, 1572912, 45);
                } else {
                    gapComposer3.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ ff(AuthScope authScope, Function1 function1, int i) {
        this.j = i;
        this.l = authScope;
        this.k = function1;
    }
}
