package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.IntSize;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimatedVisibilityScopeImpl implements AnimatedVisibilityScope {
    public final MutableState a = SnapshotStateKt.g(new IntSize(0));
    public final SharedMutableTransformState b = new SharedMutableTransformState();
}
