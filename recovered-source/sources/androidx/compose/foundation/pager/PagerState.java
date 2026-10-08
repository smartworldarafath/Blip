package androidx.compose.foundation.pager;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerScrollPosition;
import androidx.compose.foundation.pager.PagerScrollPositionKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import defpackage.ia;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerState implements ScrollableState {
    public final MutableState A;
    public final MutableState B;
    public final MutableState C;
    public final MutableState D;
    public final MutableState E;
    public boolean a;
    public PagerMeasureResult b;
    public final MutableState c;
    public final PagerScrollPosition d;
    public int e;
    public int f;
    public long g;
    public long h;
    public float i;
    public float j;
    public final ScrollableState k;
    public final boolean l;
    public final MutableState m;
    public Density n;
    public int o;
    public final MutableInteractionSource p;
    public final MutableIntState q;
    public final MutableIntState r;
    public final LazyLayoutPrefetchState s;
    public final PagerCacheWindowLogic t;
    public final LazyLayoutBeyondBoundsInfo u;
    public final AwaitFirstLayoutModifier v;
    public final MutableState w;
    public final PagerState$remeasurementModifier$1 x;
    public final LazyLayoutPinnedItemList y;
    public final MutableState z;

    /* JADX WARN: Type inference failed for: r5v6, types: [java.lang.Object, androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier] */
    /* JADX WARN: Type inference failed for: r5v9, types: [androidx.compose.foundation.pager.PagerState$remeasurementModifier$1] */
    public PagerState(int i, float f) {
        double d = f;
        if (-0.5d > d || d > 0.5d) {
            InlineClassHelperKt.a("currentPageOffsetFraction " + f + " is not within the range -0.5 to 0.5");
        }
        this.c = SnapshotStateKt.g(new Offset(0L));
        this.d = new PagerScrollPosition(i, f, this);
        this.e = i;
        this.g = Long.MAX_VALUE;
        final int i2 = 0;
        this.k = ScrollableStateKt.a(new Function1(this) { // from class: yc
            public final /* synthetic */ PagerState k;

            {
                this.k = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x00ee  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00bc  */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v5 */
            /* JADX WARN: Type inference failed for: r0v7 */
            /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Float] */
            /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.Number] */
            /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Long] */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object b(Object obj) {
                ?? r0;
                PagerMeasureResult pagerMeasureResult;
                boolean z;
                int i3 = i2;
                Unit unit = Unit.a;
                PagerMeasureResult pagerMeasureResult2 = null;
                Function1 function1 = null;
                PagerState pagerState = this.k;
                switch (i3) {
                    case 0:
                        ?? r15 = (Float) obj;
                        float floatValue = r15.floatValue();
                        long a = PagerScrollPositionKt.a(pagerState);
                        float f2 = pagerState.i + floatValue;
                        long c = MathKt.c(f2);
                        pagerState.i = f2 - ((float) c);
                        if (Math.abs(floatValue) >= 1.0E-4f) {
                            long j = a + c;
                            long e = RangesKt.e(j, pagerState.h, pagerState.g);
                            boolean z2 = false;
                            if (j != e) {
                                r0 = true;
                            } else {
                                r0 = false;
                            }
                            long j2 = e - a;
                            float f3 = (float) j2;
                            pagerState.j = f3;
                            float f4 = 0.0f;
                            if (Math.abs(j2) != 0) {
                                MutableState mutableState = pagerState.D;
                                if (f3 > 0.0f) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.valueOf(z));
                                MutableState mutableState2 = pagerState.E;
                                if (f3 < 0.0f) {
                                    z2 = true;
                                }
                                ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(z2));
                            }
                            int i4 = (int) j2;
                            int i5 = -i4;
                            PagerMeasureResult h = ((PagerMeasureResult) ((SnapshotMutableStateImpl) pagerState.m).getValue()).h(i5);
                            if (h != null && (pagerMeasureResult = pagerState.b) != null) {
                                PagerMeasureResult h2 = pagerMeasureResult.h(i5);
                                if (h2 != null) {
                                    pagerState.b = h2;
                                }
                                if (pagerMeasureResult2 == null) {
                                    pagerState.h(pagerMeasureResult2, pagerState.a, true);
                                    pagerState.z.setValue(unit);
                                } else {
                                    PagerScrollPosition pagerScrollPosition = pagerState.d;
                                    if (pagerScrollPosition.a.n() != 0) {
                                        f4 = i4 / r2.n();
                                    }
                                    ((SnapshotMutableFloatStateImpl) pagerScrollPosition.c).k(pagerScrollPosition.b() + f4);
                                    Remeasurement remeasurement = (Remeasurement) ((SnapshotMutableStateImpl) pagerState.w).getValue();
                                    if (remeasurement != null) {
                                        ((LayoutNode) remeasurement).k();
                                    }
                                }
                                if (r0 != false) {
                                    r15 = Long.valueOf(j2);
                                }
                                floatValue = r15.floatValue();
                            }
                            pagerMeasureResult2 = h;
                            if (pagerMeasureResult2 == null) {
                            }
                            if (r0 != false) {
                            }
                            floatValue = r15.floatValue();
                        }
                        return Float.valueOf(floatValue);
                    default:
                        NestedPrefetchScope nestedPrefetchScope = (NestedPrefetchScope) obj;
                        Snapshot a2 = Snapshot.Companion.a();
                        if (a2 != null) {
                            function1 = a2.e();
                        }
                        Snapshot b = Snapshot.Companion.b(a2);
                        try {
                            nestedPrefetchScope.a(pagerState.e);
                            return unit;
                        } finally {
                            Snapshot.Companion.e(a2, b, function1);
                        }
                }
            }
        });
        final int i3 = 1;
        this.l = true;
        this.m = SnapshotStateKt.f(PagerStateKt.b, SnapshotStateKt.h());
        this.n = PagerStateKt.a;
        this.p = InteractionSourceKt.a();
        this.q = SnapshotIntStateKt.a(-1);
        this.r = SnapshotIntStateKt.a(i);
        SnapshotStateKt.d(SnapshotStateKt.m(), new ia(this, 2));
        SnapshotStateKt.d(SnapshotStateKt.m(), new ia(this, 3));
        LazyLayoutPrefetchState lazyLayoutPrefetchState = new LazyLayoutPrefetchState(new Function1(this) { // from class: yc
            public final /* synthetic */ PagerState k;

            {
                this.k = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x00ee  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00bc  */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v5 */
            /* JADX WARN: Type inference failed for: r0v7 */
            /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Float] */
            /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.Number] */
            /* JADX WARN: Type inference failed for: r15v3, types: [java.lang.Long] */
            @Override // kotlin.jvm.functions.Function1
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object b(Object obj) {
                ?? r0;
                PagerMeasureResult pagerMeasureResult;
                boolean z;
                int i32 = i3;
                Unit unit = Unit.a;
                PagerMeasureResult pagerMeasureResult2 = null;
                Function1 function1 = null;
                PagerState pagerState = this.k;
                switch (i32) {
                    case 0:
                        ?? r15 = (Float) obj;
                        float floatValue = r15.floatValue();
                        long a = PagerScrollPositionKt.a(pagerState);
                        float f2 = pagerState.i + floatValue;
                        long c = MathKt.c(f2);
                        pagerState.i = f2 - ((float) c);
                        if (Math.abs(floatValue) >= 1.0E-4f) {
                            long j = a + c;
                            long e = RangesKt.e(j, pagerState.h, pagerState.g);
                            boolean z2 = false;
                            if (j != e) {
                                r0 = true;
                            } else {
                                r0 = false;
                            }
                            long j2 = e - a;
                            float f3 = (float) j2;
                            pagerState.j = f3;
                            float f4 = 0.0f;
                            if (Math.abs(j2) != 0) {
                                MutableState mutableState = pagerState.D;
                                if (f3 > 0.0f) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.valueOf(z));
                                MutableState mutableState2 = pagerState.E;
                                if (f3 < 0.0f) {
                                    z2 = true;
                                }
                                ((SnapshotMutableStateImpl) mutableState2).setValue(Boolean.valueOf(z2));
                            }
                            int i4 = (int) j2;
                            int i5 = -i4;
                            PagerMeasureResult h = ((PagerMeasureResult) ((SnapshotMutableStateImpl) pagerState.m).getValue()).h(i5);
                            if (h != null && (pagerMeasureResult = pagerState.b) != null) {
                                PagerMeasureResult h2 = pagerMeasureResult.h(i5);
                                if (h2 != null) {
                                    pagerState.b = h2;
                                }
                                if (pagerMeasureResult2 == null) {
                                    pagerState.h(pagerMeasureResult2, pagerState.a, true);
                                    pagerState.z.setValue(unit);
                                } else {
                                    PagerScrollPosition pagerScrollPosition = pagerState.d;
                                    if (pagerScrollPosition.a.n() != 0) {
                                        f4 = i4 / r2.n();
                                    }
                                    ((SnapshotMutableFloatStateImpl) pagerScrollPosition.c).k(pagerScrollPosition.b() + f4);
                                    Remeasurement remeasurement = (Remeasurement) ((SnapshotMutableStateImpl) pagerState.w).getValue();
                                    if (remeasurement != null) {
                                        ((LayoutNode) remeasurement).k();
                                    }
                                }
                                if (r0 != false) {
                                    r15 = Long.valueOf(j2);
                                }
                                floatValue = r15.floatValue();
                            }
                            pagerMeasureResult2 = h;
                            if (pagerMeasureResult2 == null) {
                            }
                            if (r0 != false) {
                            }
                            floatValue = r15.floatValue();
                        }
                        return Float.valueOf(floatValue);
                    default:
                        NestedPrefetchScope nestedPrefetchScope = (NestedPrefetchScope) obj;
                        Snapshot a2 = Snapshot.Companion.a();
                        if (a2 != null) {
                            function1 = a2.e();
                        }
                        Snapshot b = Snapshot.Companion.b(a2);
                        try {
                            nestedPrefetchScope.a(pagerState.e);
                            return unit;
                        } finally {
                            Snapshot.Companion.e(a2, b, function1);
                        }
                }
            }
        });
        this.s = lazyLayoutPrefetchState;
        this.t = new PagerCacheWindowLogic(new PagerState$pagerCacheWindow$1(this), lazyLayoutPrefetchState, new ia(this, 4));
        this.u = new LazyLayoutBeyondBoundsInfo();
        this.v = new Object();
        this.w = SnapshotStateKt.g(null);
        this.x = new RemeasurementModifier() { // from class: androidx.compose.foundation.pager.PagerState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public final void m(LayoutNode layoutNode) {
                ((SnapshotMutableStateImpl) PagerState.this.w).setValue(layoutNode);
            }
        };
        ConstraintsKt.b(0, 0, 0, 0, 15);
        this.y = new LazyLayoutPinnedItemList();
        this.z = ObservableScopeInvalidator.a();
        this.A = ObservableScopeInvalidator.a();
        Boolean bool = Boolean.FALSE;
        this.B = SnapshotStateKt.g(bool);
        this.C = SnapshotStateKt.g(bool);
        this.D = SnapshotStateKt.g(bool);
        this.E = SnapshotStateKt.g(bool);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0078, code lost:
    
        if (r9.c(r7, r8, r0) != r1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007a, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r6.i(r0) == r1) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object q(PagerState pagerState, MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        PagerState$scroll$1 pagerState$scroll$1;
        int i;
        Function2 function22;
        if (continuationImpl instanceof PagerState$scroll$1) {
            pagerState$scroll$1 = (PagerState$scroll$1) continuationImpl;
            int i2 = pagerState$scroll$1.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pagerState$scroll$1.r = i2 - Integer.MIN_VALUE;
                Object obj = pagerState$scroll$1.p;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = pagerState$scroll$1.r;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            pagerState = pagerState$scroll$1.m;
                            ResultKt.b(obj);
                            ((SnapshotMutableIntStateImpl) pagerState.q).k(-1);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Function2 function23 = (Function2) pagerState$scroll$1.o;
                    mutatePriority = pagerState$scroll$1.n;
                    pagerState = pagerState$scroll$1.m;
                    ResultKt.b(obj);
                    function22 = function23;
                } else {
                    ResultKt.b(obj);
                    pagerState$scroll$1.m = pagerState;
                    pagerState$scroll$1.n = mutatePriority;
                    pagerState$scroll$1.o = (SuspendLambda) function2;
                    pagerState$scroll$1.r = 1;
                    function22 = function2;
                }
                if (!pagerState.k.a()) {
                    ((SnapshotMutableIntStateImpl) pagerState.r).k(pagerState.d.a());
                }
                ScrollableState scrollableState = pagerState.k;
                pagerState$scroll$1.m = pagerState;
                pagerState$scroll$1.n = null;
                pagerState$scroll$1.o = null;
                pagerState$scroll$1.r = 2;
            }
        }
        pagerState$scroll$1 = new PagerState$scroll$1(pagerState, continuationImpl);
        Object obj2 = pagerState$scroll$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pagerState$scroll$1.r;
        if (i == 0) {
        }
        if (!pagerState.k.a()) {
        }
        ScrollableState scrollableState2 = pagerState.k;
        pagerState$scroll$1.m = pagerState;
        pagerState$scroll$1.n = null;
        pagerState$scroll$1.o = null;
        pagerState$scroll$1.r = 2;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.k.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.C).getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        return q(this, mutatePriority, function2, continuationImpl);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.B).getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f) {
        return this.k.e(f);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f(int i, SpringSpec springSpec, ContinuationImpl continuationImpl) {
        PagerState$animateScrollToPage$1 pagerState$animateScrollToPage$1;
        PagerState$animateScrollToPage$1 pagerState$animateScrollToPage$12;
        Object obj;
        int i2;
        int i3;
        float f;
        SpringSpec springSpec2;
        Function2 pagerState$animateScrollToPage$3;
        if (continuationImpl instanceof PagerState$animateScrollToPage$1) {
            pagerState$animateScrollToPage$1 = (PagerState$animateScrollToPage$1) continuationImpl;
            int i4 = pagerState$animateScrollToPage$1.q;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                pagerState$animateScrollToPage$1.q = i4 - Integer.MIN_VALUE;
                pagerState$animateScrollToPage$12 = pagerState$animateScrollToPage$1;
                Object obj2 = pagerState$animateScrollToPage$12.o;
                obj = CoroutineSingletons.j;
                i2 = pagerState$animateScrollToPage$12.q;
                Unit unit = Unit.a;
                if (i2 == 0) {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            ResultKt.b(obj2);
                            return unit;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    i3 = pagerState$animateScrollToPage$12.m;
                    SpringSpec springSpec3 = pagerState$animateScrollToPage$12.n;
                    ResultKt.b(obj2);
                    f = 0.0f;
                    springSpec2 = springSpec3;
                } else {
                    ResultKt.b(obj2);
                    PagerScrollPosition pagerScrollPosition = this.d;
                    if ((i != pagerScrollPosition.a() || pagerScrollPosition.b() != 0.0f) && l() != 0) {
                        pagerState$animateScrollToPage$12.n = springSpec;
                        pagerState$animateScrollToPage$12.m = i;
                        pagerState$animateScrollToPage$12.q = 1;
                        if (i(pagerState$animateScrollToPage$12) != obj) {
                            i3 = i;
                            f = 0.0f;
                            springSpec2 = springSpec;
                        }
                        return obj;
                    }
                    return unit;
                }
                pagerState$animateScrollToPage$3 = new PagerState$animateScrollToPage$3(this, j(i3), n() * f, springSpec2, null);
                pagerState$animateScrollToPage$12.n = null;
                pagerState$animateScrollToPage$12.q = 2;
                if (c(MutatePriority.j, pagerState$animateScrollToPage$3, pagerState$animateScrollToPage$12) != obj) {
                    return obj;
                }
                return unit;
            }
        }
        pagerState$animateScrollToPage$1 = new PagerState$animateScrollToPage$1(this, continuationImpl);
        pagerState$animateScrollToPage$12 = pagerState$animateScrollToPage$1;
        Object obj22 = pagerState$animateScrollToPage$12.o;
        obj = CoroutineSingletons.j;
        i2 = pagerState$animateScrollToPage$12.q;
        Unit unit2 = Unit.a;
        if (i2 == 0) {
        }
        pagerState$animateScrollToPage$3 = new PagerState$animateScrollToPage$3(this, j(i3), n() * f, springSpec2, null);
        pagerState$animateScrollToPage$12.n = null;
        pagerState$animateScrollToPage$12.q = 2;
        if (c(MutatePriority.j, pagerState$animateScrollToPage$3, pagerState$animateScrollToPage$12) != obj) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0228 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0340 A[Catch: all -> 0x037a, TRY_LEAVE, TryCatch #0 {all -> 0x037a, blocks: (B:41:0x02e0, B:44:0x02e9, B:47:0x02f6, B:49:0x0304, B:54:0x0340, B:56:0x0334, B:60:0x031c), top: B:40:0x02e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02a6  */
    /* JADX WARN: Type inference failed for: r15v12, types: [java.lang.Object, androidx.compose.foundation.lazy.layout.CachedItem] */
    /* JADX WARN: Type inference failed for: r2v14, types: [int] */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(PagerMeasureResult pagerMeasureResult, boolean z, boolean z2) {
        Object obj;
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i2;
        float f;
        int i3;
        Object obj2;
        boolean z8;
        CachedItem cachedItem;
        CachedItem cachedItem2;
        List list;
        int i4;
        ?? r2;
        int i5;
        boolean z9;
        Snapshot a;
        long i6;
        long d;
        long j;
        List list2 = pagerMeasureResult.a;
        int i7 = pagerMeasureResult.l;
        MeasuredPage measuredPage = pagerMeasureResult.i;
        MeasuredPage measuredPage2 = pagerMeasureResult.j;
        float f2 = pagerMeasureResult.k;
        this.s.e = list2.size();
        this.o = pagerMeasureResult.b + pagerMeasureResult.c;
        if (!z && this.a) {
            this.b = pagerMeasureResult;
            return;
        }
        boolean z10 = true;
        if (z) {
            this.a = true;
        }
        PagerCacheWindowLogic pagerCacheWindowLogic = this.t;
        boolean z11 = this.l;
        Function1 function1 = null;
        PagerScrollPosition pagerScrollPosition = this.d;
        if (z2) {
            ((SnapshotMutableFloatStateImpl) pagerScrollPosition.c).k(f2);
        } else {
            pagerScrollPosition.getClass();
            if (measuredPage2 != null) {
                obj = measuredPage2.d;
            } else {
                obj = null;
            }
            pagerScrollPosition.e = obj;
            if (pagerScrollPosition.d || !list2.isEmpty()) {
                pagerScrollPosition.d = true;
                if (measuredPage2 != null) {
                    i = measuredPage2.a;
                } else {
                    i = 0;
                }
                ((SnapshotMutableIntStateImpl) pagerScrollPosition.b).k(i);
                pagerScrollPosition.f.b(i);
                ((SnapshotMutableFloatStateImpl) pagerScrollPosition.c).k(f2);
            }
            if (z11) {
                PagerCacheWindowScope pagerCacheWindowScope = pagerCacheWindowLogic.o;
                MutableIntObjectMap mutableIntObjectMap = pagerCacheWindowLogic.e;
                pagerCacheWindowScope.b = pagerMeasureResult;
                pagerCacheWindowScope.c = pagerCacheWindowLogic.n;
                PagerState$pagerCacheWindow$1 pagerState$pagerCacheWindow$1 = pagerCacheWindowLogic.a;
                int i8 = pagerCacheWindowLogic.g;
                int i9 = -1;
                float f3 = 0.0f;
                if (i8 != -1 && i8 != pagerCacheWindowScope.i()) {
                    pagerCacheWindowLogic.l = true;
                    if (pagerCacheWindowScope.c()) {
                        int i10 = pagerCacheWindowLogic.h;
                        if (i10 < 0) {
                            i10 = 0;
                        }
                        pagerCacheWindowLogic.h = i10;
                        if (pagerCacheWindowScope.e().a.isEmpty()) {
                            i4 = -1;
                        } else {
                            i4 = pagerCacheWindowScope.i() - 1;
                        }
                        if (i4 != -1) {
                            int i11 = pagerCacheWindowLogic.i;
                            if (i11 <= i4) {
                                i4 = i11;
                            }
                            pagerCacheWindowLogic.i = i4;
                        }
                        if (pagerCacheWindowLogic.f <= 0.0f) {
                            pagerCacheWindowLogic.e(pagerCacheWindowScope.d(), pagerCacheWindowLogic.m - 1);
                        } else {
                            pagerCacheWindowLogic.e(0, pagerCacheWindowScope.b());
                        }
                    }
                }
                pagerCacheWindowLogic.m = pagerCacheWindowScope.i();
                if (pagerCacheWindowScope.c()) {
                    int size = pagerCacheWindowScope.e().r.size() + pagerCacheWindowScope.e().a.size() + pagerCacheWindowScope.e().q.size();
                    int i12 = 0;
                    while (i12 < size) {
                        int size2 = pagerCacheWindowScope.e().q.size();
                        int size3 = pagerCacheWindowScope.e().a.size();
                        if (i12 < size2) {
                            i3 = ((MeasuredPage) pagerCacheWindowScope.e().q.get(i12)).a;
                            f = f3;
                        } else {
                            f = f3;
                            if (i12 >= size2 && i12 < size2 + size3) {
                                i3 = ((MeasuredPage) pagerCacheWindowScope.e().a.get(i12 - size2)).a;
                            } else if (i12 >= size2 + size3) {
                                i3 = ((MeasuredPage) pagerCacheWindowScope.e().r.get((i12 - size2) - size3)).a;
                            } else {
                                i3 = i9;
                            }
                        }
                        int size4 = pagerCacheWindowScope.e().q.size();
                        int size5 = pagerCacheWindowScope.e().a.size();
                        if (i12 < size4) {
                            obj2 = ((MeasuredPage) pagerCacheWindowScope.e().q.get(i12)).d;
                        } else if (i12 >= size4 && i12 < size4 + size5) {
                            obj2 = ((MeasuredPage) pagerCacheWindowScope.e().a.get(i12 - size4)).d;
                        } else if (i12 >= size4 + size5) {
                            obj2 = ((MeasuredPage) pagerCacheWindowScope.e().r.get((i12 - size4) - size5)).d;
                        } else {
                            obj2 = CachedItem.c;
                        }
                        int i13 = pagerCacheWindowScope.e().b;
                        if (i3 != i9) {
                            if (mutableIntObjectMap.a(i3)) {
                                Object b = mutableIntObjectMap.b(i3);
                                b.getClass();
                                int i14 = ((CachedItem) b).b;
                                Object b2 = mutableIntObjectMap.b(i3);
                                b2.getClass();
                                Object obj3 = ((CachedItem) b2).a;
                                if (i14 != i13 || !Intrinsics.a(obj3, obj2)) {
                                    z8 = true;
                                    pagerCacheWindowLogic.l = true;
                                    cachedItem = (CachedItem) mutableIntObjectMap.b(i3);
                                    if (cachedItem == null) {
                                        cachedItem.b = i13;
                                        cachedItem.a = obj2;
                                        cachedItem2 = cachedItem;
                                    } else {
                                        ?? obj4 = new Object();
                                        obj4.a = obj2;
                                        obj4.b = i13;
                                        cachedItem2 = obj4;
                                    }
                                    mutableIntObjectMap.i(i3, cachedItem2);
                                    pagerCacheWindowLogic.h = Math.min(pagerCacheWindowLogic.h, i3);
                                    pagerCacheWindowLogic.i = Math.max(pagerCacheWindowLogic.i, i3);
                                    list = (List) pagerCacheWindowLogic.b.g(i3);
                                    if (list == null) {
                                        int size6 = list.size();
                                        for (int i15 = 0; i15 < size6; i15++) {
                                            ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i15)).cancel();
                                        }
                                    }
                                }
                            }
                            z8 = true;
                            cachedItem = (CachedItem) mutableIntObjectMap.b(i3);
                            if (cachedItem == null) {
                            }
                            mutableIntObjectMap.i(i3, cachedItem2);
                            pagerCacheWindowLogic.h = Math.min(pagerCacheWindowLogic.h, i3);
                            pagerCacheWindowLogic.i = Math.max(pagerCacheWindowLogic.i, i3);
                            list = (List) pagerCacheWindowLogic.b.g(i3);
                            if (list == null) {
                            }
                        } else {
                            z8 = true;
                        }
                        i12++;
                        f3 = f;
                        z10 = z8;
                        i9 = -1;
                    }
                    boolean z12 = z10;
                    float f4 = f3;
                    if (pagerCacheWindowLogic.l) {
                        if (pagerCacheWindowLogic.f <= f4) {
                            z6 = z12;
                        } else {
                            z6 = false;
                        }
                        if (pagerCacheWindowScope.c()) {
                            pagerCacheWindowScope.h();
                            if (pagerCacheWindowScope.e().t != null) {
                                i2 = pagerState$pagerCacheWindow$1.a.o;
                            } else {
                                i2 = 0;
                            }
                            z4 = z12;
                            int i16 = i2;
                            z3 = z11;
                            z7 = false;
                            pagerCacheWindowLogic.d(pagerCacheWindowScope, pagerCacheWindowScope.b(), pagerCacheWindowScope.d(), i16, pagerCacheWindowScope.f(), pagerCacheWindowScope.g(), 0.0f, z6);
                        } else {
                            z3 = z11;
                            z4 = z12;
                            z7 = false;
                        }
                        pagerCacheWindowLogic.l = z7;
                        z5 = z7;
                    } else {
                        z3 = z11;
                        z4 = z12;
                        z5 = false;
                    }
                } else {
                    z3 = z11;
                    z4 = true;
                    z5 = false;
                    pagerCacheWindowLogic.f();
                }
                pagerCacheWindowLogic.g = pagerCacheWindowScope.i();
                r2 = z5;
                ((SnapshotMutableStateImpl) this.m).setValue(pagerMeasureResult);
                ((SnapshotMutableStateImpl) this.B).setValue(Boolean.valueOf(pagerMeasureResult.m));
                if (measuredPage == null) {
                    i5 = measuredPage.a;
                } else {
                    i5 = r2;
                }
                if (i5 != 0 && i7 == 0) {
                    z9 = r2;
                } else {
                    z9 = z4;
                }
                ((SnapshotMutableStateImpl) this.C).setValue(Boolean.valueOf(z9));
                if (measuredPage != null) {
                    this.e = measuredPage.a;
                }
                this.f = i7;
                a = Snapshot.Companion.a();
                if (a != null) {
                    function1 = a.e();
                }
                Function1 function12 = function1;
                Snapshot b3 = Snapshot.Companion.b(a);
                if (z3) {
                    try {
                        if (pagerMeasureResult.h < l() && Math.abs(this.j) > 0.5f) {
                            float f5 = this.j;
                            if (((PagerMeasureResult) k()).e == Orientation.j) {
                                if (Math.signum(f5) == Math.signum(-Float.intBitsToFloat((int) (o() & 4294967295L)))) {
                                    if (!z4) {
                                        pagerCacheWindowLogic.h(this.j, pagerMeasureResult);
                                    }
                                }
                                if (p()) {
                                    z4 = r2;
                                }
                                if (!z4) {
                                }
                            } else {
                                if (Math.signum(f5) == Math.signum(-Float.intBitsToFloat((int) (o() >> 32)))) {
                                    if (!z4) {
                                    }
                                }
                                if (p()) {
                                }
                                if (!z4) {
                                }
                            }
                        }
                    } finally {
                        Snapshot.Companion.e(a, b3, function12);
                    }
                }
                this.g = PagerStateKt.a(pagerMeasureResult, l());
                l();
                if (pagerMeasureResult.e != Orientation.k) {
                    i6 = pagerMeasureResult.i() >> 32;
                } else {
                    i6 = pagerMeasureResult.i() & 4294967295L;
                }
                int i17 = (int) i6;
                pagerMeasureResult.n.getClass();
                d = RangesKt.d(r2, r2, i17);
                j = this.g;
                if (d > j) {
                    d = j;
                }
                this.h = d;
            }
        }
        z4 = true;
        z3 = z11;
        r2 = 0;
        ((SnapshotMutableStateImpl) this.m).setValue(pagerMeasureResult);
        ((SnapshotMutableStateImpl) this.B).setValue(Boolean.valueOf(pagerMeasureResult.m));
        if (measuredPage == null) {
        }
        if (i5 != 0) {
        }
        z9 = z4;
        ((SnapshotMutableStateImpl) this.C).setValue(Boolean.valueOf(z9));
        if (measuredPage != null) {
        }
        this.f = i7;
        a = Snapshot.Companion.a();
        if (a != null) {
        }
        Function1 function122 = function1;
        Snapshot b32 = Snapshot.Companion.b(a);
        if (z3) {
        }
        this.g = PagerStateKt.a(pagerMeasureResult, l());
        l();
        if (pagerMeasureResult.e != Orientation.k) {
        }
        int i172 = (int) i6;
        pagerMeasureResult.n.getClass();
        d = RangesKt.d(r2, r2, i172);
        j = this.g;
        if (d > j) {
        }
        this.h = d;
    }

    public final Object i(ContinuationImpl continuationImpl) {
        Object k;
        if (((SnapshotMutableStateImpl) this.m).getValue() == PagerStateKt.b && (k = this.v.k(continuationImpl)) == CoroutineSingletons.j) {
            return k;
        }
        return Unit.a;
    }

    public final int j(int i) {
        if (l() <= 0) {
            return 0;
        }
        return RangesKt.d(i, 0, l() - 1);
    }

    public final PagerLayoutInfo k() {
        return (PagerLayoutInfo) ((SnapshotMutableStateImpl) this.m).getValue();
    }

    public abstract int l();

    public final int m() {
        return ((PagerMeasureResult) ((SnapshotMutableStateImpl) this.m).getValue()).b;
    }

    public final int n() {
        return ((PagerMeasureResult) ((SnapshotMutableStateImpl) this.m).getValue()).c + m();
    }

    public final long o() {
        return ((Offset) ((SnapshotMutableStateImpl) this.c).getValue()).a;
    }

    public final boolean p() {
        if (((int) Float.intBitsToFloat((int) (o() >> 32))) == 0 && ((int) Float.intBitsToFloat((int) (o() & 4294967295L))) == 0) {
            return true;
        }
        return false;
    }

    public final void r(int i, float f, boolean z) {
        PagerScrollPosition pagerScrollPosition = this.d;
        if (pagerScrollPosition.a() != i || pagerScrollPosition.b() != f) {
            this.t.f();
        }
        ((SnapshotMutableIntStateImpl) pagerScrollPosition.b).k(i);
        pagerScrollPosition.f.b(i);
        ((SnapshotMutableFloatStateImpl) pagerScrollPosition.c).k(f);
        pagerScrollPosition.e = null;
        if (z) {
            Remeasurement remeasurement = (Remeasurement) ((SnapshotMutableStateImpl) this.w).getValue();
            if (remeasurement != null) {
                ((LayoutNode) remeasurement).k();
                return;
            }
            return;
        }
        this.A.setValue(Unit.a);
    }
}
