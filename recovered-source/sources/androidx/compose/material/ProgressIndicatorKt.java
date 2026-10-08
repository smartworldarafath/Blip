package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.KeyframesSpecBaseConfig;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import defpackage.a8;
import defpackage.f7;
import defpackage.lb;
import defpackage.wc;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProgressIndicatorKt {
    public static final CubicBezierEasing a;

    static {
        new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);
        new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
        new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);
        new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);
        a = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);
    }

    public static final void a(final float f, Modifier modifier, long j, final float f2, long j2, final int i, Composer composer, final int i2) {
        int i3;
        int i4;
        boolean z;
        final Modifier modifier2;
        final long j3;
        final long j4;
        long e;
        long j5;
        float f3;
        float f4;
        long j6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1746618448);
        if (gapComposer.c(f)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i5 = i2 | i3 | 24704;
        if (gapComposer.d(i)) {
            i4 = 131072;
        } else {
            i4 = 65536;
        }
        int i6 = i5 | i4;
        int i7 = 1;
        if ((74899 & i6) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            gapComposer.S();
            if ((i2 & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                e = j;
                j5 = j2;
            } else {
                e = MaterialTheme.a(gapComposer).e();
                j5 = Color.g;
            }
            gapComposer.q();
            if (f < 0.0f) {
                f3 = 0.0f;
            } else {
                f3 = f;
            }
            if (f3 > 1.0f) {
                f3 = 1.0f;
            }
            float f5 = f3;
            Stroke stroke = new Stroke(((Density) gapComposer.j(CompositionLocalsKt.h)).i0(f2), 0.0f, i, 0, 26);
            Float valueOf = Float.valueOf(f5);
            if (Float.isNaN(f5)) {
                valueOf = null;
            }
            if (valueOf != null) {
                f4 = valueOf.floatValue();
            } else {
                f4 = 0.0f;
            }
            modifier2 = modifier;
            Modifier k = SizeKt.k(SemanticsModifierKt.a(modifier2, true, new a8(f4, RangesKt.g(0.0f, 1.0f), i7)), 40.0f);
            boolean c = gapComposer.c(f5) | gapComposer.h(stroke) | gapComposer.e(e);
            Object K = gapComposer.K();
            if (c || K == Composer.Companion.a) {
                j6 = e;
                lb lbVar = new lb(f5, j5, stroke, j6);
                gapComposer.g0(lbVar);
                K = lbVar;
            } else {
                j6 = e;
            }
            CanvasKt.a(0, gapComposer, k, (Function1) K);
            j4 = j5;
            j3 = j6;
        } else {
            modifier2 = modifier;
            gapComposer.Q();
            j3 = j;
            j4 = j2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(f, modifier2, j3, f2, j4, i, i2) { // from class: ce
                public final /* synthetic */ float j;
                public final /* synthetic */ Modifier k;
                public final /* synthetic */ long l;
                public final /* synthetic */ float m;
                public final /* synthetic */ long n;
                public final /* synthetic */ int o;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(3121);
                    ProgressIndicatorKt.a(this.j, this.k, this.l, this.m, this.n, this.o, (Composer) obj, a2);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x006a  */
    /* JADX WARN: Type inference failed for: r12v19, types: [androidx.compose.animation.core.KeyframesSpecBaseConfig, androidx.compose.animation.core.KeyframesSpec$KeyframesSpecConfig, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [androidx.compose.animation.core.KeyframesSpecBaseConfig, androidx.compose.animation.core.KeyframesSpec$KeyframesSpecConfig, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Modifier modifier, long j, float f, long j2, int i, Composer composer, final int i2, final int i3) {
        Modifier modifier2;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        final Modifier modifier3;
        final long j3;
        final float f3;
        final int i11;
        final long j4;
        RecomposeScopeImpl r;
        Modifier modifier4;
        float f4;
        int i12;
        long j5;
        boolean z2;
        boolean z3;
        final float f5;
        final long j6;
        final long j7;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1119119072);
        int i13 = i3 & 1;
        if (i13 != 0) {
            i4 = i2 | 6;
            modifier2 = modifier;
        } else if ((i2 & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i4 = i5 | i2;
        } else {
            modifier2 = modifier;
            i4 = i2;
        }
        long j8 = j;
        if ((i3 & 2) == 0 && gapComposer.e(j8)) {
            i6 = 32;
        } else {
            i6 = 16;
        }
        int i14 = i4 | i6;
        int i15 = i3 & 4;
        if (i15 != 0) {
            i14 |= 384;
        } else if ((i2 & 384) == 0) {
            f2 = f;
            if (gapComposer.c(f2)) {
                i7 = 256;
            } else {
                i7 = 128;
            }
            i14 |= i7;
            int i16 = i14 | 3072;
            if ((i3 & 16) != 0) {
                i8 = i;
                if (gapComposer.d(i8)) {
                    i9 = 16384;
                    i10 = i16 | i9;
                    if ((i10 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposer.N(i10 & 1, z)) {
                        gapComposer.S();
                        if ((i2 & 1) != 0 && !gapComposer.x()) {
                            gapComposer.Q();
                            if ((i3 & 2) != 0) {
                                i10 &= -113;
                            }
                            if ((i3 & 16) != 0) {
                                i10 &= -57345;
                            }
                            modifier4 = modifier2;
                            f4 = f2;
                            i12 = i10;
                            j5 = j2;
                        } else {
                            if (i13 != 0) {
                                modifier4 = Modifier.Companion.b;
                            } else {
                                modifier4 = modifier2;
                            }
                            if ((i3 & 2) != 0) {
                                j8 = MaterialTheme.a(gapComposer).e();
                                i10 &= -113;
                            }
                            if (i15 != 0) {
                                f2 = 4.0f;
                            }
                            long j9 = Color.g;
                            if ((i3 & 16) != 0) {
                                i10 &= -57345;
                                i8 = 2;
                            }
                            f4 = f2;
                            i12 = i10;
                            j5 = j9;
                        }
                        gapComposer.q();
                        int i17 = i8;
                        final Stroke stroke = new Stroke(((Density) gapComposer.j(CompositionLocalsKt.h)).i0(f4), 0.0f, i17, 0, 26);
                        InfiniteTransition c = InfiniteTransitionKt.c(gapComposer);
                        int i18 = i12;
                        f7 f7Var = EasingKt.c;
                        final InfiniteTransition.TransitionAnimationState b = InfiniteTransitionKt.b(c, 0, 5, VectorConvertersKt.b, AnimationSpecKt.a(AnimationSpecKt.c(6660, 0, f7Var, 2), 6), null, gapComposer, 33208, 16);
                        final InfiniteTransition.TransitionAnimationState a2 = InfiniteTransitionKt.a(c, 0.0f, 286.0f, AnimationSpecKt.a(AnimationSpecKt.c(1332, 0, f7Var, 2), 6), gapComposer, 4536, 8);
                        Object K = gapComposer.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                        if (K == composer$Companion$Empty$1) {
                            K = new wc(6);
                            gapComposer.g0(K);
                        }
                        ?? keyframesSpecBaseConfig = new KeyframesSpecBaseConfig();
                        ((Function1) K).b(keyframesSpecBaseConfig);
                        final InfiniteTransition.TransitionAnimationState a3 = InfiniteTransitionKt.a(c, 0.0f, 290.0f, AnimationSpecKt.a(new KeyframesSpec(keyframesSpecBaseConfig), 6), gapComposer, 4536, 8);
                        Object K2 = gapComposer.K();
                        if (K2 == composer$Companion$Empty$1) {
                            K2 = new wc(7);
                            gapComposer.g0(K2);
                        }
                        ?? keyframesSpecBaseConfig2 = new KeyframesSpecBaseConfig();
                        ((Function1) K2).b(keyframesSpecBaseConfig2);
                        final InfiniteTransition.TransitionAnimationState a4 = InfiniteTransitionKt.a(c, 0.0f, 290.0f, AnimationSpecKt.a(new KeyframesSpec(keyframesSpecBaseConfig2), 6), gapComposer, 4536, 8);
                        Modifier k = SizeKt.k(SemanticsModifierKt.a(modifier4, true, new wc(8)), 40.0f);
                        boolean h = gapComposer.h(stroke) | gapComposer.f(b) | gapComposer.f(a3) | gapComposer.f(a4) | gapComposer.f(a2);
                        Modifier modifier5 = modifier4;
                        if ((i18 & 896) == 256) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        boolean z4 = h | z2;
                        if ((((i18 & 112) ^ 48) > 32 && gapComposer.e(j8)) || (i18 & 48) == 32) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        boolean z5 = z4 | z3;
                        Object K3 = gapComposer.K();
                        if (!z5 && K3 != composer$Companion$Empty$1) {
                            f5 = f4;
                            j6 = j5;
                            j7 = j8;
                        } else {
                            f5 = f4;
                            j6 = j5;
                            j7 = j8;
                            K3 = new Function1() { // from class: ae
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj) {
                                    float f6;
                                    DrawScope drawScope = (DrawScope) obj;
                                    long j10 = j6;
                                    Stroke stroke2 = stroke;
                                    ProgressIndicatorKt.c(drawScope, 0.0f, 360.0f, j10, stroke2);
                                    float floatValue = ((Number) a3.getValue()).floatValue();
                                    State state = a4;
                                    float abs = Math.abs(floatValue - ((Number) state.getValue()).floatValue());
                                    float floatValue2 = ((Number) state.getValue()).floatValue() + ((Number) a2.getValue()).floatValue() + (((((Number) b.getValue()).intValue() * 216.0f) % 360.0f) - 90.0f);
                                    if (stroke2.c == 0) {
                                        f6 = 0.0f;
                                    } else {
                                        f6 = ((f5 / 20.0f) * 57.29578f) / 2.0f;
                                    }
                                    ProgressIndicatorKt.c(drawScope, floatValue2 + f6, Math.max(abs, 0.1f), j7, stroke2);
                                    return Unit.a;
                                }
                            };
                            gapComposer.g0(K3);
                        }
                        CanvasKt.a(0, gapComposer, k, (Function1) K3);
                        j4 = j6;
                        f3 = f5;
                        j3 = j7;
                        i11 = i17;
                        modifier3 = modifier5;
                    } else {
                        gapComposer.Q();
                        modifier3 = modifier2;
                        j3 = j8;
                        f3 = f2;
                        i11 = i8;
                        j4 = j2;
                    }
                    r = gapComposer.r();
                    if (r != null) {
                        r.d = new Function2() { // from class: be
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                ProgressIndicatorKt.b(Modifier.this, j3, f3, j4, i11, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                return Unit.a;
                            }
                        };
                        return;
                    }
                    return;
                }
            } else {
                i8 = i;
            }
            i9 = 8192;
            i10 = i16 | i9;
            if ((i10 & 9363) != 9362) {
            }
            if (gapComposer.N(i10 & 1, z)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        f2 = f;
        int i162 = i14 | 3072;
        if ((i3 & 16) != 0) {
        }
        i9 = 8192;
        i10 = i162 | i9;
        if ((i10 & 9363) != 9362) {
        }
        if (gapComposer.N(i10 & 1, z)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }

    public static final void c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        float intBitsToFloat = Float.intBitsToFloat((int) (drawScope.i() >> 32)) - (2.0f * (stroke.a / 2.0f));
        drawScope.H0(j, f, f2, (Float.floatToRawIntBits(r0) << 32) | (Float.floatToRawIntBits(r0) & 4294967295L), (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L), stroke);
    }
}
