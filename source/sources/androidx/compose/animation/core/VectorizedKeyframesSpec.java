package androidx.compose.animation.core;

import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.ArcSpline;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorizedKeyframesSpec<V extends AnimationVector> implements VectorizedDurationBasedAnimationSpec<V> {
    public final MutableIntList a;
    public final MutableIntObjectMap b;
    public final int c;
    public final Easing d;
    public int[] e = VectorizedAnimationSpecKt.a;
    public float[] f;
    public AnimationVector g;
    public AnimationVector h;
    public AnimationVector i;
    public AnimationVector j;
    public float[] k;
    public float[] l;
    public ArcSpline m;

    public VectorizedKeyframesSpec(MutableIntList mutableIntList, MutableIntObjectMap mutableIntObjectMap, int i, Easing easing) {
        this.a = mutableIntList;
        this.b = mutableIntObjectMap;
        this.c = i;
        this.d = easing;
        float[] fArr = VectorizedAnimationSpecKt.b;
        this.f = fArr;
        this.k = fArr;
        this.l = fArr;
        this.m = VectorizedAnimationSpecKt.c;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector c(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        long j2;
        long j3 = j / 1000000;
        int[] iArr = VectorizedAnimationSpecKt.a;
        long j4 = this.c;
        if (j3 < 0) {
            j3 = 0;
        }
        if (j3 > j4) {
            j2 = j4;
        } else {
            j2 = j3;
        }
        if (j2 < 0) {
            return animationVector3;
        }
        j(animationVector, animationVector2, animationVector3);
        AnimationVector animationVector4 = this.h;
        animationVector4.getClass();
        int i = 0;
        if (this.m != VectorizedAnimationSpecKt.c) {
            int i2 = (int) j2;
            float i3 = i(h(i2), i2, false);
            float[] fArr = this.l;
            ArcSpline.Arc[][] arcArr = this.m.a;
            float f = arcArr[0][0].a;
            float f2 = arcArr[arcArr.length - 1][0].b;
            if (i3 < f) {
                i3 = f;
            }
            if (i3 <= f2) {
                f2 = i3;
            }
            int length = fArr.length;
            boolean z = false;
            for (ArcSpline.Arc[] arcArr2 : arcArr) {
                int i4 = 0;
                int i5 = 0;
                while (i4 < length - 1) {
                    ArcSpline.Arc arc = arcArr2[i5];
                    if (f2 <= arc.b) {
                        if (arc.p) {
                            fArr[i4] = arc.q;
                            fArr[i4 + 1] = arc.r;
                        } else {
                            arc.c(f2);
                            fArr[i4] = arc.a();
                            fArr[i4 + 1] = arc.b();
                        }
                        z = true;
                    }
                    i4 += 2;
                    i5++;
                }
                if (z) {
                    break;
                }
            }
            int length2 = fArr.length;
            while (i < length2) {
                animationVector4.e(i, fArr[i]);
                i++;
            }
        } else {
            AnimationVector f3 = f((j2 - 1) * 1000000, animationVector, animationVector2, animationVector3);
            AnimationVector f4 = f(j2 * 1000000, animationVector, animationVector2, animationVector3);
            int b = f3.b();
            while (i < b) {
                animationVector4.e(i, (f3.a(i) - f4.a(i)) * 1000.0f);
                i++;
            }
        }
        return animationVector4;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public final int d() {
        return 0;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public final AnimationVector f(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        AnimationVector animationVector4;
        AnimationVector animationVector5;
        ArcSpline.Arc[][] arcArr;
        AnimationVector animationVector6 = animationVector;
        long j2 = j / 1000000;
        int[] iArr = VectorizedAnimationSpecKt.a;
        int i = this.c;
        long j3 = i;
        if (j2 < 0) {
            j2 = 0;
        }
        if (j2 <= j3) {
            j3 = j2;
        }
        int i2 = (int) j3;
        MutableIntObjectMap mutableIntObjectMap = this.b;
        VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.b(i2);
        if (vectorizedKeyframeSpecElementInfo != null) {
            return vectorizedKeyframeSpecElementInfo.a;
        }
        if (i2 >= i) {
            return animationVector2;
        }
        if (i2 <= 0) {
            return animationVector6;
        }
        j(animationVector6, animationVector2, animationVector3);
        AnimationVector animationVector7 = this.g;
        animationVector7.getClass();
        int i3 = 0;
        if (this.m != VectorizedAnimationSpecKt.c) {
            float i4 = i(h(i2), i2, false);
            float[] fArr = this.k;
            ArcSpline.Arc[][] arcArr2 = this.m.a;
            int length = arcArr2.length - 1;
            float f = arcArr2[0][0].a;
            float f2 = arcArr2[length][0].b;
            int length2 = fArr.length;
            if (i4 >= f && i4 <= f2) {
                int length3 = arcArr2.length;
                int i5 = 0;
                boolean z = false;
                while (i5 < length3) {
                    int i6 = i3;
                    int i7 = i6;
                    while (i6 < length2 - 1) {
                        ArcSpline.Arc arc = arcArr2[i5][i7];
                        if (i4 <= arc.b) {
                            if (arc.p) {
                                float f3 = arc.a;
                                float f4 = arc.k;
                                float f5 = arc.c;
                                fArr[i6] = ((arc.e - f5) * (i4 - f3) * f4) + f5;
                                float f6 = arc.d;
                                fArr[i6 + 1] = ((arc.f - f6) * (i4 - f3) * f4) + f6;
                            } else {
                                arc.c(i4);
                                fArr[i6] = (arc.n * arc.h) + arc.q;
                                fArr[i6 + 1] = (arc.o * arc.i) + arc.r;
                            }
                            z = true;
                        }
                        i6 += 2;
                        i7++;
                    }
                    if (z) {
                        break;
                    }
                    i5++;
                    i3 = 0;
                }
            } else {
                if (i4 > f2) {
                    f = f2;
                } else {
                    length = 0;
                }
                float f7 = i4 - f;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length2 - 1) {
                    ArcSpline.Arc arc2 = arcArr2[length][i9];
                    boolean z2 = arc2.p;
                    float f8 = arc2.r;
                    float f9 = arc2.q;
                    if (z2) {
                        float f10 = arc2.a;
                        float f11 = arc2.k;
                        float f12 = arc2.c;
                        arcArr = arcArr2;
                        fArr[i8] = (f9 * f7) + ((arc2.e - f12) * (f - f10) * f11) + f12;
                        float f13 = (f - f10) * f11;
                        float f14 = arc2.d;
                        fArr[i8 + 1] = (f8 * f7) + ((arc2.f - f14) * f13) + f14;
                    } else {
                        arcArr = arcArr2;
                        arc2.c(f);
                        fArr[i8] = (arc2.a() * f7) + (arc2.n * arc2.h) + f9;
                        fArr[i8 + 1] = (arc2.b() * f7) + (arc2.o * arc2.i) + f8;
                    }
                    i8 += 2;
                    i9++;
                    arcArr2 = arcArr;
                }
            }
            int length4 = fArr.length;
            for (int i10 = 0; i10 < length4; i10++) {
                animationVector7.e(i10, fArr[i10]);
            }
        } else {
            int h = h(i2);
            float i11 = i(h, i2, true);
            MutableIntList mutableIntList = this.a;
            VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo2 = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.b(mutableIntList.a(h));
            if (vectorizedKeyframeSpecElementInfo2 != null && (animationVector5 = vectorizedKeyframeSpecElementInfo2.a) != null) {
                animationVector6 = animationVector5;
            }
            VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo3 = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.b(mutableIntList.a(h + 1));
            if (vectorizedKeyframeSpecElementInfo3 == null || (animationVector4 = vectorizedKeyframeSpecElementInfo3.a) == null) {
                animationVector4 = animationVector2;
            }
            int b = animationVector7.b();
            for (int i12 = 0; i12 < b; i12++) {
                animationVector7.e(i12, (animationVector4.a(i12) * i11) + ((1.0f - i11) * animationVector6.a(i12)));
            }
        }
        return animationVector7;
    }

    @Override // androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec
    public final int g() {
        return this.c;
    }

    public final int h(int i) {
        int i2;
        MutableIntList mutableIntList = this.a;
        int i3 = mutableIntList.b;
        int i4 = 0;
        if (i3 > 0) {
            int i5 = i3 - 1;
            while (true) {
                if (i4 <= i5) {
                    i2 = (i4 + i5) >>> 1;
                    int i6 = mutableIntList.a[i2];
                    if (i6 < i) {
                        i4 = i2 + 1;
                    } else {
                        if (i6 <= i) {
                            break;
                        }
                        i5 = i2 - 1;
                    }
                } else {
                    i2 = -(i4 + 1);
                    break;
                }
            }
            if (i2 < -1) {
                return -(i2 + 2);
            }
            return i2;
        }
        u2.o("");
        return 0;
    }

    public final float i(int i, int i2, boolean z) {
        Easing easing;
        float f;
        MutableIntList mutableIntList = this.a;
        if (i >= mutableIntList.b - 1) {
            f = i2;
        } else {
            int a = mutableIntList.a(i);
            int a2 = mutableIntList.a(i + 1);
            if (i2 == a) {
                f = a;
            } else {
                int i3 = a2 - a;
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) this.b.b(a);
                if (vectorizedKeyframeSpecElementInfo == null || (easing = vectorizedKeyframeSpecElementInfo.b) == null) {
                    easing = this.d;
                }
                float f2 = i3;
                float e = easing.e((i2 - a) / f2);
                if (z) {
                    return e;
                }
                return ((f2 * e) + a) / 1000.0f;
            }
        }
        return f / 1000.0f;
    }

    public final void j(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        boolean z;
        float[] fArr;
        if (this.m != VectorizedAnimationSpecKt.c) {
            z = true;
        } else {
            z = false;
        }
        AnimationVector animationVector4 = this.g;
        MutableIntObjectMap mutableIntObjectMap = this.b;
        MutableIntList mutableIntList = this.a;
        if (animationVector4 == null) {
            this.g = animationVector.c();
            this.h = animationVector3.c();
            int i = mutableIntList.b;
            float[] fArr2 = new float[i];
            for (int i2 = 0; i2 < i; i2++) {
                fArr2[i2] = mutableIntList.a(i2) / 1000.0f;
            }
            this.f = fArr2;
            int i3 = mutableIntList.b;
            int[] iArr = new int[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                iArr[i4] = 0;
            }
            this.e = iArr;
        }
        if (z) {
            if (this.m != VectorizedAnimationSpecKt.c && Intrinsics.a(this.i, animationVector) && Intrinsics.a(this.j, animationVector2)) {
                return;
            }
            this.i = animationVector;
            this.j = animationVector2;
            int b = animationVector.b() + (animationVector.b() % 2);
            this.k = new float[b];
            this.l = new float[b];
            int i5 = mutableIntList.b;
            float[][] fArr3 = new float[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                int a = mutableIntList.a(i6);
                VectorizedKeyframeSpecElementInfo vectorizedKeyframeSpecElementInfo = (VectorizedKeyframeSpecElementInfo) mutableIntObjectMap.b(a);
                if (a == 0 && vectorizedKeyframeSpecElementInfo == null) {
                    fArr = new float[b];
                    for (int i7 = 0; i7 < b; i7++) {
                        fArr[i7] = animationVector.a(i7);
                    }
                } else if (a == this.c && vectorizedKeyframeSpecElementInfo == null) {
                    fArr = new float[b];
                    for (int i8 = 0; i8 < b; i8++) {
                        fArr[i8] = animationVector2.a(i8);
                    }
                } else {
                    vectorizedKeyframeSpecElementInfo.getClass();
                    AnimationVector animationVector5 = vectorizedKeyframeSpecElementInfo.a;
                    float[] fArr4 = new float[b];
                    for (int i9 = 0; i9 < b; i9++) {
                        fArr4[i9] = animationVector5.a(i9);
                    }
                    fArr = fArr4;
                }
                fArr3[i6] = fArr;
            }
            this.m = new ArcSpline(this.e, this.f, fArr3);
        }
    }
}
