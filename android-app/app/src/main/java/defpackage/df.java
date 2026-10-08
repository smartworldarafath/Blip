package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material.DividerKt;
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
import net.blip.android.ui.list.ListRowKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.settings.ComposableSingletons$SettingsDeviceScreenKt;
import net.blip.android.ui.settings.SettingsComposablesKt;
import net.blip.android.ui.settings.SettingsPeerHeaderKt;
import net.blip.libblip.Device;
import net.blip.libblip.Peer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class df implements Function2 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ Device k;
    public final /* synthetic */ Function1 l;
    public final /* synthetic */ String m;
    public final /* synthetic */ Context n;
    public final /* synthetic */ AuthScope o;

    public /* synthetic */ df(Device device, Function1 function1, String str, Context context, AuthScope authScope) {
        this.k = device;
        this.l = function1;
        this.m = str;
        this.n = context;
        this.o = authScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
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
                    Modifier d = PaddingKt.d(WindowInsetsPadding_androidKt.c(ScrollKt.b(PaddingKt.h(BackgroundKt.b(SizeKt.c(Modifier.Companion.b, 1.0f), ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).i, RectangleShapeKt.a), 0.0f, 48.0f, 0.0f, 0.0f, 13), ScrollKt.a(gapComposer))), 8.0f);
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
                    AuthScope authScope = this.o;
                    String str = authScope.a.m;
                    Device device = this.k;
                    SettingsPeerHeaderKt.a(null, new Peer.Device(device, str), null, gapComposer, 0, 5);
                    DividerKt.a(null, 0L, 0.0f, gapComposer, 0, 15);
                    SettingsComposablesKt.d(null, null, ComposableLambdaKt.b(971785995, new df(device, this.l, this.m, this.n, authScope), gapComposer), gapComposer, 384, 3);
                    DividerKt.a(null, 0L, 0.0f, gapComposer, 0, 15);
                    SettingsComposablesKt.d(null, null, ComposableSingletons$SettingsDeviceScreenKt.c, gapComposer, 384, 3);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(1 & intValue2, z2)) {
                    Object K = gapComposer2.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (K == composer$Companion$Empty$1) {
                        K = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.g0(K);
                    }
                    MutableState mutableState = (MutableState) K;
                    Object K2 = gapComposer2.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new cd(mutableState, 14);
                        gapComposer2.g0(K2);
                    }
                    Device device2 = this.k;
                    Function1 function1 = this.l;
                    String str2 = this.m;
                    ListRowKt.b(null, ComposableSingletons$SettingsDeviceScreenKt.a, null, null, (Function0) K2, null, ComposableLambdaKt.b(354771446, new d4(device2, function1, str2, mutableState), gapComposer2), gapComposer2, 1597488, 45);
                    Object K3 = gapComposer2.K();
                    if (K3 == composer$Companion$Empty$1) {
                        K3 = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer2.g0(K3);
                    }
                    MutableState mutableState2 = (MutableState) K3;
                    if (!device2.r) {
                        gapComposer2.W(-1896581449);
                        Object K4 = gapComposer2.K();
                        if (K4 == composer$Companion$Empty$1) {
                            K4 = new cd(mutableState2, 15);
                            gapComposer2.g0(K4);
                        }
                        ListRowKt.b(null, ComposableSingletons$SettingsDeviceScreenKt.b, null, null, (Function0) K4, null, ComposableLambdaKt.b(788034257, new v8(device2, this.n, this.o, str2, function1, mutableState2), gapComposer2), gapComposer2, 1597488, 45);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(-1895166857);
                        gapComposer2.p(false);
                    }
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ df(Device device, AuthScope authScope, Function1 function1, String str, Context context) {
        this.k = device;
        this.o = authScope;
        this.l = function1;
        this.m = str;
        this.n = context;
    }
}
