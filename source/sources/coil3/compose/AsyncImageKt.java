package coil3.compose;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.ContentPainterElement;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import defpackage.a3;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AsyncImageKt {
    public static final void a(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, Composer composer, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        ImageRequest imageRequest;
        int i11;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1236588022);
        int i12 = 4;
        if (gapComposer.f(asyncImageState)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i13 = i3 | i;
        if ((i & 384) == 0) {
            if (gapComposer.f(modifier)) {
                i11 = 256;
            } else {
                i11 = 128;
            }
            i13 |= i11;
        }
        if (gapComposer.h(function1)) {
            i4 = 2048;
        } else {
            i4 = 1024;
        }
        int i14 = i13 | i4;
        if (gapComposer.h(function12)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i15 = i14 | i5;
        if (gapComposer.f(alignment)) {
            i6 = 131072;
        } else {
            i6 = 65536;
        }
        int i16 = i15 | i6;
        if (gapComposer.c(1.0f)) {
            i7 = 8388608;
        } else {
            i7 = 4194304;
        }
        int i17 = i16 | i7;
        if (gapComposer.f(null)) {
            i8 = 67108864;
        } else {
            i8 = 33554432;
        }
        int i18 = i17 | i8;
        if (gapComposer.d(1)) {
            i9 = 536870912;
        } else {
            i9 = 268435456;
        }
        int i19 = i18 | i9;
        if ((i2 & 6) == 0) {
            if (!gapComposer.g(true)) {
                i12 = 2;
            }
            i10 = i2 | i12;
        } else {
            i10 = i2;
        }
        if ((306783379 & i19) == 306783378 && (i10 & 3) == 2) {
            z = false;
        } else {
            z = true;
        }
        if (gapComposer.N(i19 & 1, z)) {
            Object obj = asyncImageState.a;
            int i20 = UtilsKt.b;
            gapComposer.W(-329318062);
            boolean z2 = obj instanceof ImageRequest;
            Object obj2 = Composer.Companion.a;
            if (z2) {
                gapComposer.W(-1008942344);
                imageRequest = (ImageRequest) obj;
                if (imageRequest.s.g != null) {
                    gapComposer.W(-1008902292);
                    gapComposer.p(false);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-1008854118);
                    SizeResolver c = UtilsKt.c(contentScale, gapComposer);
                    boolean f = gapComposer.f(obj) | gapComposer.f(c);
                    Object K = gapComposer.K();
                    if (f || K == obj2) {
                        ImageRequest.Builder a = ImageRequest.a(imageRequest);
                        a.l = c;
                        K = a.a();
                        gapComposer.g0(K);
                    }
                    imageRequest = (ImageRequest) K;
                    gapComposer.p(false);
                    gapComposer.p(false);
                }
            } else {
                gapComposer.W(-1008595950);
                Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
                SizeResolver c2 = UtilsKt.c(contentScale, gapComposer);
                boolean f2 = gapComposer.f(context) | gapComposer.f(obj) | gapComposer.f(c2);
                Object K2 = gapComposer.K();
                if (f2 || K2 == obj2) {
                    ImageRequest.Builder builder = new ImageRequest.Builder(context);
                    builder.c = obj;
                    builder.l = c2;
                    K2 = builder.a();
                    gapComposer.g0(K2);
                }
                imageRequest = (ImageRequest) K2;
                gapComposer.p(false);
            }
            gapComposer.p(false);
            UtilsKt.g(imageRequest);
            Modifier l = modifier.l(new ContentPainterElement(imageRequest, asyncImageState.c, asyncImageState.b, function1, function12, alignment, contentScale, UtilsKt.b(gapComposer), str));
            MeasurePolicy a2 = UtilsKt.a();
            int hashCode = Long.hashCode(gapComposer.T);
            Modifier c3 = ComposedModifierKt.c(gapComposer, l);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a2, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l2, ComposeUiNode.Companion.c);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c3, ComposeUiNode.Companion.b);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a3(asyncImageState, str, modifier, function1, function12, alignment, contentScale, i, i2);
        }
    }
}
