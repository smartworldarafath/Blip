package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IntRectKt {
    public static final IntRect a(Rect rect) {
        return new IntRect(Math.round(rect.a), Math.round(rect.b), Math.round(rect.c), Math.round(rect.d));
    }
}
