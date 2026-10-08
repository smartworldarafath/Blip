package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.Density;
import defpackage.u2;
import defpackage.z0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutScrollScopeKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c7 A[Catch: ItemFoundInScroll -> 0x01a5, TryCatch #0 {ItemFoundInScroll -> 0x01a5, blocks: (B:27:0x00c3, B:29:0x00c7, B:31:0x00cd, B:39:0x00f7, B:42:0x010d, B:45:0x0122, B:48:0x012a), top: B:26:0x00c3 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0068  */
    /* JADX WARN: Type inference failed for: r10v1, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r20v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt$animateScrollToItem$1] */
    /* JADX WARN: Type inference failed for: r6v15, types: [androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope] */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x017a -> B:21:0x0060). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$1, int i, int i2, int i3, Density density, ContinuationImpl continuationImpl) {
        ?? r3;
        CoroutineSingletons coroutineSingletons;
        int i4;
        LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$12;
        int i5;
        int i6;
        LazyLayoutScrollScopeKt$animateScrollToItem$1 lazyLayoutScrollScopeKt$animateScrollToItem$1;
        float i0;
        float i02;
        float i03;
        ?? obj;
        ?? obj2;
        int i7;
        final int i8;
        final int i9;
        float f;
        final float f2;
        int i10;
        LazyLayoutScrollScopeKt$animateScrollToItem$1 lazyLayoutScrollScopeKt$animateScrollToItem$12;
        LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$13;
        float f3;
        int i11;
        LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$14;
        AnimationState c;
        Float f4;
        boolean z;
        z0 z0Var;
        LazyLayoutScrollScope lazyLayoutScrollScope;
        int i12;
        int i13;
        Ref$IntRef ref$IntRef;
        Ref$ObjectRef ref$ObjectRef;
        Ref$BooleanRef ref$BooleanRef;
        final Ref$IntRef ref$IntRef2;
        LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$15;
        LazyLayoutScrollScopeKt$animateScrollToItem$1 lazyLayoutScrollScopeKt$animateScrollToItem$13;
        float f5;
        AnimationState c2;
        boolean z2;
        final boolean z3;
        final LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$16;
        final int i14;
        int i15;
        Ref$ObjectRef ref$ObjectRef2;
        float f6;
        int i16;
        Ref$IntRef ref$IntRef3;
        Ref$ObjectRef ref$ObjectRef3;
        if (continuationImpl instanceof LazyLayoutScrollScopeKt$animateScrollToItem$1) {
            LazyLayoutScrollScopeKt$animateScrollToItem$1 lazyLayoutScrollScopeKt$animateScrollToItem$14 = (LazyLayoutScrollScopeKt$animateScrollToItem$1) continuationImpl;
            int i17 = lazyLayoutScrollScopeKt$animateScrollToItem$14.y;
            if ((i17 & Integer.MIN_VALUE) != 0) {
                lazyLayoutScrollScopeKt$animateScrollToItem$14.y = i17 - Integer.MIN_VALUE;
                r3 = lazyLayoutScrollScopeKt$animateScrollToItem$14;
                Object obj3 = r3.x;
                coroutineSingletons = CoroutineSingletons.j;
                i4 = r3.y;
                float f7 = 0.0f;
                boolean z4 = true;
                if (i4 == 0) {
                    if (i4 != 1) {
                        if (i4 == 2) {
                            i12 = r3.r;
                            i13 = r3.q;
                            lazyLayoutScrollScope = r3.m;
                            ResultKt.b(obj3);
                            lazyLayoutScrollScope.c(i13, i12);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i11 = r3.t;
                    float f8 = r3.w;
                    float f9 = r3.v;
                    f = r3.u;
                    int i18 = r3.s;
                    int i19 = r3.r;
                    i6 = r3.q;
                    Ref$IntRef ref$IntRef4 = r3.p;
                    Ref$ObjectRef ref$ObjectRef4 = r3.o;
                    Ref$BooleanRef ref$BooleanRef2 = r3.n;
                    ?? r6 = r3.m;
                    try {
                        ResultKt.b(obj3);
                        f6 = f9;
                        i8 = i19;
                        lazyLayoutScrollScopeKt$animateScrollToItem$12 = r3;
                        f3 = f8;
                        i16 = 1;
                        i15 = i18;
                        lazyListScrollScopeKt$LazyLayoutScrollScope$14 = r6;
                        ref$ObjectRef3 = ref$ObjectRef4;
                        ref$IntRef3 = ref$IntRef4;
                        i10 = i6;
                    } catch (ItemFoundInScroll e) {
                        e = e;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1 = r3;
                        i5 = i19;
                        lazyListScrollScopeKt$LazyLayoutScrollScope$12 = r6;
                    }
                    try {
                        try {
                            ref$IntRef3.j += i16;
                            lazyListScrollScopeKt$LazyLayoutScrollScope$13 = lazyListScrollScopeKt$LazyLayoutScrollScope$14;
                            ref$BooleanRef = ref$BooleanRef2;
                            f2 = f6;
                            f7 = 0.0f;
                            i9 = i15;
                            z4 = true;
                            ref$ObjectRef = ref$ObjectRef3;
                            ref$IntRef = ref$IntRef3;
                        } catch (ItemFoundInScroll e2) {
                            e = e2;
                            lazyListScrollScopeKt$LazyLayoutScrollScope$15 = lazyListScrollScopeKt$LazyLayoutScrollScope$13;
                            i6 = i10;
                            lazyLayoutScrollScopeKt$animateScrollToItem$13 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                        }
                        ref$IntRef2 = ref$IntRef;
                    } catch (ItemFoundInScroll e3) {
                        e = e3;
                        i6 = i10;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                        i5 = i8;
                        lazyListScrollScopeKt$LazyLayoutScrollScope$12 = lazyListScrollScopeKt$LazyLayoutScrollScope$14;
                        c = AnimationStateKt.c(e.k, 0.0f, 0.0f, 30);
                        float f10 = e.j + i5;
                        Object obj4 = new Object();
                        f4 = new Float(f10);
                        if (((Number) c.b()).floatValue() != 0.0f) {
                        }
                        z0Var = new z0(f10, obj4, lazyListScrollScopeKt$LazyLayoutScrollScope$12, 1);
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.m = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.n = null;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.o = null;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.p = null;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.q = i6;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.r = i5;
                        lazyLayoutScrollScopeKt$animateScrollToItem$1.y = 2;
                        if (SuspendAnimationKt.f(c, f4, null, !z, z0Var, lazyLayoutScrollScopeKt$animateScrollToItem$1, 2) != coroutineSingletons) {
                        }
                        return coroutineSingletons;
                    }
                    if (ref$BooleanRef.j && lazyListScrollScopeKt$LazyLayoutScrollScope$13.a() > 0) {
                        try {
                            try {
                                try {
                                    try {
                                        int e4 = lazyListScrollScopeKt$LazyLayoutScrollScope$13.e(i10) + i8;
                                        if (Math.abs(e4) < f) {
                                            try {
                                                f5 = Math.max(Math.abs(e4), f3);
                                                if (i11 == 0) {
                                                    f5 = -f5;
                                                }
                                            } catch (ItemFoundInScroll e5) {
                                                e = e5;
                                                lazyListScrollScopeKt$LazyLayoutScrollScope$14 = lazyListScrollScopeKt$LazyLayoutScrollScope$13;
                                                i6 = i10;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                                                i5 = i8;
                                                lazyListScrollScopeKt$LazyLayoutScrollScope$12 = lazyListScrollScopeKt$LazyLayoutScrollScope$14;
                                                c = AnimationStateKt.c(e.k, 0.0f, 0.0f, 30);
                                                float f102 = e.j + i5;
                                                Object obj42 = new Object();
                                                f4 = new Float(f102);
                                                if (((Number) c.b()).floatValue() != 0.0f) {
                                                }
                                                z0Var = new z0(f102, obj42, lazyListScrollScopeKt$LazyLayoutScrollScope$12, 1);
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.m = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.n = null;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.o = null;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.p = null;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.q = i6;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.r = i5;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$1.y = 2;
                                                if (SuspendAnimationKt.f(c, f4, null, !z, z0Var, lazyLayoutScrollScopeKt$animateScrollToItem$1, 2) != coroutineSingletons) {
                                                }
                                                return coroutineSingletons;
                                            }
                                        } else if (i11 != 0) {
                                            f5 = f;
                                        } else {
                                            f5 = -f;
                                        }
                                        Float f11 = new Float(f5);
                                        if (((Number) ((AnimationState) ref$ObjectRef.j).b()).floatValue() != f7) {
                                            z2 = z4;
                                        } else {
                                            z2 = false;
                                        }
                                        boolean z5 = z2 ^ z4;
                                        if (i11 == 0) {
                                            z3 = z4;
                                        } else {
                                            z3 = false;
                                        }
                                        Function1 function1 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.d
                                            /* JADX WARN: Code restructure failed: missing block: B:11:0x0057, code lost:
                                            
                                                if (androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt.b(r4, r0, r1, r5) != false) goto L39;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
                                            
                                                if (r8 != r9) goto L37;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
                                            
                                                r2.j += r8;
                                                r2 = r7;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
                                            
                                                if (r4 == false) goto L24;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
                                            
                                                if (((java.lang.Number) ((androidx.compose.runtime.SnapshotMutableStateImpl) r12.e).getValue()).floatValue() <= r2) goto L27;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:18:0x0078, code lost:
                                            
                                                r12.a();
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:19:0x0092, code lost:
                                            
                                                r2 = r8.j;
                                                r8 = r9;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:20:0x0099, code lost:
                                            
                                                if (r4 == false) goto L33;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
                                            
                                                if (r2 < 2) goto L39;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:23:0x00a3, code lost:
                                            
                                                if ((r1 - r0.b()) <= r8) goto L39;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:24:0x00a5, code lost:
                                            
                                                r0.c(r1 - r8, 0);
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:25:0x00ab, code lost:
                                            
                                                if (r2 < 2) goto L39;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:27:0x00b2, code lost:
                                            
                                                if ((r0.g() - r1) <= r8) goto L39;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
                                            
                                                r0.c(r8 + r1, 0);
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:30:0x008d, code lost:
                                            
                                                if (((java.lang.Number) ((androidx.compose.runtime.SnapshotMutableStateImpl) r12.e).getValue()).floatValue() >= (-r2)) goto L27;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
                                            
                                                r12.a();
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:32:0x00b9, code lost:
                                            
                                                r12.a();
                                                r3.j = false;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
                                            
                                                return r6;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:36:0x0041, code lost:
                                            
                                                if (r2 < r8) goto L12;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:6:0x002c, code lost:
                                            
                                                if (r2 > r8) goto L12;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:7:0x002f, code lost:
                                            
                                                r8 = r2;
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:8:0x0043, code lost:
                                            
                                                r2 = r4;
                                                r8 = r8 - r2.j;
                                                r9 = r0.f(r8);
                                             */
                                            /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
                                            
                                                if (androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt.c(r0, r1) == false) goto L15;
                                             */
                                            @Override // kotlin.jvm.functions.Function1
                                            /*
                                                Code decompiled incorrectly, please refer to instructions dump.
                                            */
                                            public final Object b(Object obj5) {
                                                float floatValue;
                                                AnimationScope animationScope = (AnimationScope) obj5;
                                                LazyLayoutScrollScope lazyLayoutScrollScope2 = LazyLayoutScrollScope.this;
                                                int i20 = i14;
                                                boolean c3 = LazyLayoutScrollScopeKt.c(lazyLayoutScrollScope2, i20);
                                                Ref$BooleanRef ref$BooleanRef3 = r5;
                                                boolean z6 = z3;
                                                int i21 = i8;
                                                Unit unit = Unit.a;
                                                if (!c3) {
                                                    float f12 = r3;
                                                    if (f12 > 0.0f) {
                                                        floatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                                                    } else {
                                                        floatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                                                    }
                                                }
                                                if (LazyLayoutScrollScopeKt.b(z6, lazyLayoutScrollScope2, i20, i21)) {
                                                    lazyLayoutScrollScope2.c(i20, i21);
                                                    ref$BooleanRef3.j = false;
                                                    animationScope.a();
                                                    return unit;
                                                }
                                                if (!LazyLayoutScrollScopeKt.c(lazyLayoutScrollScope2, i20)) {
                                                    return unit;
                                                }
                                                throw new ItemFoundInScroll(lazyLayoutScrollScope2.e(i20), (AnimationState) r11.j);
                                            }
                                        };
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.m = lazyListScrollScopeKt$LazyLayoutScrollScope$15;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.n = ref$BooleanRef2;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.o = ref$ObjectRef2;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.p = ref$IntRef2;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.q = i6;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.r = i5;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.s = i15;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.u = f;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.v = r1;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.w = f3;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.t = i11;
                                        f6 = r1;
                                        i16 = 1;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$12.y = 1;
                                        if (SuspendAnimationKt.f(c2, f11, null, z5, function1, lazyLayoutScrollScopeKt$animateScrollToItem$13, 2) != coroutineSingletons) {
                                            ref$IntRef3 = ref$IntRef2;
                                            i8 = i5;
                                            lazyLayoutScrollScopeKt$animateScrollToItem$12 = lazyLayoutScrollScopeKt$animateScrollToItem$13;
                                            lazyListScrollScopeKt$LazyLayoutScrollScope$14 = lazyListScrollScopeKt$LazyLayoutScrollScope$15;
                                            ref$ObjectRef3 = ref$ObjectRef2;
                                            i10 = i6;
                                            ref$IntRef3.j += i16;
                                            lazyListScrollScopeKt$LazyLayoutScrollScope$13 = lazyListScrollScopeKt$LazyLayoutScrollScope$14;
                                            ref$BooleanRef = ref$BooleanRef2;
                                            f2 = f6;
                                            f7 = 0.0f;
                                            i9 = i15;
                                            z4 = true;
                                            ref$ObjectRef = ref$ObjectRef3;
                                            ref$IntRef = ref$IntRef3;
                                            ref$IntRef2 = ref$IntRef;
                                            if (ref$BooleanRef.j) {
                                                int e42 = lazyListScrollScopeKt$LazyLayoutScrollScope$13.e(i10) + i8;
                                                if (Math.abs(e42) < f) {
                                                }
                                                c2 = AnimationStateKt.c((AnimationState) ref$ObjectRef.j, f7, f7, 30);
                                                ref$ObjectRef.j = c2;
                                                final Ref$FloatRef obj5 = new Object();
                                                Float f112 = new Float(f5);
                                                if (((Number) ((AnimationState) ref$ObjectRef.j).b()).floatValue() != f7) {
                                                }
                                                boolean z52 = z2 ^ z4;
                                                if (i11 == 0) {
                                                }
                                                lazyListScrollScopeKt$LazyLayoutScrollScope$16 = lazyListScrollScopeKt$LazyLayoutScrollScope$13;
                                                i14 = i10;
                                                final Ref$BooleanRef ref$BooleanRef3 = ref$BooleanRef;
                                                final Ref$ObjectRef ref$ObjectRef5 = ref$ObjectRef;
                                                final float f12 = f5;
                                                Function1 function12 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.d
                                                    /* JADX WARN: Code restructure failed: missing block: B:11:0x0057, code lost:
                                                    
                                                        if (androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt.b(r4, r0, r1, r5) != false) goto L39;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:13:0x005b, code lost:
                                                    
                                                        if (r8 != r9) goto L37;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
                                                    
                                                        r2.j += r8;
                                                        r2 = r7;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
                                                    
                                                        if (r4 == false) goto L24;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
                                                    
                                                        if (((java.lang.Number) ((androidx.compose.runtime.SnapshotMutableStateImpl) r12.e).getValue()).floatValue() <= r2) goto L27;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:18:0x0078, code lost:
                                                    
                                                        r12.a();
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:19:0x0092, code lost:
                                                    
                                                        r2 = r8.j;
                                                        r8 = r9;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:20:0x0099, code lost:
                                                    
                                                        if (r4 == false) goto L33;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:21:0x009b, code lost:
                                                    
                                                        if (r2 < 2) goto L39;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a3, code lost:
                                                    
                                                        if ((r1 - r0.b()) <= r8) goto L39;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a5, code lost:
                                                    
                                                        r0.c(r1 - r8, 0);
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ab, code lost:
                                                    
                                                        if (r2 < 2) goto L39;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b2, code lost:
                                                    
                                                        if ((r0.g() - r1) <= r8) goto L39;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
                                                    
                                                        r0.c(r8 + r1, 0);
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:30:0x008d, code lost:
                                                    
                                                        if (((java.lang.Number) ((androidx.compose.runtime.SnapshotMutableStateImpl) r12.e).getValue()).floatValue() >= (-r2)) goto L27;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
                                                    
                                                        r12.a();
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b9, code lost:
                                                    
                                                        r12.a();
                                                        r3.j = false;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
                                                    
                                                        return r6;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:36:0x0041, code lost:
                                                    
                                                        if (r2 < r8) goto L12;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:6:0x002c, code lost:
                                                    
                                                        if (r2 > r8) goto L12;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:7:0x002f, code lost:
                                                    
                                                        r8 = r2;
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:8:0x0043, code lost:
                                                    
                                                        r2 = r4;
                                                        r8 = r8 - r2.j;
                                                        r9 = r0.f(r8);
                                                     */
                                                    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
                                                    
                                                        if (androidx.compose.foundation.lazy.layout.LazyLayoutScrollScopeKt.c(r0, r1) == false) goto L15;
                                                     */
                                                    @Override // kotlin.jvm.functions.Function1
                                                    /*
                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                    */
                                                    public final Object b(Object obj52) {
                                                        float floatValue;
                                                        AnimationScope animationScope = (AnimationScope) obj52;
                                                        LazyLayoutScrollScope lazyLayoutScrollScope2 = LazyLayoutScrollScope.this;
                                                        int i20 = i14;
                                                        boolean c3 = LazyLayoutScrollScopeKt.c(lazyLayoutScrollScope2, i20);
                                                        Ref$BooleanRef ref$BooleanRef32 = ref$BooleanRef3;
                                                        boolean z6 = z3;
                                                        int i21 = i8;
                                                        Unit unit = Unit.a;
                                                        if (!c3) {
                                                            float f122 = f12;
                                                            if (f122 > 0.0f) {
                                                                floatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                                                            } else {
                                                                floatValue = ((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue();
                                                            }
                                                        }
                                                        if (LazyLayoutScrollScopeKt.b(z6, lazyLayoutScrollScope2, i20, i21)) {
                                                            lazyLayoutScrollScope2.c(i20, i21);
                                                            ref$BooleanRef32.j = false;
                                                            animationScope.a();
                                                            return unit;
                                                        }
                                                        if (!LazyLayoutScrollScopeKt.c(lazyLayoutScrollScope2, i20)) {
                                                            return unit;
                                                        }
                                                        throw new ItemFoundInScroll(lazyLayoutScrollScope2.e(i20), (AnimationState) ref$ObjectRef5.j);
                                                    }
                                                };
                                                lazyListScrollScopeKt$LazyLayoutScrollScope$15 = lazyListScrollScopeKt$LazyLayoutScrollScope$16;
                                                i6 = i14;
                                                ref$BooleanRef2 = ref$BooleanRef3;
                                                float f13 = f2;
                                                i15 = i9;
                                                i5 = i8;
                                                ref$ObjectRef2 = ref$ObjectRef5;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.m = lazyListScrollScopeKt$LazyLayoutScrollScope$15;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.n = ref$BooleanRef2;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.o = ref$ObjectRef2;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.p = ref$IntRef2;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.q = i6;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.r = i5;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.s = i15;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.u = f;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.v = f13;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.w = f3;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.t = i11;
                                                f6 = f13;
                                                i16 = 1;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$12.y = 1;
                                                lazyLayoutScrollScopeKt$animateScrollToItem$13 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                                                if (SuspendAnimationKt.f(c2, f112, null, z52, function12, lazyLayoutScrollScopeKt$animateScrollToItem$13, 2) != coroutineSingletons) {
                                                }
                                            }
                                        }
                                    } catch (ItemFoundInScroll e6) {
                                        e = e6;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1 = lazyLayoutScrollScopeKt$animateScrollToItem$13;
                                        lazyListScrollScopeKt$LazyLayoutScrollScope$12 = lazyListScrollScopeKt$LazyLayoutScrollScope$15;
                                        c = AnimationStateKt.c(e.k, 0.0f, 0.0f, 30);
                                        float f1022 = e.j + i5;
                                        Object obj422 = new Object();
                                        f4 = new Float(f1022);
                                        if (((Number) c.b()).floatValue() != 0.0f) {
                                        }
                                        z0Var = new z0(f1022, obj422, lazyListScrollScopeKt$LazyLayoutScrollScope$12, 1);
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.m = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.n = null;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.o = null;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.p = null;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.q = i6;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.r = i5;
                                        lazyLayoutScrollScopeKt$animateScrollToItem$1.y = 2;
                                        if (SuspendAnimationKt.f(c, f4, null, !z, z0Var, lazyLayoutScrollScopeKt$animateScrollToItem$1, 2) != coroutineSingletons) {
                                        }
                                        return coroutineSingletons;
                                    }
                                    lazyLayoutScrollScopeKt$animateScrollToItem$13 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                                } catch (ItemFoundInScroll e7) {
                                    e = e7;
                                    lazyLayoutScrollScopeKt$animateScrollToItem$13 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                                }
                                lazyListScrollScopeKt$LazyLayoutScrollScope$15 = lazyListScrollScopeKt$LazyLayoutScrollScope$16;
                                i6 = i14;
                                ref$BooleanRef2 = ref$BooleanRef3;
                                float f132 = f2;
                                i15 = i9;
                                i5 = i8;
                                ref$ObjectRef2 = ref$ObjectRef5;
                            } catch (ItemFoundInScroll e8) {
                                e = e8;
                                lazyLayoutScrollScopeKt$animateScrollToItem$13 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                                lazyListScrollScopeKt$LazyLayoutScrollScope$15 = lazyListScrollScopeKt$LazyLayoutScrollScope$16;
                                i6 = i14;
                                i5 = i8;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1 = lazyLayoutScrollScopeKt$animateScrollToItem$13;
                                lazyListScrollScopeKt$LazyLayoutScrollScope$12 = lazyListScrollScopeKt$LazyLayoutScrollScope$15;
                                c = AnimationStateKt.c(e.k, 0.0f, 0.0f, 30);
                                float f10222 = e.j + i5;
                                Object obj4222 = new Object();
                                f4 = new Float(f10222);
                                if (((Number) c.b()).floatValue() != 0.0f) {
                                }
                                z0Var = new z0(f10222, obj4222, lazyListScrollScopeKt$LazyLayoutScrollScope$12, 1);
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.m = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.n = null;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.o = null;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.p = null;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.q = i6;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.r = i5;
                                lazyLayoutScrollScopeKt$animateScrollToItem$1.y = 2;
                                if (SuspendAnimationKt.f(c, f4, null, !z, z0Var, lazyLayoutScrollScopeKt$animateScrollToItem$1, 2) != coroutineSingletons) {
                                }
                                return coroutineSingletons;
                            }
                            lazyListScrollScopeKt$LazyLayoutScrollScope$16 = lazyListScrollScopeKt$LazyLayoutScrollScope$13;
                            i14 = i10;
                            final Ref$BooleanRef ref$BooleanRef32 = ref$BooleanRef;
                            final Ref$ObjectRef ref$ObjectRef52 = ref$ObjectRef;
                            final float f122 = f5;
                        } catch (ItemFoundInScroll e9) {
                            e = e9;
                            lazyListScrollScopeKt$LazyLayoutScrollScope$15 = lazyListScrollScopeKt$LazyLayoutScrollScope$13;
                            i6 = i10;
                            lazyLayoutScrollScopeKt$animateScrollToItem$13 = lazyLayoutScrollScopeKt$animateScrollToItem$12;
                        }
                        c2 = AnimationStateKt.c((AnimationState) ref$ObjectRef.j, f7, f7, 30);
                        ref$ObjectRef.j = c2;
                        final Ref$FloatRef obj52 = new Object();
                        return coroutineSingletons;
                    }
                    return Unit.a;
                }
                ResultKt.b(obj3);
                if (i < 0.0f) {
                    InlineClassHelperKt.a("Index should be non-negative");
                }
                try {
                    i0 = density.i0(2500.0f);
                    i02 = density.i0(1500.0f);
                    i03 = density.i0(50.0f);
                    obj = new Object();
                    obj.j = true;
                    obj2 = new Object();
                    obj2.j = AnimationStateKt.b(0.0f, 0.0f, 30);
                } catch (ItemFoundInScroll e10) {
                    e = e10;
                    lazyListScrollScopeKt$LazyLayoutScrollScope$12 = lazyListScrollScopeKt$LazyLayoutScrollScope$1;
                    i5 = i2;
                    i6 = i;
                    lazyLayoutScrollScopeKt$animateScrollToItem$1 = r3;
                }
                if (!c(lazyListScrollScopeKt$LazyLayoutScrollScope$1, i)) {
                    if (i > lazyListScrollScopeKt$LazyLayoutScrollScope$1.g()) {
                        i7 = 1;
                    } else {
                        i7 = 0;
                    }
                    ?? obj6 = new Object();
                    obj6.j = 1;
                    i8 = i2;
                    i9 = i3;
                    f = i0;
                    f2 = i02;
                    i10 = i;
                    lazyLayoutScrollScopeKt$animateScrollToItem$12 = r3;
                    lazyListScrollScopeKt$LazyLayoutScrollScope$13 = lazyListScrollScopeKt$LazyLayoutScrollScope$1;
                    f3 = i03;
                    i11 = i7;
                    ref$BooleanRef = obj;
                    ref$ObjectRef = obj2;
                    ref$IntRef = obj6;
                    ref$IntRef2 = ref$IntRef;
                    if (ref$BooleanRef.j) {
                    }
                    return Unit.a;
                }
                throw new ItemFoundInScroll(lazyListScrollScopeKt$LazyLayoutScrollScope$1.e(i), (AnimationState) obj2.j);
                c = AnimationStateKt.c(e.k, 0.0f, 0.0f, 30);
                float f102222 = e.j + i5;
                Object obj42222 = new Object();
                f4 = new Float(f102222);
                if (((Number) c.b()).floatValue() != 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                z0Var = new z0(f102222, obj42222, lazyListScrollScopeKt$LazyLayoutScrollScope$12, 1);
                lazyLayoutScrollScopeKt$animateScrollToItem$1.m = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
                lazyLayoutScrollScopeKt$animateScrollToItem$1.n = null;
                lazyLayoutScrollScopeKt$animateScrollToItem$1.o = null;
                lazyLayoutScrollScopeKt$animateScrollToItem$1.p = null;
                lazyLayoutScrollScopeKt$animateScrollToItem$1.q = i6;
                lazyLayoutScrollScopeKt$animateScrollToItem$1.r = i5;
                lazyLayoutScrollScopeKt$animateScrollToItem$1.y = 2;
                if (SuspendAnimationKt.f(c, f4, null, !z, z0Var, lazyLayoutScrollScopeKt$animateScrollToItem$1, 2) != coroutineSingletons) {
                    lazyLayoutScrollScope = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
                    i12 = i5;
                    i13 = i6;
                    lazyLayoutScrollScope.c(i13, i12);
                    return Unit.a;
                }
                return coroutineSingletons;
            }
        }
        r3 = new ContinuationImpl(continuationImpl);
        Object obj32 = r3.x;
        coroutineSingletons = CoroutineSingletons.j;
        i4 = r3.y;
        float f72 = 0.0f;
        boolean z42 = true;
        if (i4 == 0) {
        }
        c = AnimationStateKt.c(e.k, 0.0f, 0.0f, 30);
        float f1022222 = e.j + i5;
        Object obj422222 = new Object();
        f4 = new Float(f1022222);
        if (((Number) c.b()).floatValue() != 0.0f) {
        }
        z0Var = new z0(f1022222, obj422222, lazyListScrollScopeKt$LazyLayoutScrollScope$12, 1);
        lazyLayoutScrollScopeKt$animateScrollToItem$1.m = lazyListScrollScopeKt$LazyLayoutScrollScope$12;
        lazyLayoutScrollScopeKt$animateScrollToItem$1.n = null;
        lazyLayoutScrollScopeKt$animateScrollToItem$1.o = null;
        lazyLayoutScrollScopeKt$animateScrollToItem$1.p = null;
        lazyLayoutScrollScopeKt$animateScrollToItem$1.q = i6;
        lazyLayoutScrollScopeKt$animateScrollToItem$1.r = i5;
        lazyLayoutScrollScopeKt$animateScrollToItem$1.y = 2;
        if (SuspendAnimationKt.f(c, f4, null, !z, z0Var, lazyLayoutScrollScopeKt$animateScrollToItem$1, 2) != coroutineSingletons) {
        }
        return coroutineSingletons;
    }

    public static final boolean b(boolean z, LazyLayoutScrollScope lazyLayoutScrollScope, int i, int i2) {
        if (z) {
            if (lazyLayoutScrollScope.g() <= i) {
                if (lazyLayoutScrollScope.g() == i && lazyLayoutScrollScope.d() > i2) {
                    return true;
                }
                return false;
            }
            return true;
        }
        if (lazyLayoutScrollScope.g() >= i) {
            if (lazyLayoutScrollScope.g() == i && lazyLayoutScrollScope.d() < i2) {
                return true;
            }
            return false;
        }
        return true;
    }

    public static final boolean c(LazyLayoutScrollScope lazyLayoutScrollScope, int i) {
        int g = lazyLayoutScrollScope.g();
        if (i > lazyLayoutScrollScope.b() || g > i) {
            return false;
        }
        return true;
    }
}
