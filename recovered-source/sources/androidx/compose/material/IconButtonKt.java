package androidx.compose.material;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material.IconButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.Role;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IconButtonKt {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Function0 function0, Modifier modifier, boolean z, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        Modifier modifier2;
        int i4;
        int i5;
        boolean z2;
        final boolean z3;
        final Modifier modifier3;
        RecomposeScopeImpl r;
        Modifier modifier4;
        int i6;
        int i7;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1316660641);
        if ((i & 6) == 0) {
            if (gapComposer.h(function0)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i3 = i7 | i;
        } else {
            i3 = i;
        }
        int i8 = i2 & 2;
        if (i8 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
            i5 = i3 | 3456;
            if ((i & 24576) == 0) {
                if (gapComposer.h(composableLambdaImpl)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i5 |= i6;
            }
            if ((i5 & 9363) == 9362) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!gapComposer.N(i5 & 1, z2)) {
                if (i8 != 0) {
                    modifier4 = Modifier.Companion.b;
                } else {
                    modifier4 = modifier2;
                }
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
                Modifier a = ClickableKt.a(modifier4.l(MinimumInteractiveModifier.b), null, RippleKt.a(4, 0L, false), true, new Role(0), function0, 8);
                MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
                int a2 = ComposablesKt.a(gapComposer);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, a);
                ComposeUiNode.b.getClass();
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(LayoutNode.b0);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                    q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
                }
                Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                gapComposer.W(-1874697310);
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentAlphaKt.a;
                float floatValue = ((Number) gapComposer.j(dynamicProvidableCompositionLocal)).floatValue();
                gapComposer.p(false);
                CompositionLocalKt.a(dynamicProvidableCompositionLocal.b(Float.valueOf(floatValue)), composableLambdaImpl, gapComposer, ((i5 >> 9) & 112) | 8);
                gapComposer.p(true);
                modifier3 = modifier4;
                z3 = true;
            } else {
                gapComposer.Q();
                z3 = z;
                modifier3 = modifier2;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new Function2() { // from class: s9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        IconButtonKt.a(Function0.this, modifier3, z3, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                        return Unit.a;
                    }
                };
                return;
            }
            return;
        }
        modifier2 = modifier;
        i5 = i3 | 3456;
        if ((i & 24576) == 0) {
        }
        if ((i5 & 9363) == 9362) {
        }
        if (!gapComposer.N(i5 & 1, z2)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
