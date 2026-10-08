package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimationScope<T, V extends AnimationVector> {
    public final TwoWayConverter a;
    public final Object b;
    public final long c;
    public final Function0 d;
    public final MutableState e;
    public AnimationVector f;
    public long g;
    public long h = Long.MIN_VALUE;
    public final MutableState i = SnapshotStateKt.g(Boolean.TRUE);

    public AnimationScope(Object obj, TwoWayConverter twoWayConverter, AnimationVector animationVector, long j, Object obj2, long j2, Function0 function0) {
        this.a = twoWayConverter;
        this.b = obj2;
        this.c = j2;
        this.d = function0;
        this.e = SnapshotStateKt.g(obj);
        this.f = AnimationVectorsKt.a(animationVector);
        this.g = j;
    }

    public final void a() {
        ((SnapshotMutableStateImpl) this.i).setValue(Boolean.FALSE);
        this.d.a();
    }

    public final Object b() {
        return ((TwoWayConverterImpl) this.a).b.b(this.f);
    }
}
