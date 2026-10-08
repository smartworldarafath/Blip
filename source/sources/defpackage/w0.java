package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.lockups.ButtonRowItem;
import net.blip.android.ui.peer.PeerScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w0 implements Function2 {
    public final /* synthetic */ int j = 2;
    public final /* synthetic */ Object k;
    public final /* synthetic */ long l;
    public final /* synthetic */ Object m;

    public /* synthetic */ w0(long j, Function2 function2, ComposableLambdaImpl composableLambdaImpl) {
        this.l = j;
        this.m = function2;
        this.k = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        boolean z2 = false;
        long j = this.l;
        Unit unit = Unit.a;
        Object obj3 = this.k;
        Object obj4 = this.m;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                AndroidCursorHandle_androidKt.a((OffsetProvider) obj4, (Modifier) obj3, this.l, (Composer) obj, RecomposeScopeImplKt.a(1));
                return unit;
            case 1:
                ((Integer) obj2).getClass();
                PeerScreenKt.c((Modifier) obj3, this.l, (Painter) obj4, (Composer) obj, RecomposeScopeImplKt.a(519));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Function2 function2 = (Function2) obj4;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier b = BackgroundKt.b(SizeKt.c(companion, 1.0f), j, RectangleShapeKt.a);
                    BiasAlignment biasAlignment = Alignment.Companion.a;
                    MeasurePolicy d = BoxKt.d(biasAlignment, false);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, b);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    boolean z3 = gapComposer.S;
                    x9 x9Var = LayoutNode.b0;
                    if (z3) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    e6 e6Var = ComposeUiNode.Companion.d;
                    Updater.c(gapComposer, d, e6Var);
                    e6 e6Var2 = ComposeUiNode.Companion.c;
                    Updater.c(gapComposer, l, e6Var2);
                    Integer valueOf = Integer.valueOf(hashCode);
                    e6 e6Var3 = ComposeUiNode.Companion.e;
                    Updater.c(gapComposer, valueOf, e6Var3);
                    Updater.b(gapComposer);
                    e6 e6Var4 = ComposeUiNode.Companion.b;
                    Updater.c(gapComposer, c, e6Var4);
                    if (function2 == null) {
                        gapComposer.W(-318021040);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-318021039);
                        Modifier d2 = SizeKt.d(ZIndexModifierKt.a(BoxScopeInstance.a.d(companion, biasAlignment), 1.0f), 1.0f);
                        MeasurePolicy d3 = BoxKt.d(biasAlignment, false);
                        int hashCode2 = Long.hashCode(gapComposer.T);
                        PersistentCompositionLocalMap l2 = gapComposer.l();
                        Modifier c2 = ComposedModifierKt.c(gapComposer, d2);
                        gapComposer.Z();
                        if (gapComposer.S) {
                            gapComposer.k(x9Var);
                        } else {
                            gapComposer.j0();
                        }
                        Updater.c(gapComposer, d3, e6Var);
                        Updater.c(gapComposer, l2, e6Var2);
                        q.s(hashCode2, gapComposer, e6Var3, gapComposer);
                        Updater.c(gapComposer, c2, e6Var4);
                        function2.n(gapComposer, 0);
                        gapComposer.p(true);
                        gapComposer.p(false);
                    }
                    composableLambdaImpl.n(gapComposer, 0);
                    gapComposer.p(true);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                ButtonRowItem.IconMenu iconMenu = (ButtonRowItem.IconMenu) obj4;
                MutableState mutableState = (MutableState) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    ImageKt.a(iconMenu.a(), "Share", null, null, null, 0.0f, ColorFilter.Companion.a(j), gapComposer2, 8, 60);
                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                    Object K = gapComposer2.K();
                    if (K == Composer.Companion.a) {
                        K = new cd(mutableState, 11);
                        gapComposer2.g0(K);
                    }
                    AndroidMenu_androidKt.a(booleanValue, (Function0) K, null, 0L, null, null, ComposableLambdaKt.b(1290854733, new i0(7, iconMenu, mutableState), gapComposer2), gapComposer2, 1572912, 60);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ w0(OffsetProvider offsetProvider, Modifier modifier, long j, int i) {
        this.m = offsetProvider;
        this.k = modifier;
        this.l = j;
    }

    public /* synthetic */ w0(Modifier modifier, long j, Painter painter, int i) {
        this.k = modifier;
        this.l = j;
        this.m = painter;
    }

    public /* synthetic */ w0(ButtonRowItem.IconMenu iconMenu, long j, MutableState mutableState) {
        this.m = iconMenu;
        this.l = j;
        this.k = mutableState;
    }
}
