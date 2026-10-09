package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExcludeInsets implements WindowInsets {
    public final WindowInsets a;
    public final WindowInsets b;

    public ExcludeInsets(WindowInsets windowInsets, WindowInsets windowInsets2) {
        this.a = windowInsets;
        this.b = windowInsets2;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        int y0 = density.y0(0.0f) - this.b.a(density);
        if (y0 < 0) {
            return 0;
        }
        return y0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        int y0 = density.y0(0.0f) - this.b.b(density, layoutDirection);
        if (y0 < 0) {
            return 0;
        }
        return y0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        int y0 = density.y0(0.0f) - this.b.c(density);
        if (y0 < 0) {
            return 0;
        }
        return y0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        int y0 = density.y0(0.0f) - this.b.d(density, layoutDirection);
        if (y0 < 0) {
            return 0;
        }
        return y0;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ExcludeInsets) {
                ExcludeInsets excludeInsets = (ExcludeInsets) obj;
                if (excludeInsets.a.equals(this.a) && Intrinsics.a(excludeInsets.b, this.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "(" + this.a + " - " + this.b + ")";
    }
}
