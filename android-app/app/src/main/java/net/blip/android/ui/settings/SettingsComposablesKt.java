package net.blip.android.ui.settings;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.DividerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.cf;
import defpackage.r4;
import defpackage.t2;
import defpackage.z3;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.SubheadingKt;
import net.blip.shared.OutsetParentKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SettingsComposablesKt {
    public static final void a(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(419568075);
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            DividerKt.a(OutsetParentKt.a(Modifier.Companion.b, 8.0f), 0L, 0.0f, gapComposer, 0, 14);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new cf(i);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i) {
        boolean z;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1392887962);
        int i2 = i | 6;
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            Modifier.Companion companion = Modifier.Companion.b;
            modifier2 = companion;
            PlatformTextKt.c("Your device's name is visible only to you.", PaddingKt.h(companion, 24.0f, 0.0f, 48.0f, 0.0f, 10), TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).f, TextUnitKt.d(14), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer, 6, 504);
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r4(modifier2, i, 6);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
    
        if ((r12 & 2) != 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void c(ImageVector imageVector, Color color, Composer composer, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        ImageVector imageVector2;
        BlendModeColorFilter blendModeColorFilter;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-83411550);
        if (gapComposer.f(imageVector)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i5 = i3 | i;
        if ((i2 & 2) == 0 && gapComposer.f(color)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i6 = i5 | i4;
        if ((i6 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                if ((i2 & 2) != 0) {
                    color = new Color(((AndroidColors) gapComposer.j(AndroidColorsKt.a)).b);
                    i6 &= -113;
                }
                gapComposer.q();
                Modifier.Companion companion = Modifier.Companion.b;
                Modifier k = SizeKt.k(companion, 60.0f);
                MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, k);
                ComposeUiNode.b.getClass();
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(LayoutNode.b0);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                Updater.b(gapComposer);
                Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                Modifier k2 = SizeKt.k(companion, 26.0f);
                if (color != null) {
                    blendModeColorFilter = ColorFilter.Companion.a(color.a);
                } else {
                    blendModeColorFilter = null;
                }
                BlendModeColorFilter blendModeColorFilter2 = blendModeColorFilter;
                imageVector2 = imageVector;
                ImageKt.b(imageVector2, null, k2, blendModeColorFilter2, gapComposer, (i6 & 14) | 432, 56);
                gapComposer.p(true);
            }
        } else {
            imageVector2 = imageVector;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(imageVector2, color, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void d(Modifier modifier, String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        String str2;
        int i3;
        boolean z;
        Function2 function2;
        Modifier modifier2;
        String str3;
        RecomposeScopeImpl r;
        String str4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(870666652);
        int i4 = i | 6;
        int i5 = i2 & 2;
        if (i5 != 0) {
            i4 = i | 54;
        } else if ((i & 48) == 0) {
            str2 = str;
            if (gapComposer.f(str2)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i4 |= i3;
            if ((i4 & 147) == 146) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i4 & 1, z)) {
                if (i5 != 0) {
                    str4 = null;
                } else {
                    str4 = str2;
                }
                Modifier.Companion companion = Modifier.Companion.b;
                Modifier f = PaddingKt.f(companion, 0.0f, 24.0f, 1);
                ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer, 54);
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, f);
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
                if (str4 != null) {
                    gapComposer.W(-1084864220);
                    SubheadingKt.a(PaddingKt.h(companion, 12.0f, 0.0f, 0.0f, 12.0f, 6), str4, 0L, gapComposer, (i4 & 112) | 6, 4);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-1084760432);
                    gapComposer.p(false);
                }
                function2 = composableLambdaImpl;
                function2.n(gapComposer, 6);
                gapComposer.p(true);
                str3 = str4;
                modifier2 = companion;
            } else {
                function2 = composableLambdaImpl;
                gapComposer.Q();
                modifier2 = modifier;
                str3 = str2;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new z3(modifier2, str3, function2, i, i2, 4);
                return;
            }
            return;
        }
        str2 = str;
        if ((i4 & 147) == 146) {
        }
        if (!gapComposer.N(i4 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
