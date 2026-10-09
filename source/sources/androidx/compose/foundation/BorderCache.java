package androidx.compose.foundation;

import androidx.compose.ui.graphics.AndroidCanvas;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BorderCache {
    public AndroidImageBitmap a = null;
    public AndroidCanvas b = null;
    public CanvasDrawScope c = null;
    public AndroidPath d = null;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BorderCache) {
                BorderCache borderCache = (BorderCache) obj;
                if (!Intrinsics.a(this.a, borderCache.a) || !Intrinsics.a(this.b, borderCache.b) || !Intrinsics.a(this.c, borderCache.c) || !Intrinsics.a(this.d, borderCache.d)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        AndroidImageBitmap androidImageBitmap = this.a;
        int i = 0;
        if (androidImageBitmap == null) {
            hashCode = 0;
        } else {
            hashCode = androidImageBitmap.hashCode();
        }
        int i2 = hashCode * 31;
        AndroidCanvas androidCanvas = this.b;
        if (androidCanvas == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = androidCanvas.hashCode();
        }
        int i3 = (i2 + hashCode2) * 31;
        CanvasDrawScope canvasDrawScope = this.c;
        if (canvasDrawScope == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = canvasDrawScope.hashCode();
        }
        int i4 = (i3 + hashCode3) * 31;
        AndroidPath androidPath = this.d;
        if (androidPath != null) {
            i = androidPath.hashCode();
        }
        return i4 + i;
    }

    public final String toString() {
        return "BorderCache(imageBitmap=" + this.a + ", canvas=" + this.b + ", canvasDrawScope=" + this.c + ", borderPath=" + this.d + ")";
    }
}
