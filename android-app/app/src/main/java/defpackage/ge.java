package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ge implements DoubleFunction {
    public final /* synthetic */ int j;
    public final /* synthetic */ Rgb k;

    public /* synthetic */ ge(Rgb rgb, int i) {
        this.j = i;
        this.k = rgb;
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public final double e(double d) {
        int i = this.j;
        Rgb rgb = this.k;
        switch (i) {
            case 0:
                return RangesKt.b(rgb.k.e(d), rgb.e, rgb.f);
            default:
                return rgb.n.e(RangesKt.b(d, rgb.e, rgb.f));
        }
    }
}
