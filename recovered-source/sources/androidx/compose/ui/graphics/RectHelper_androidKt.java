package androidx.compose.ui.graphics;

import android.graphics.Rect;
import android.graphics.RectF;
import androidx.compose.ui.unit.IntRect;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RectHelper_androidKt {
    public static final Rect a(IntRect intRect) {
        return new Rect(intRect.a, intRect.b, intRect.c, intRect.d);
    }

    public static final RectF b(androidx.compose.ui.geometry.Rect rect) {
        return new RectF(rect.a, rect.b, rect.c, rect.d);
    }

    public static final androidx.compose.ui.geometry.Rect c(RectF rectF) {
        return new androidx.compose.ui.geometry.Rect(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
