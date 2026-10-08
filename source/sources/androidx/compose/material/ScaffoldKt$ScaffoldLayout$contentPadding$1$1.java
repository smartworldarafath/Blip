package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScaffoldKt$ScaffoldLayout$contentPadding$1$1 implements PaddingValues {
    public final MutableState a = SnapshotStateKt.g(new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f));

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float a() {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.a).getValue()).a();
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float b(LayoutDirection layoutDirection) {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.a).getValue()).b(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float c(LayoutDirection layoutDirection) {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.a).getValue()).c(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    public final float d() {
        return ((PaddingValues) ((SnapshotMutableStateImpl) this.a).getValue()).d();
    }
}
