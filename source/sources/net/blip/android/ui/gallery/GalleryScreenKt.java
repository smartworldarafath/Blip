package net.blip.android.ui.gallery;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.core.net.UriKt;
import androidx.navigation.NavHostController;
import defpackage.b;
import defpackage.r1;
import defpackage.s8;
import defpackage.u8;
import defpackage.x5;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.filetypes.FileType_UriKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.androidtheme.AndroidThemeKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.navigation.ShareInAppKt;
import net.blip.libblip.FileType;
import net.blip.shared.LightDarkTheme;
import net.blip.shared.PlatformTextKt;
import net.blip.shared.String_formatAsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GalleryScreenKt {
    public static final void a(Uri uri, float f, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-38756120);
        if ((i & 6) == 0) {
            if (gapComposer.h(uri)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.c(f)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            int ordinal = FileType_UriKt.a(FileType.j, (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b), uri).ordinal();
            if (ordinal != 1 && ordinal != 2) {
                gapComposer.W(762883736);
                gapComposer.p(false);
            } else {
                gapComposer.W(762808189);
                c(uri, f, gapComposer, i2 & 126);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new s8(uri, f, i, 0);
        }
    }

    public static final void b(List list, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        float f;
        int i3;
        int i4;
        list.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(405963429);
        if (gapComposer.f(list)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i2 | i;
        if ((i5 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            if ((i5 & 14) != 4) {
                z2 = false;
            } else {
                z2 = true;
            }
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z2 || K == composer$Companion$Empty$1) {
                K = new r1(19, list);
                gapComposer.g0(K);
            }
            PagerState b = PagerStateKt.b((Function0) K, gapComposer);
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K2);
            }
            MutableState mutableState = (MutableState) K2;
            Function1 a = ShareInAppKt.a(1, gapComposer);
            View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
            Boolean bool = (Boolean) mutableState.getValue();
            bool.getClass();
            boolean h = gapComposer.h(view);
            Object K3 = gapComposer.K();
            if (h || K3 == composer$Companion$Empty$1) {
                K3 = new b(13, view, mutableState);
                gapComposer.g0(K3);
            }
            EffectsKt.c(bool, (Function1) K3, gapComposer);
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                f = 0.0f;
            } else {
                f = 1.0f;
            }
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                i3 = 300;
            } else {
                i3 = 400;
            }
            if (((Boolean) mutableState.getValue()).booleanValue()) {
                i4 = 100;
            } else {
                i4 = 0;
            }
            State b2 = AnimateAsStateKt.b(f, AnimationSpecKt.c(i3, i4, null, 4), gapComposer, 0, 28);
            LightDarkTheme lightDarkTheme = LightDarkTheme.j;
            AndroidThemeKt.b(ComposableLambdaKt.b(-1251785587, new u8(navHostController, b2, list, b, context, a, mutableState), gapComposer), gapComposer, 54);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x5(i, list);
        }
    }

    public static final void c(Uri uri, float f, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        long j;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1187490367);
        if ((i & 6) == 0) {
            if (gapComposer.h(uri)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.c(f)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            Modifier c = SizeKt.c(PaddingKt.f(AlphaKt.a(Modifier.Companion.b, f), 24.0f, 0.0f, 2), 1.0f);
            RowMeasurePolicy a = RowKt.a(Arrangement.e(16.0f), Alignment.Companion.k, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, c);
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
            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                lastPathSegment = "Unknown";
            }
            try {
                j = UriKt.a(uri).length();
            } catch (Exception unused) {
                j = 0;
            }
            long j2 = j;
            Modifier a2 = RowScopeInstance.a.a();
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
            TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidColorsKt.a;
            PlatformTextKt.c(lastPathSegment, a2, TextStyle.a(textStyle, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).e, TextUnitKt.d(13), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer, 0, 504);
            PlatformTextKt.c(String_formatAsKt.a(j2), null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).e, TextUnitKt.d(13), FontWeight.t, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 0, 506);
            i3 = 1;
            gapComposer.p(true);
        } else {
            i3 = 1;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new s8(uri, f, i, i3);
        }
    }
}
