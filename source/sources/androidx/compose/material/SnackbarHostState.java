package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnackbarHostState {
    public final MutableState a;

    public SnackbarHostState() {
        new MutexImpl();
        this.a = SnapshotStateKt.g(null);
    }
}
