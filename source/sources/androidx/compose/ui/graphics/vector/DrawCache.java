package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawCache {
    public AndroidImageBitmap a;
    public AndroidCanvas b;
    public long c;
    public int d;
    public final CanvasDrawScope e;

    public DrawCache() {
        LayoutDirection layoutDirection = LayoutDirection.j;
        this.c = 0L;
        this.d = 0;
        this.e = new CanvasDrawScope();
    }
}
