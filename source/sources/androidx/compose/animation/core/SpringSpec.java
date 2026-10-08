package androidx.compose.animation.core;

import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SpringSpec<T> implements FiniteAnimationSpec<T> {
    public final float a;
    public final float b;
    public final Object c;

    public SpringSpec(float f, float f2, Object obj) {
        this.a = f;
        this.b = f2;
        this.c = obj;
    }

    @Override // androidx.compose.animation.core.AnimationSpec
    public final VectorizedAnimationSpec a(TwoWayConverter twoWayConverter) {
        AnimationVector animationVector;
        Object obj = this.c;
        if (obj == null) {
            animationVector = null;
        } else {
            animationVector = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(obj);
        }
        return new VectorizedSpringSpec(this.a, this.b, animationVector);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SpringSpec) {
            SpringSpec springSpec = (SpringSpec) obj;
            if (springSpec.a == this.a && springSpec.b == this.b && Intrinsics.a(springSpec.c, this.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        Object obj = this.c;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return Float.hashCode(this.b) + q.a(this.a, i * 31, 31);
    }

    public /* synthetic */ SpringSpec(Object obj) {
        this(1.0f, 1500.0f, obj);
    }
}
