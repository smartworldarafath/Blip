package androidx.compose.ui.platform;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyWindowInfo implements WindowInfo {
    public final MutableState a = SnapshotStateKt.g(Boolean.FALSE);

    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.a).getValue()).booleanValue();
    }
}
