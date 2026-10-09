package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import kotlin.time.MonotonicTimeSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SharedMutableTransformState {
    public final MutableState a;
    public final MutableState b;
    public final TransformScopeImpl c;
    public final long d;
    public long e;
    public float f;
    public float g;
    public long h;
    public long i;
    public VelocityTracker1D j;

    public SharedMutableTransformState() {
        Boolean bool = Boolean.FALSE;
        this.a = SnapshotStateKt.g(bool);
        this.b = SnapshotStateKt.g(bool);
        this.c = new TransformScopeImpl();
        this.d = MonotonicTimeSource.a();
        this.e = Color.g;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = TransformOrigin.b;
        this.i = 0L;
    }

    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.b).getValue()).booleanValue();
    }

    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.a).getValue()).booleanValue();
    }

    public final void c(boolean z) {
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) this.a;
        boolean booleanValue = ((Boolean) snapshotMutableStateImpl.getValue()).booleanValue();
        MutableState mutableState = this.b;
        if (booleanValue && !z) {
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
        } else if (z) {
            ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
        }
        snapshotMutableStateImpl.setValue(Boolean.valueOf(z));
    }
}
