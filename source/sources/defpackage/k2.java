package defpackage;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.Colors;
import androidx.compose.material.MaterialTheme;
import androidx.compose.material.MaterialThemeKt;
import androidx.compose.material.RippleConfiguration;
import androidx.compose.material.RippleKt;
import androidx.compose.material.Shapes;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k2 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidColors k;
    public final /* synthetic */ ComposableLambdaImpl l;

    public /* synthetic */ k2(AndroidColors androidColors, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.j = i;
        this.k = androidColors;
        this.l = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        RippleAlpha rippleAlpha;
        int i = this.j;
        Unit unit = Unit.a;
        ComposableLambdaImpl composableLambdaImpl = this.l;
        AndroidColors androidColors = this.k;
        boolean z2 = false;
        int i2 = 1;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    Colors a = MaterialTheme.a(gapComposer);
                    long j = androidColors.n;
                    Colors a2 = Colors.a(a, j, j, 8143);
                    Shapes b = MaterialTheme.b(gapComposer);
                    RoundedCornerShape b2 = RoundedCornerShapeKt.b(12.0f);
                    RoundedCornerShape b3 = RoundedCornerShapeKt.b(16.0f);
                    RoundedCornerShape b4 = RoundedCornerShapeKt.b(20.0f);
                    b.getClass();
                    MaterialThemeKt.a(a2, null, new Shapes(b2, b3, b4), ComposableLambdaKt.b(-1030408968, new k2(androidColors, composableLambdaImpl, i2), gapComposer), gapComposer, 3072);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(1 & intValue2, z)) {
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = RippleKt.a;
                    long j2 = androidColors.o;
                    ColorKt.e(j2);
                    if (ColorKt.e(Color.b) > 0.5d) {
                        rippleAlpha = RippleKt.d;
                    } else {
                        rippleAlpha = RippleKt.e;
                    }
                    CompositionLocalKt.a(dynamicProvidableCompositionLocal.b(new RippleConfiguration(j2, rippleAlpha)), ComposableLambdaKt.b(-1663137736, new c0(composableLambdaImpl, 3, (byte) 0), gapComposer2), gapComposer2, 56);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
