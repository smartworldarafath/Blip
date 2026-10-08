package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.node.LayoutNode;
import defpackage.a7;
import defpackage.u2;
import defpackage.z6;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridState implements ScrollableState {
    public static final SaverKt$Saver$1 w = ListSaverKt.a(new z6(9), new a7(25));
    public boolean b;
    public LazyGridMeasureResult c;
    public final LazyGridScrollPosition d;
    public float g;
    public Remeasurement j;
    public final LazyLayoutPrefetchState o;
    public final MutableState t;
    public final MutableState u;
    public final LazyLayoutScrollDeltaBetweenPasses v;
    public final LazyGridPrefetchStrategy a = new DefaultLazyGridPrefetchStrategy();
    public final MutableState e = SnapshotStateKt.f(LazyGridStateKt.a, SnapshotStateKt.h());
    public final MutableInteractionSource f = InteractionSourceKt.a();
    public final ScrollableState h = ScrollableStateKt.a(new defpackage.c(27, this));
    public final boolean i = true;
    public final LazyGridState$remeasurementModifier$1 k = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.grid.LazyGridState$remeasurementModifier$1
        @Override // androidx.compose.ui.layout.RemeasurementModifier
        public final void m(LayoutNode layoutNode) {
            LazyGridState.this.j = layoutNode;
        }
    };
    public final AwaitFirstLayoutModifier l = new Object();
    public final LazyLayoutItemAnimator m = new LazyLayoutItemAnimator();
    public final LazyLayoutBeyondBoundsInfo n = new LazyLayoutBeyondBoundsInfo();
    public final LazyGridState$prefetchScope$1 p = new LazyGridState$prefetchScope$1(this);
    public final LazyLayoutPinnedItemList q = new LazyLayoutPinnedItemList();
    public final MutableState r = ObservableScopeInvalidator.a();
    public final MutableState s = ObservableScopeInvalidator.a();

    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.compose.foundation.lazy.grid.LazyGridState$remeasurementModifier$1] */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier] */
    public LazyGridState(final int i, int i2) {
        this.d = new LazyGridScrollPosition(i, i2);
        this.o = new LazyLayoutPrefetchState(new Function1() { // from class: androidx.compose.foundation.lazy.grid.e
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Function1 function1;
                int b;
                NestedPrefetchScope nestedPrefetchScope = (NestedPrefetchScope) obj;
                LazyGridPrefetchStrategy lazyGridPrefetchStrategy = LazyGridState.this.a;
                Snapshot a = Snapshot.Companion.a();
                if (a != null) {
                    function1 = a.e();
                } else {
                    function1 = null;
                }
                Snapshot.Companion.e(a, Snapshot.Companion.b(a), function1);
                ((DefaultLazyGridPrefetchStrategy) lazyGridPrefetchStrategy).getClass();
                if (nestedPrefetchScope.b() == -1) {
                    b = 2;
                } else {
                    b = nestedPrefetchScope.b();
                }
                for (int i3 = 0; i3 < b; i3++) {
                    nestedPrefetchScope.a(i + i3);
                }
                return Unit.a;
            }
        });
        Boolean bool = Boolean.FALSE;
        this.t = SnapshotStateKt.g(bool);
        this.u = SnapshotStateKt.g(bool);
        this.v = new LazyLayoutScrollDeltaBetweenPasses();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.h.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.u).getValue()).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
    
        if (r6.h.c(r7, r8, r0) != r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        if (r6.l.k(r0) == r1) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        LazyGridState$scroll$1 lazyGridState$scroll$1;
        int i;
        Function2 function22;
        if (continuationImpl instanceof LazyGridState$scroll$1) {
            lazyGridState$scroll$1 = (LazyGridState$scroll$1) continuationImpl;
            int i2 = lazyGridState$scroll$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lazyGridState$scroll$1.q = i2 - Integer.MIN_VALUE;
                Object obj = lazyGridState$scroll$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = lazyGridState$scroll$1.q;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Function2 function23 = (Function2) lazyGridState$scroll$1.n;
                    mutatePriority = lazyGridState$scroll$1.m;
                    ResultKt.b(obj);
                    function22 = function23;
                } else {
                    ResultKt.b(obj);
                    function22 = function2;
                    if (((SnapshotMutableStateImpl) this.e).getValue() == LazyGridStateKt.a) {
                        lazyGridState$scroll$1.m = mutatePriority;
                        lazyGridState$scroll$1.n = (SuspendLambda) function2;
                        lazyGridState$scroll$1.q = 1;
                        function22 = function2;
                    }
                }
                lazyGridState$scroll$1.m = null;
                lazyGridState$scroll$1.n = null;
                lazyGridState$scroll$1.q = 2;
            }
        }
        lazyGridState$scroll$1 = new LazyGridState$scroll$1(this, continuationImpl);
        Object obj2 = lazyGridState$scroll$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = lazyGridState$scroll$1.q;
        if (i == 0) {
        }
        lazyGridState$scroll$1.m = null;
        lazyGridState$scroll$1.n = null;
        lazyGridState$scroll$1.q = 2;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.t).getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f) {
        return this.h.e(f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f(LazyGridMeasureResult lazyGridMeasureResult, boolean z, boolean z2) {
        int i;
        boolean z3;
        Object[] objArr;
        int i2;
        LazyGridMeasuredItem lazyGridMeasuredItem;
        boolean z4;
        LazyGridMeasuredItem lazyGridMeasuredItem2;
        LazyGridMeasuredItem lazyGridMeasuredItem3;
        List list = lazyGridMeasureResult.n;
        int i3 = lazyGridMeasureResult.q;
        LazyGridMeasuredLine lazyGridMeasuredLine = lazyGridMeasureResult.a;
        int i4 = lazyGridMeasureResult.b;
        this.o.e = list.size();
        Object obj = null;
        Function1 function1 = null;
        obj = null;
        LazyGridScrollPosition lazyGridScrollPosition = this.d;
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses = this.v;
        boolean z5 = false;
        if (!z && this.b) {
            this.c = lazyGridMeasureResult;
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            }
            Snapshot b = Snapshot.Companion.b(a);
            try {
                if (((Number) ((SnapshotMutableStateImpl) lazyLayoutScrollDeltaBetweenPasses.b.k).getValue()).floatValue() == 0.0f) {
                    z5 = true;
                }
                if (!z5 && i4 == lazyGridScrollPosition.b() && lazyGridMeasuredLine != null && (lazyGridMeasuredItem3 = (LazyGridMeasuredItem) ArraysKt.q(lazyGridMeasuredLine.b)) != null && lazyGridMeasuredItem3.a == lazyGridScrollPosition.a()) {
                    lazyLayoutScrollDeltaBetweenPasses.a();
                }
                return;
            } finally {
                Snapshot.Companion.e(a, b, function1);
            }
        }
        if (z) {
            this.b = true;
        }
        this.g -= lazyGridMeasureResult.d;
        ((SnapshotMutableStateImpl) this.e).setValue(lazyGridMeasureResult);
        if (lazyGridMeasuredLine != null) {
            i = lazyGridMeasuredLine.a;
        } else {
            i = 0;
        }
        if (i == 0 && i4 == 0) {
            z3 = false;
        } else {
            z3 = true;
        }
        ((SnapshotMutableStateImpl) this.u).setValue(Boolean.valueOf(z3));
        ((SnapshotMutableStateImpl) this.t).setValue(Boolean.valueOf(lazyGridMeasureResult.c));
        if (z2) {
            lazyGridScrollPosition.getClass();
            if (i4 >= 0.0f) {
                z5 = true;
            }
            if (!z5) {
                InlineClassHelperKt.c("scrollOffset should be non-negative");
            }
            ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.b).k(i4);
        } else {
            lazyGridScrollPosition.getClass();
            if (lazyGridMeasuredLine != null && (lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ArraysKt.q(lazyGridMeasuredLine.b)) != null) {
                obj = lazyGridMeasuredItem2.b;
            }
            lazyGridScrollPosition.d = obj;
            if (lazyGridScrollPosition.c || i3 > 0) {
                lazyGridScrollPosition.c = true;
                if (i4 >= 0.0f) {
                    objArr = true;
                } else {
                    objArr = false;
                }
                if (objArr == false) {
                    InlineClassHelperKt.c("scrollOffset should be non-negative (" + i4 + ")");
                }
                if (lazyGridMeasuredLine != null && (lazyGridMeasuredItem = (LazyGridMeasuredItem) ArraysKt.q(lazyGridMeasuredLine.b)) != null) {
                    i2 = lazyGridMeasuredItem.a;
                } else {
                    i2 = 0;
                }
                lazyGridScrollPosition.c(i2, i4);
            }
            if (this.i) {
                DefaultLazyGridPrefetchStrategy defaultLazyGridPrefetchStrategy = (DefaultLazyGridPrefetchStrategy) this.a;
                MutableVector mutableVector = defaultLazyGridPrefetchStrategy.b;
                int i5 = defaultLazyGridPrefetchStrategy.a;
                boolean z6 = defaultLazyGridPrefetchStrategy.c;
                if (i5 != -1 && !list.isEmpty() && i5 != DefaultLazyGridPrefetchStrategy.b(lazyGridMeasureResult, z6)) {
                    defaultLazyGridPrefetchStrategy.a = -1;
                    Object[] objArr2 = mutableVector.j;
                    int i6 = mutableVector.l;
                    for (int i7 = 0; i7 < i6; i7++) {
                        ((LazyLayoutPrefetchState.PrefetchHandle) objArr2[i7]).cancel();
                    }
                    mutableVector.g();
                }
                int i8 = defaultLazyGridPrefetchStrategy.d;
                if (i8 != -1 && defaultLazyGridPrefetchStrategy.e != 0.0f && i8 != i3 && !list.isEmpty()) {
                    if (defaultLazyGridPrefetchStrategy.e < 0.0f) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    int b2 = DefaultLazyGridPrefetchStrategy.b(lazyGridMeasureResult, z4);
                    if (defaultLazyGridPrefetchStrategy.e < 0.0f) {
                        z5 = true;
                    }
                    int a2 = DefaultLazyGridPrefetchStrategy.a(lazyGridMeasureResult, z5);
                    if (a2 >= 0 && a2 < i3 && b2 != defaultLazyGridPrefetchStrategy.a && b2 >= 0) {
                        defaultLazyGridPrefetchStrategy.a = b2;
                        mutableVector.g();
                        mutableVector.d(mutableVector.l, this.p.a(b2));
                    }
                }
                defaultLazyGridPrefetchStrategy.d = i3;
            }
        }
        if (z) {
            lazyLayoutScrollDeltaBetweenPasses.b(lazyGridMeasureResult.f, lazyGridMeasureResult.i, lazyGridMeasureResult.h);
        }
    }

    public final LazyGridLayoutInfo g() {
        return (LazyGridLayoutInfo) ((SnapshotMutableStateImpl) this.e).getValue();
    }

    public final void h(float f, LazyGridLayoutInfo lazyGridLayoutInfo) {
        boolean z;
        long j;
        if (this.i) {
            DefaultLazyGridPrefetchStrategy defaultLazyGridPrefetchStrategy = (DefaultLazyGridPrefetchStrategy) this.a;
            MutableVector mutableVector = defaultLazyGridPrefetchStrategy.b;
            if (!((LazyGridMeasureResult) lazyGridLayoutInfo).n.isEmpty()) {
                int i = 0;
                if (f < 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                int b = DefaultLazyGridPrefetchStrategy.b(lazyGridLayoutInfo, z);
                int a = DefaultLazyGridPrefetchStrategy.a(lazyGridLayoutInfo, z);
                if (a >= 0) {
                    LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) lazyGridLayoutInfo;
                    Orientation orientation = lazyGridMeasureResult.r;
                    if (a < lazyGridMeasureResult.q) {
                        if (b != defaultLazyGridPrefetchStrategy.a && b >= 0) {
                            if (defaultLazyGridPrefetchStrategy.c != z) {
                                Object[] objArr = mutableVector.j;
                                int i2 = mutableVector.l;
                                for (int i3 = 0; i3 < i2; i3++) {
                                    ((LazyLayoutPrefetchState.PrefetchHandle) objArr[i3]).cancel();
                                }
                            }
                            defaultLazyGridPrefetchStrategy.c = z;
                            defaultLazyGridPrefetchStrategy.a = b;
                            mutableVector.g();
                            mutableVector.d(mutableVector.l, this.p.a(b));
                        }
                        List list = lazyGridMeasureResult.n;
                        if (z) {
                            LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) CollectionsKt.z(list);
                            if (orientation == Orientation.j) {
                                j = ((LazyGridMeasuredItem) lazyGridItemInfo).t & 4294967295L;
                            } else {
                                j = ((LazyGridMeasuredItem) lazyGridItemInfo).t >> 32;
                            }
                            int i4 = (int) j;
                            if (((LazyGridSnapLayoutInfoProviderKt.a(lazyGridItemInfo, orientation) + i4) + lazyGridMeasureResult.t) - lazyGridMeasureResult.p < (-f)) {
                                Object[] objArr2 = mutableVector.j;
                                int i5 = mutableVector.l;
                                while (i < i5) {
                                    ((LazyLayoutPrefetchState.PrefetchHandle) objArr2[i]).a();
                                    i++;
                                }
                            }
                        } else {
                            if (lazyGridMeasureResult.o - LazyGridSnapLayoutInfoProviderKt.a((LazyGridItemInfo) CollectionsKt.s(list), orientation) < f) {
                                Object[] objArr3 = mutableVector.j;
                                int i6 = mutableVector.l;
                                while (i < i6) {
                                    ((LazyLayoutPrefetchState.PrefetchHandle) objArr3[i]).a();
                                    i++;
                                }
                            }
                        }
                    }
                }
            }
            defaultLazyGridPrefetchStrategy.e = f;
        }
    }
}
