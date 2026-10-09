package androidx.core.view;

import android.graphics.Point;
import android.os.Build;
import android.view.Display;
import android.view.RoundedCorner;
import defpackage.q;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DisplayCompat {
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0007, code lost:
    
        r3 = r3.getRoundedCorner(r4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static RoundedCornerCompat a(Display display, int i) {
        RoundedCorner roundedCorner;
        int position;
        int i2;
        int radius;
        Point center;
        if (Build.VERSION.SDK_INT >= 31 && roundedCorner != null) {
            position = roundedCorner.getPosition();
            if (position != 0) {
                i2 = 1;
                if (position != 1) {
                    i2 = 2;
                    if (position != 2) {
                        i2 = 3;
                        if (position != 3) {
                            u2.g(q.g(position, "Invalid position: "));
                            return null;
                        }
                    }
                }
            } else {
                i2 = 0;
            }
            radius = roundedCorner.getRadius();
            center = roundedCorner.getCenter();
            return new RoundedCornerCompat(i2, radius, center);
        }
        return null;
    }
}
