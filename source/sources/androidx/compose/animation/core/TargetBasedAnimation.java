package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TargetBasedAnimation<T, V extends AnimationVector> implements Animation<T, V> {
    public final VectorizedAnimationSpec a;
    public final TwoWayConverter b;
    public Object c;
    public Object d;
    public AnimationVector e;
    public AnimationVector f;
    public final AnimationVector g;
    public long h;
    public AnimationVector i;

    public TargetBasedAnimation(AnimationSpec animationSpec, TwoWayConverter twoWayConverter, Object obj, Object obj2, AnimationVector animationVector) {
        AnimationVector c;
        this.a = animationSpec.a(twoWayConverter);
        this.b = twoWayConverter;
        this.c = obj2;
        this.d = obj;
        TwoWayConverterImpl twoWayConverterImpl = (TwoWayConverterImpl) twoWayConverter;
        this.e = (AnimationVector) twoWayConverterImpl.a.b(obj);
        Function1 function1 = twoWayConverterImpl.a;
        this.f = (AnimationVector) function1.b(obj2);
        if (animationVector != null) {
            c = AnimationVectorsKt.a(animationVector);
        } else {
            c = ((AnimationVector) function1.b(obj)).c();
        }
        this.g = c;
        this.h = -1L;
    }

    @Override // androidx.compose.animation.core.Animation
    public final boolean a() {
        return this.a.a();
    }

    @Override // androidx.compose.animation.core.Animation
    public final long b() {
        if (this.h < 0) {
            this.h = this.a.b(this.e, this.f, this.g);
        }
        return this.h;
    }

    @Override // androidx.compose.animation.core.Animation
    public final TwoWayConverter c() {
        return this.b;
    }

    @Override // androidx.compose.animation.core.Animation
    public final AnimationVector d(long j) {
        if (!e(j)) {
            return this.a.c(j, this.e, this.f, this.g);
        }
        AnimationVector animationVector = this.i;
        if (animationVector == null) {
            AnimationVector e = this.a.e(this.e, this.f, this.g);
            this.i = e;
            return e;
        }
        return animationVector;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object f(long j) {
        if (!e(j)) {
            AnimationVector f = this.a.f(j, this.e, this.f, this.g);
            int b = f.b();
            for (int i = 0; i < b; i++) {
                if (Float.isNaN(f.a(i))) {
                    PreconditionsKt.b("AnimationVector cannot contain a NaN. " + f + ". Animation: " + this + ", playTimeNanos: " + j);
                }
            }
            return ((TwoWayConverterImpl) this.b).b.b(f);
        }
        return this.c;
    }

    @Override // androidx.compose.animation.core.Animation
    public final Object g() {
        return this.c;
    }

    public final void h(Object obj) {
        if (!Intrinsics.a(obj, this.d)) {
            this.d = obj;
            this.e = (AnimationVector) ((TwoWayConverterImpl) this.b).a.b(obj);
            this.i = null;
            this.h = -1L;
        }
    }

    public final void i(Object obj) {
        if (!Intrinsics.a(this.c, obj)) {
            this.c = obj;
            this.f = (AnimationVector) ((TwoWayConverterImpl) this.b).a.b(obj);
            this.i = null;
            this.h = -1L;
        }
    }

    public final String toString() {
        return "TargetBasedAnimation: " + this.d + " -> " + this.c + ",initial velocity: " + this.g + ", duration: " + (b() / 1000000) + " ms,animationSpec: " + this.a;
    }
}
