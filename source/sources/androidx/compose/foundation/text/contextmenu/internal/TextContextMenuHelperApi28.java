package androidx.compose.foundation.text.contextmenu.internal;

import android.graphics.drawable.Drawable;
import androidx.compose.foundation.contextmenu.ContextMenuSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import defpackage.ma;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TextContextMenuHelperApi28 {
    public static final TextContextMenuHelperApi28 a = new Object();

    public final void a(Drawable drawable, Composer composer, int i) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(257732500);
        if (gapComposer.h(drawable)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Modifier k = SizeKt.k(Modifier.Companion.b, ContextMenuSpec.e);
            boolean h = gapComposer.h(drawable);
            Object K = gapComposer.K();
            if (h || K == Composer.Companion.a) {
                K = new ma(26, drawable);
                gapComposer.g0(K);
            }
            BoxKt.a(DrawModifierKt.b(k, (Function1) K), gapComposer, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c(this, drawable, i);
        }
    }
}
