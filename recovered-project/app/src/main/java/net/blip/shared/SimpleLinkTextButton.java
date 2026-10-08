package net.blip.shared;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.text.TextStyle;
import defpackage.p0;
import defpackage.r7;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SimpleLinkTextButton {
    public final long a;
    public final Function1 b;

    public SimpleLinkTextButton(long j, Function1 function1) {
        function1.getClass();
        this.a = j;
        this.b = function1;
    }

    public final void a(Modifier modifier, String str, String str2, TextStyle textStyle, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        modifier.getClass();
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(651040885);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i7 = i | i2;
        if (gapComposer.f(str)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i8 = i7 | i3;
        if (gapComposer.f(str2)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i9 = i8 | i4;
        if (gapComposer.f(textStyle)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        int i10 = i9 | i5;
        if (gapComposer.f(this)) {
            i6 = 16384;
        } else {
            i6 = 8192;
        }
        int i11 = i10 | i6;
        boolean z3 = false;
        if ((i11 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i11 & 1, z)) {
            Modifier a = ClipKt.a(SizeKt.d(OutsetParentKt.a(modifier, 3.0f), 1.0f), RoundedCornerShapeKt.a(25));
            if ((57344 & i11) == 16384) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((i11 & 896) == 256) {
                z3 = true;
            }
            boolean z4 = z2 | z3;
            Object K = gapComposer.K();
            if (z4 || K == Composer.Companion.a) {
                K = new p0(29, this, str2);
                gapComposer.g0(K);
            }
            PlatformTextKt.c(str, ClickableKt.b(a, false, null, null, (Function0) K, 15), TextStyle.a(textStyle, this.a, 0L, null, 0L, 0L, null, 0, 16744446), 0, false, 0, 0, null, gapComposer, (i11 >> 3) & 14, 504);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r7(this, modifier, str, str2, textStyle, i, 6);
        }
    }
}
