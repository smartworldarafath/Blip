package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultElevationOverlay implements ElevationOverlay {
    public static final DefaultElevationOverlay a = new Object();

    public final long a(long j, float f, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(-1687113661);
        Colors a2 = MaterialTheme.a(gapComposer);
        if (Dp.a(f, 0.0f) > 0 && !a2.g()) {
            gapComposer.W(-1095627978);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ElevationOverlayKt.a;
            j = ColorKt.d(Color.b(ColorsKt.b(j, gapComposer), ((((float) Math.log(f + 1.0f)) * 4.5f) + 2.0f) / 100.0f), j);
            gapComposer.p(false);
        } else {
            gapComposer.W(-1095489470);
            gapComposer.p(false);
        }
        gapComposer.p(false);
        return j;
    }
}
