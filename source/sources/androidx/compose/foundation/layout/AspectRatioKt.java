package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AspectRatioKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.Modifier] */
    public static Modifier a(Modifier modifier) {
        return modifier.l(new Object());
    }

    public static final boolean b(int i, int i2, long j) {
        int j2 = Constraints.j(j);
        if (i <= Constraints.h(j) && j2 <= i) {
            int i3 = Constraints.i(j);
            if (i2 <= Constraints.g(j) && i3 <= i2) {
                return true;
            }
            return false;
        }
        return false;
    }
}
