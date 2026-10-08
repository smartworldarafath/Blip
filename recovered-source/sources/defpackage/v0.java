package defpackage;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.DpSize;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.lockups.ButtonRowItem;
import net.blip.android.ui.peer.PeerScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v0 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ long k;
    public final /* synthetic */ Object l;

    public /* synthetic */ v0(ButtonRowItem.Icon icon, long j) {
        this.j = 2;
        this.l = icon;
        this.k = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        e6 e6Var = ComposeUiNode.Companion.b;
        e6 e6Var2 = ComposeUiNode.Companion.e;
        e6 e6Var3 = ComposeUiNode.Companion.c;
        e6 e6Var4 = ComposeUiNode.Companion.d;
        x9 x9Var = LayoutNode.b0;
        long j = this.k;
        Unit unit = Unit.a;
        boolean z3 = false;
        Object obj3 = this.l;
        switch (i) {
            case 0:
                Modifier modifier = (Modifier) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                float f = AndroidCursorHandle_androidKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    if (j != 9205357640488583168L) {
                        gapComposer.W(-1244013944);
                        Modifier i2 = SizeKt.i(modifier, DpSize.b(j), DpSize.a(j), 0.0f, 0.0f, 12);
                        MeasurePolicy d = BoxKt.d(Alignment.Companion.b, false);
                        int hashCode = Long.hashCode(gapComposer.T);
                        PersistentCompositionLocalMap l = gapComposer.l();
                        Modifier c = ComposedModifierKt.c(gapComposer, i2);
                        ComposeUiNode.b.getClass();
                        gapComposer.Z();
                        if (gapComposer.S) {
                            gapComposer.k(x9Var);
                        } else {
                            gapComposer.j0();
                        }
                        Updater.c(gapComposer, d, e6Var4);
                        Updater.c(gapComposer, l, e6Var3);
                        Updater.c(gapComposer, Integer.valueOf(hashCode), e6Var2);
                        Updater.b(gapComposer);
                        Updater.c(gapComposer, c, e6Var);
                        AndroidCursorHandle_androidKt.b(null, gapComposer, 0, 1);
                        gapComposer.p(true);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-1243644858);
                        AndroidCursorHandle_androidKt.b(modifier, gapComposer, 0, 0);
                        gapComposer.p(false);
                    }
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                ImageVector imageVector = (ImageVector) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    Modifier k = SizeKt.k(companion, 56.0f);
                    MeasurePolicy d2 = BoxKt.d(Alignment.Companion.e, false);
                    int hashCode2 = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l2 = gapComposer2.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer2, k);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(x9Var);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, d2, e6Var4);
                    Updater.c(gapComposer2, l2, e6Var3);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode2), e6Var2);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c2, e6Var);
                    PeerScreenKt.c(SizeKt.k(companion, 52.0f), this.k, VectorPainterKt.b(imageVector, gapComposer2), gapComposer2, 518);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            default:
                ButtonRowItem.Icon icon = (ButtonRowItem.Icon) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z3)) {
                    ImageKt.a(icon.a(), "Back", null, null, null, 0.0f, ColorFilter.Companion.a(j), gapComposer3, 8, 60);
                } else {
                    gapComposer3.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ v0(int i, long j, Object obj) {
        this.j = i;
        this.k = j;
        this.l = obj;
    }
}
