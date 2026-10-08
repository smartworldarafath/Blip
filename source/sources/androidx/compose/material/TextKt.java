package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.text.TextStyle;
import defpackage.t2;
import defpackage.vc;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new vc(27));

    public static final void a(TextStyle textStyle, Function2 function2, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-13499697);
        if ((i & 6) == 0) {
            if (gapComposer.f(textStyle)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function2)) {
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
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = a;
            CompositionLocalKt.a(dynamicProvidableCompositionLocal.b(((TextStyle) gapComposer.j(dynamicProvidableCompositionLocal)).d(textStyle)), function2, gapComposer, (i2 & 112) | 8);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(i, 9, textStyle, function2);
        }
    }
}
