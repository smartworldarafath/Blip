package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContentAlpha {
    public static float a(float f, float f2, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        long j = ((Color) gapComposer.j(ContentColorKt.a)).a;
        if (!MaterialTheme.a(gapComposer).g() ? ColorKt.e(j) < 0.5d : ColorKt.e(j) > 0.5d) {
            return f;
        }
        return f2;
    }

    public static float b(Composer composer) {
        return a(1.0f, 0.87f, composer);
    }

    public static float c(Composer composer) {
        return a(0.74f, 0.6f, composer);
    }
}
