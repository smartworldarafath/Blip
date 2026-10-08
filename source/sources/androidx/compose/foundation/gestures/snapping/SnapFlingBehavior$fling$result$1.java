package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.foundation.pager.PageInfo;
import androidx.compose.foundation.pager.PagerLayoutInfoKt;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehavior$fling$result$1", f = "SnapFlingBehavior.kt", l = {134, 150}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SnapFlingBehavior$fling$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super AnimationResult<Float, AnimationVector1D>>, Object> {
    public Ref$FloatRef n;
    public int o;
    public final /* synthetic */ SnapFlingBehavior p;
    public final /* synthetic */ float q;
    public final /* synthetic */ Function1 r;
    public final /* synthetic */ ScrollScope s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapFlingBehavior$fling$result$1(SnapFlingBehavior snapFlingBehavior, float f, Function1 function1, ScrollScope scrollScope, Continuation continuation) {
        super(2, continuation);
        this.p = snapFlingBehavior;
        this.q = f;
        this.r = function1;
        this.s = scrollScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SnapFlingBehavior$fling$result$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SnapFlingBehavior$fling$result$1(this.p, this.q, this.r, this.s, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f4, code lost:
    
        if (r1 == r7) goto L89;
     */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /* JADX WARN: Type inference failed for: r4v9, types: [xf] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        float f;
        int i;
        long j;
        float signum;
        Object b;
        final Ref$FloatRef ref$FloatRef;
        float f2;
        float f3;
        SnapFlingBehavior snapFlingBehavior = this.p;
        PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 = snapFlingBehavior.a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.o;
        final int i3 = 0;
        final Function1 function1 = this.r;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    ResultKt.b(obj);
                    return obj;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Ref$FloatRef ref$FloatRef2 = this.n;
            ResultKt.b(obj);
            ref$FloatRef = ref$FloatRef2;
            f = 0.0f;
            b = obj;
        } else {
            ResultKt.b(obj);
            DecayAnimationSpec decayAnimationSpec = snapFlingBehavior.b;
            float f4 = this.q;
            float a = DecayAnimationSpecKt.a(decayAnimationSpec, f4);
            PagerState pagerState = pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1.a;
            int m = pagerState.m();
            MutableState mutableState = pagerState.m;
            int i4 = ((PagerMeasureResult) ((SnapshotMutableStateImpl) mutableState).getValue()).c + m;
            if (i4 == 0) {
                signum = 0.0f;
                f = 0.0f;
            } else {
                int i5 = pagerState.e;
                if (f4 < 0.0f) {
                    i5++;
                }
                int d = RangesKt.d(((int) (a / i4)) + i5, 0, pagerState.l());
                pagerState.m();
                int i6 = ((PagerMeasureResult) ((SnapshotMutableStateImpl) mutableState).getValue()).c;
                long j2 = i5;
                long j3 = j2 - 1;
                if (j3 < 0) {
                    i = i4;
                    f = 0.0f;
                    j = 0;
                } else {
                    f = 0.0f;
                    i = i4;
                    j = j3;
                }
                int i7 = (int) j;
                long j4 = j2 + 1;
                if (j4 > 2147483647L) {
                    j4 = 2147483647L;
                }
                int abs = Math.abs((RangesKt.d(RangesKt.d(d, i7, (int) j4), 0, pagerState.l()) - i5) * i) - i;
                if (abs < 0) {
                    abs = 0;
                }
                if (abs == 0) {
                    signum = abs;
                } else {
                    signum = abs * Math.signum(f4);
                }
            }
            if (Float.isNaN(signum)) {
                InlineClassHelperKt.c("calculateApproachOffset returned NaN. Please use a valid value.");
            }
            final ?? obj2 = new Object();
            float signum2 = Math.signum(f4) * Math.abs(signum);
            obj2.j = signum2;
            function1.b(new Float(signum2));
            float f5 = obj2.j;
            ?? r4 = new Function1() { // from class: xf
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj3) {
                    int i8 = i3;
                    Unit unit = Unit.a;
                    Function1 function12 = function1;
                    Ref$FloatRef ref$FloatRef3 = obj2;
                    float floatValue = ((Float) obj3).floatValue();
                    switch (i8) {
                        case 0:
                            float f6 = ref$FloatRef3.j - floatValue;
                            ref$FloatRef3.j = f6;
                            function12.b(Float.valueOf(f6));
                            return unit;
                        default:
                            float f7 = ref$FloatRef3.j - floatValue;
                            ref$FloatRef3.j = f7;
                            function12.b(Float.valueOf(f7));
                            return unit;
                    }
                }
            };
            this.n = obj2;
            this.o = 1;
            b = SnapFlingBehavior.b(snapFlingBehavior, this.s, f5, this.q, r4, this);
            ref$FloatRef = obj2;
        }
        AnimationState animationState = (AnimationState) b;
        float floatValue = ((Number) animationState.b()).floatValue();
        PagerState pagerState2 = pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1.a;
        SnapPosition snapPosition = ((PagerMeasureResult) pagerState2.k()).n;
        List list = ((PagerMeasureResult) pagerState2.k()).a;
        int size = list.size();
        float f6 = Float.POSITIVE_INFINITY;
        float f7 = Float.NEGATIVE_INFINITY;
        while (i3 < size) {
            PageInfo pageInfo = (PageInfo) list.get(i3);
            PagerLayoutInfoKt.a(pagerState2.k());
            int i8 = ((PagerMeasureResult) pagerState2.k()).f;
            int i9 = ((PagerMeasureResult) pagerState2.k()).d;
            int i10 = ((PagerMeasureResult) pagerState2.k()).b;
            int i11 = ((MeasuredPage) pageInfo).j;
            pagerState2.l();
            snapPosition.getClass();
            float f8 = i11 - f;
            if (f8 <= f && f8 > f7) {
                f7 = f8;
            }
            if (f8 >= f && f8 < f6) {
                f6 = f8;
            }
            i3++;
        }
        if (f7 == Float.NEGATIVE_INFINITY) {
            f7 = f6;
        }
        if (f6 == Float.POSITIVE_INFINITY) {
            f6 = f7;
        }
        if (!pagerState2.d()) {
            if (PagerSnapLayoutInfoProviderKt.b(pagerState2, floatValue)) {
                f7 = f;
                f6 = f7;
            } else {
                f6 = f;
            }
        }
        if (!pagerState2.b()) {
            if (!PagerSnapLayoutInfoProviderKt.b(pagerState2, floatValue)) {
                f2 = f;
                f3 = f2;
            } else {
                f3 = f6;
                f2 = f;
            }
        } else {
            f2 = f7;
            f3 = f6;
        }
        float floatValue2 = ((Number) pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1.b.f(Float.valueOf(floatValue), Float.valueOf(f2), Float.valueOf(f3))).floatValue();
        if (floatValue2 != f2 && floatValue2 != f3 && floatValue2 != f) {
            InlineClassHelperKt.c("Final Snapping Offset Should Be one of " + f2 + ", " + f3 + " or 0.0");
        }
        if (floatValue2 == Float.POSITIVE_INFINITY || floatValue2 == Float.NEGATIVE_INFINITY) {
            floatValue2 = f;
        }
        if (Float.isNaN(floatValue2)) {
            InlineClassHelperKt.c("calculateSnapOffset returned NaN. Please use a valid value.");
        }
        ref$FloatRef.j = floatValue2;
        float f9 = f;
        AnimationState c = AnimationStateKt.c(animationState, f9, f9, 30);
        SpringSpec springSpec = snapFlingBehavior.c;
        final int i12 = 1;
        Function1 function12 = new Function1() { // from class: xf
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj3) {
                int i82 = i12;
                Unit unit = Unit.a;
                Function1 function122 = function1;
                Ref$FloatRef ref$FloatRef3 = ref$FloatRef;
                float floatValue3 = ((Float) obj3).floatValue();
                switch (i82) {
                    case 0:
                        float f62 = ref$FloatRef3.j - floatValue3;
                        ref$FloatRef3.j = f62;
                        function122.b(Float.valueOf(f62));
                        return unit;
                    default:
                        float f72 = ref$FloatRef3.j - floatValue3;
                        ref$FloatRef3.j = f72;
                        function122.b(Float.valueOf(f72));
                        return unit;
                }
            }
        };
        this.n = null;
        this.o = 2;
        Object b2 = SnapFlingBehaviorKt.b(this.s, floatValue2, floatValue2, c, springSpec, function12, this);
        if (b2 == coroutineSingletons) {
            return coroutineSingletons;
        }
        return b2;
    }
}
