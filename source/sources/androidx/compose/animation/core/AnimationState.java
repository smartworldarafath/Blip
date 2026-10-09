package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimationState<T, V extends AnimationVector> implements State<T> {
    public final TwoWayConverter j;
    public final MutableState k;
    public AnimationVector l;
    public long m;
    public long n;
    public boolean o;

    public AnimationState(TwoWayConverter twoWayConverter, Object obj, AnimationVector animationVector, long j, long j2, boolean z) {
        AnimationVector animationVector2;
        this.j = twoWayConverter;
        this.k = SnapshotStateKt.g(obj);
        if (animationVector != null) {
            animationVector2 = AnimationVectorsKt.a(animationVector);
        } else {
            animationVector2 = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(obj);
            animationVector2.d();
        }
        this.l = animationVector2;
        this.m = j;
        this.n = j2;
        this.o = z;
    }

    public final Object b() {
        return ((TwoWayConverterImpl) this.j).b.b(this.l);
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return ((SnapshotMutableStateImpl) this.k).getValue();
    }

    public final String toString() {
        return "AnimationState(value=" + ((SnapshotMutableStateImpl) this.k).getValue() + ", velocity=" + b() + ", isRunning=" + this.o + ", lastFrameTimeNanos=" + this.m + ", finishedTimeNanos=" + this.n + ")";
    }

    public /* synthetic */ AnimationState(TwoWayConverter twoWayConverter, Object obj, AnimationVector animationVector, int i) {
        this(twoWayConverter, obj, (i & 4) != 0 ? null : animationVector, Long.MIN_VALUE, Long.MIN_VALUE, false);
    }
}
