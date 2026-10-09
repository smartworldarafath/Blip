package androidx.compose.material;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableWindowInsets implements WindowInsets {
    public final MutableState a;

    public MutableWindowInsets(WindowInsets windowInsets) {
        this.a = SnapshotStateKt.g(windowInsets);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int a(Density density) {
        return ((WindowInsets) ((SnapshotMutableStateImpl) this.a).getValue()).a(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int b(Density density, LayoutDirection layoutDirection) {
        return ((WindowInsets) ((SnapshotMutableStateImpl) this.a).getValue()).b(density, layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int c(Density density) {
        return ((WindowInsets) ((SnapshotMutableStateImpl) this.a).getValue()).c(density);
    }

    @Override // androidx.compose.foundation.layout.WindowInsets
    public final int d(Density density, LayoutDirection layoutDirection) {
        return ((WindowInsets) ((SnapshotMutableStateImpl) this.a).getValue()).d(density, layoutDirection);
    }
}
