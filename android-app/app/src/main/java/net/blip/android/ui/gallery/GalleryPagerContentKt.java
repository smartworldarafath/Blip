package net.blip.android.ui.gallery;

import android.content.Context;
import android.net.Uri;
import android.os.Trace;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.core.net.UriKt;
import coil3.ImageLoader;
import coil3.SingletonImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.AsyncImagePainter;
import coil3.compose.LocalAsyncImageModelEqualityDelegateKt;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import defpackage.e2;
import defpackage.h;
import defpackage.s;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScope;
import net.blip.android.filetypes.FileType_UriKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.libblip.FileType;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GalleryPagerContentKt {
    public static final void a(Uri uri, boolean z, boolean z2, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        Function0 function03;
        boolean z4;
        boolean z5;
        uri.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2048395527);
        if (gapComposer.h(uri)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i | i2;
        if (gapComposer.g(z)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i7 = i6 | i3;
        if (gapComposer.g(z2)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i8 = i7 | i4;
        if (gapComposer.h(function02)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i9 = i8 | i5;
        if ((i9 & 9363) != 9362) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i9 & 1, z3)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.b;
            int ordinal = FileType_UriKt.a(FileType.j, (Context) gapComposer.j(staticProvidableCompositionLocal), uri).ordinal();
            Modifier.Companion companion = Modifier.Companion.b;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (ordinal != 1 && ordinal != 2) {
                if (ordinal != 4) {
                    gapComposer.W(-854990436);
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(16.0f), Alignment.Companion.n, gapComposer, 54);
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
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
                    String name = UriKt.a(uri).getName();
                    name.getClass();
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
                    TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b;
                    long d = TextUnitKt.d(16);
                    FontWeight fontWeight = FontWeight.t;
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidColorsKt.a;
                    PlatformTextKt.c(name, null, TextStyle.a(textStyle, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).d, d, fontWeight, 0L, 0L, null, 0, 16744440), 0, false, 0, 0, null, gapComposer, 0, 506);
                    PlatformTextKt.c("Gallery can't (yet) preview this type of file", null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal2)).e, 0L, null, 0L, 0L, null, 0, 16744446), 0, false, 0, 0, null, gapComposer, 6, 506);
                    if ((i9 & 57344) == 16384) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    Object K = gapComposer.K();
                    if (z5 || K == composer$Companion$Empty$1) {
                        K = new s(2, function02);
                        gapComposer.g0(K);
                    }
                    ButtonKt.a((Function0) K, null, false, null, null, null, null, ComposableSingletons$GalleryPagerContentKt.a, gapComposer, 805306368, 510);
                    gapComposer.p(true);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-855152380);
                    if (!z && z2) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    GalleryVideoPlayerKt.a(null, uri, z4, gapComposer, (i9 << 3) & 112);
                    gapComposer.p(false);
                }
                function03 = function0;
            } else {
                gapComposer.W(-855469634);
                h hVar = AsyncImagePainter.E;
                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1 = ContentScale.Companion.b;
                ImageLoader a2 = SingletonImageLoader.a((Context) gapComposer.j(staticProvidableCompositionLocal));
                AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = (AsyncImageModelEqualityDelegate) gapComposer.j(LocalAsyncImageModelEqualityDelegateKt.a);
                gapComposer.W(-1242991349);
                Trace.beginSection("rememberAsyncImagePainter");
                try {
                    ImageRequest d2 = UtilsKt.d(uri, gapComposer);
                    UtilsKt.g(d2);
                    AsyncImagePainter.Input input = new AsyncImagePainter.Input(a2, d2, asyncImageModelEqualityDelegate);
                    Object K2 = gapComposer.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new AsyncImagePainter(input);
                        gapComposer.g0(K2);
                    }
                    AsyncImagePainter asyncImagePainter = (AsyncImagePainter) K2;
                    Object K3 = gapComposer.K();
                    if (K3 == composer$Companion$Empty$1) {
                        K3 = EffectsKt.h(gapComposer);
                        gapComposer.g0(K3);
                    }
                    asyncImagePainter.u = (CoroutineScope) K3;
                    asyncImagePainter.v = hVar;
                    asyncImagePainter.w = null;
                    asyncImagePainter.x = contentScale$Companion$Fit$1;
                    asyncImagePainter.y = 1;
                    asyncImagePainter.z = UtilsKt.b(gapComposer);
                    asyncImagePainter.n(input);
                    gapComposer.p(false);
                    Trace.endSection();
                    Modifier c2 = SizeKt.c(companion, 1.0f);
                    Object K4 = gapComposer.K();
                    if (K4 == composer$Companion$Empty$1) {
                        function03 = function0;
                        K4 = new s(1, function03);
                        gapComposer.g0(K4);
                    } else {
                        function03 = function0;
                    }
                    ZoomableImageKt.a(c2, asyncImagePainter, 0.0f, false, (Function0) K4, gapComposer, 6);
                    gapComposer.p(false);
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
        } else {
            function03 = function0;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new e2(uri, z, z2, function03, function02, i);
        }
    }
}
