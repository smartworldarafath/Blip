package net.blip.shared;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.Painter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BrushPainterKt {
    public static final BrushPainter a(Painter painter, long j, Composer composer, int i) {
        boolean z;
        painter.getClass();
        SolidColor solidColor = new SolidColor(j);
        int i2 = (i & 14) | 8;
        if ((((i2 & 14) ^ 6) > 4 && ((GapComposer) composer).f(painter)) || (i2 & 6) == 4) {
            z = true;
        } else {
            z = false;
        }
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = z | gapComposer.f(solidColor);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = new BrushPainter(painter, solidColor);
            gapComposer.g0(K);
        }
        return (BrushPainter) K;
    }
}
