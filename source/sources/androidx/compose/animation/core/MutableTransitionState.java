package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableTransitionState<S> extends TransitionState<S> {
    public final MutableState b;
    public final MutableState c;

    public MutableTransitionState(Object obj) {
        this.b = SnapshotStateKt.g(obj);
        this.c = SnapshotStateKt.g(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object a() {
        return ((SnapshotMutableStateImpl) this.b).getValue();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object b() {
        return ((SnapshotMutableStateImpl) this.c).getValue();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void c(Object obj) {
        ((SnapshotMutableStateImpl) this.b).setValue(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void e() {
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void d(Transition transition) {
    }
}
