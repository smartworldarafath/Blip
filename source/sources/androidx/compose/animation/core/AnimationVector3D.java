package androidx.compose.animation.core;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimationVector3D extends AnimationVector {
    public float a;
    public float b;
    public float c;

    public AnimationVector3D(float f, float f2, float f3) {
        this.a = f;
        this.b = f2;
        this.c = f3;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final float a(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return 0.0f;
                }
                return this.c;
            }
            return this.b;
        }
        return this.a;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final int b() {
        return 3;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final AnimationVector c() {
        return new AnimationVector3D(0.0f, 0.0f, 0.0f);
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void d() {
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0.0f;
    }

    @Override // androidx.compose.animation.core.AnimationVector
    public final void e(int i, float f) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                this.c = f;
                return;
            }
            this.b = f;
            return;
        }
        this.a = f;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AnimationVector3D) {
            AnimationVector3D animationVector3D = (AnimationVector3D) obj;
            if (animationVector3D.a == this.a && animationVector3D.b == this.b && animationVector3D.c == this.c) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.c) + q.a(this.b, Float.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        float f = this.a;
        float f2 = this.b;
        float f3 = this.c;
        StringBuilder n = q.n("AnimationVector3D: v1 = ", f, ", v2 = ", f2, ", v3 = ");
        n.append(f3);
        return n.toString();
    }
}
