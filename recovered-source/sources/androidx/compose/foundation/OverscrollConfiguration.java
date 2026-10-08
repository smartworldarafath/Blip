package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Deprecated;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class OverscrollConfiguration {
    public final long a;
    public final PaddingValuesImpl b;

    public OverscrollConfiguration() {
        long c = ColorKt.c(4284900966L);
        PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f);
        this.a = c;
        this.b = paddingValuesImpl;
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this != obj) {
            if (obj != null) {
                cls = obj.getClass();
            } else {
                cls = null;
            }
            if (OverscrollConfiguration.class.equals(cls)) {
                obj.getClass();
                OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) obj;
                if (!Color.c(this.a, overscrollConfiguration.a) || !Intrinsics.a(this.b, overscrollConfiguration.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = Color.i;
        return this.b.hashCode() + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "OverscrollConfiguration(glowColor=" + Color.i(this.a) + ", drawPadding=" + this.b + ")";
    }
}
