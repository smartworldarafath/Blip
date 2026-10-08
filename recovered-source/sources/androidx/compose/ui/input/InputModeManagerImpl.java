package androidx.compose.ui.input;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InputModeManagerImpl implements InputModeManager {
    public final MutableState a;

    public InputModeManagerImpl(int i) {
        this.a = SnapshotStateKt.g(new InputMode(i));
    }
}
