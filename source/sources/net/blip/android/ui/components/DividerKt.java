package net.blip.android.ui.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import defpackage.x0;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DividerKt {
    public static final void a(Modifier modifier, Composer composer, int i, int i2) {
        int i3;
        int i4;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(96838012);
        int i5 = i2 & 1;
        if (i5 != 0) {
            i4 = i | 6;
        } else {
            if (gapComposer.f(modifier)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i4 = i3 | i;
        }
        if ((i4 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            if (i5 != 0) {
                modifier = Modifier.Companion.b;
            }
            BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(modifier, 1.0f), 0.5f), ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).l, RectangleShapeKt.a), gapComposer, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x0(modifier, i, i2, 1);
        }
    }
}
