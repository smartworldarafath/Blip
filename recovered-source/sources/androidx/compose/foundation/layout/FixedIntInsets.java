package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FixedIntInsets implements WindowInsets {
    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return 0;
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof FixedIntInsets)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return "Insets(left=0, top=0, right=0, bottom=0)";
    }
}
