package net.blip.android.ui.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.te;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SubheadingKt {
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
    
        if ((r34 & 4) != 0) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, String str, long j, Composer composer, int i, int i2) {
        int i3;
        String str2;
        long j2;
        boolean z;
        int i4;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1481456902);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i3 = i6 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            str2 = str;
            if (gapComposer.f(str2)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i3 |= i5;
        } else {
            str2 = str;
        }
        if ((i & 384) == 0) {
            if ((i2 & 4) == 0) {
                j2 = j;
                if (gapComposer.e(j2)) {
                    i4 = 256;
                    i3 |= i4;
                }
            } else {
                j2 = j;
            }
            i4 = 128;
            i3 |= i4;
        } else {
            j2 = j;
        }
        if ((i3 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            } else {
                if ((i2 & 4) != 0) {
                    j2 = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).f;
                    i3 &= -897;
                }
                long j3 = j2;
                gapComposer.q();
                j2 = j3;
                PlatformTextKt.c(str2, modifier, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).a, j3, TextUnitKt.d(18), FontWeight.u, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, ((i3 >> 3) & 14) | ((i3 << 3) & 112), 504);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new te(modifier, str, j2, i, i2);
        }
    }
}
