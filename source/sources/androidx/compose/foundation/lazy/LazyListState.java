package androidx.compose.foundation.lazy;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollDeltaBetweenPasses;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.layout.RemeasurementModifier;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.a7;
import defpackage.r0;
import defpackage.u2;
import defpackage.z6;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListState implements ScrollableState {
    public static final SaverKt$Saver$1 y = ListSaverKt.a(new z6(10), new a7(29));
    public final LazyListPrefetchStrategy a;
    public boolean b;
    public LazyListMeasureResult c;
    public boolean d;
    public final LazyListScrollPosition e;
    public final MutableState f;
    public final MutableInteractionSource g;
    public float h;
    public boolean i;
    public final ScrollableState j;
    public final boolean k;
    public Remeasurement l;
    public final LazyListState$remeasurementModifier$1 m;
    public final AwaitFirstLayoutModifier n;
    public final LazyLayoutItemAnimator o;
    public final LazyLayoutBeyondBoundsInfo p;
    public final LazyLayoutPrefetchState q;
    public final LazyListState$prefetchScope$1 r;
    public final LazyLayoutPinnedItemList s;
    public final MutableState t;
    public final MutableState u;
    public final MutableState v;
    public final MutableState w;
    public final LazyLayoutScrollDeltaBetweenPasses x;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.lazy.LazyListPrefetchStrategy, java.lang.Object, androidx.compose.foundation.lazy.DefaultLazyListPrefetchStrategy] */
    /* JADX WARN: Type inference failed for: r4v7, types: [androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object, androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier] */
    public LazyListState(int i, int i2) {
        ?? obj = new Object();
        obj.a = -1;
        obj.d = -1;
        this.a = obj;
        this.e = new LazyListScrollPosition(i, i2);
        this.f = SnapshotStateKt.f(LazyListStateKt.a, SnapshotStateKt.h());
        this.g = InteractionSourceKt.a();
        this.j = ScrollableStateKt.a(new defpackage.c(29, this));
        this.k = true;
        this.m = new RemeasurementModifier() { // from class: androidx.compose.foundation.lazy.LazyListState$remeasurementModifier$1
            @Override // androidx.compose.ui.layout.RemeasurementModifier
            public final void m(LayoutNode layoutNode) {
                LazyListState.this.l = layoutNode;
            }
        };
        this.n = new Object();
        this.o = new LazyLayoutItemAnimator();
        this.p = new LazyLayoutBeyondBoundsInfo();
        this.q = new LazyLayoutPrefetchState(new r0(this, i));
        this.r = new LazyListState$prefetchScope$1(this);
        this.s = new LazyLayoutPinnedItemList();
        this.t = ObservableScopeInvalidator.a();
        Boolean bool = Boolean.FALSE;
        this.u = SnapshotStateKt.g(bool);
        this.v = SnapshotStateKt.g(bool);
        this.w = ObservableScopeInvalidator.a();
        this.x = new LazyLayoutScrollDeltaBetweenPasses();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean a() {
        return this.j.a();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean b() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.v).getValue()).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0069, code lost:
    
        if (r6.j.c(r7, r8, r0) != r1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
    
        if (r6.n.k(r0) == r1) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.foundation.gestures.ScrollableState
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        LazyListState$scroll$1 lazyListState$scroll$1;
        int i;
        Function2 function22;
        if (continuationImpl instanceof LazyListState$scroll$1) {
            lazyListState$scroll$1 = (LazyListState$scroll$1) continuationImpl;
            int i2 = lazyListState$scroll$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                lazyListState$scroll$1.q = i2 - Integer.MIN_VALUE;
                Object obj = lazyListState$scroll$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = lazyListState$scroll$1.q;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Function2 function23 = (Function2) lazyListState$scroll$1.n;
                    mutatePriority = lazyListState$scroll$1.m;
                    ResultKt.b(obj);
                    function22 = function23;
                } else {
                    ResultKt.b(obj);
                    function22 = function2;
                    if (((SnapshotMutableStateImpl) this.f).getValue() == LazyListStateKt.a) {
                        lazyListState$scroll$1.m = mutatePriority;
                        lazyListState$scroll$1.n = (SuspendLambda) function2;
                        lazyListState$scroll$1.q = 1;
                        function22 = function2;
                    }
                }
                lazyListState$scroll$1.m = null;
                lazyListState$scroll$1.n = null;
                lazyListState$scroll$1.q = 2;
            }
        }
        lazyListState$scroll$1 = new LazyListState$scroll$1(this, continuationImpl);
        Object obj2 = lazyListState$scroll$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = lazyListState$scroll$1.q;
        if (i == 0) {
        }
        lazyListState$scroll$1.m = null;
        lazyListState$scroll$1.n = null;
        lazyListState$scroll$1.q = 2;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean d() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.u).getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float e(float f) {
        return this.j.e(f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlin.Unit, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f(int i, int i2, ContinuationImpl continuationImpl) {
        LazyListState$animateScrollToItem$1 lazyListState$animateScrollToItem$1;
        int i3;
        try {
            if (continuationImpl instanceof LazyListState$animateScrollToItem$1) {
                lazyListState$animateScrollToItem$1 = (LazyListState$animateScrollToItem$1) continuationImpl;
                int i4 = lazyListState$animateScrollToItem$1.o;
                if ((i4 & Integer.MIN_VALUE) != 0) {
                    lazyListState$animateScrollToItem$1.o = i4 - Integer.MIN_VALUE;
                    Object obj = lazyListState$animateScrollToItem$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i3 = lazyListState$animateScrollToItem$1.o;
                    if (i3 == 0) {
                        if (i3 == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        this.i = true;
                        LazyListState$animateScrollToItem$2 lazyListState$animateScrollToItem$2 = new LazyListState$animateScrollToItem$2(this, i, i2, null);
                        lazyListState$animateScrollToItem$1.o = 1;
                        if (c(MutatePriority.j, lazyListState$animateScrollToItem$2, lazyListState$animateScrollToItem$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    this.i = false;
                    this = Unit.a;
                    return this;
                }
            }
            if (i3 == 0) {
            }
            this.i = false;
            this = Unit.a;
            return this;
        } catch (Throwable th) {
            this.i = false;
            throw th;
        }
        lazyListState$animateScrollToItem$1 = new LazyListState$animateScrollToItem$1(this, continuationImpl);
        Object obj2 = lazyListState$animateScrollToItem$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i3 = lazyListState$animateScrollToItem$1.o;
    }

    public final void g(LazyListMeasureResult lazyListMeasureResult, boolean z, boolean z2) {
        int i;
        boolean z3;
        float f;
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses;
        long j;
        long j2;
        Object obj;
        boolean z4;
        int i2;
        List list = lazyListMeasureResult.l;
        int i3 = lazyListMeasureResult.o;
        int i4 = lazyListMeasureResult.b;
        LazyListMeasuredItem lazyListMeasuredItem = lazyListMeasureResult.a;
        this.q.e = list.size();
        LazyLayoutScrollDeltaBetweenPasses lazyLayoutScrollDeltaBetweenPasses2 = this.x;
        Function1 function1 = null;
        boolean z5 = false;
        LazyListScrollPosition lazyListScrollPosition = this.e;
        if (!z && this.b) {
            this.c = lazyListMeasureResult;
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            }
            Snapshot b = Snapshot.Companion.b(a);
            try {
                if (((Number) ((SnapshotMutableStateImpl) lazyLayoutScrollDeltaBetweenPasses2.b.k).getValue()).floatValue() == 0.0f) {
                    z5 = true;
                }
                if (!z5 && lazyListMeasuredItem != null && lazyListMeasuredItem.a == lazyListScrollPosition.a() && i4 == lazyListScrollPosition.b()) {
                    lazyLayoutScrollDeltaBetweenPasses2.a();
                }
                return;
            } finally {
                Snapshot.Companion.e(a, b, function1);
            }
        }
        if (z) {
            this.b = true;
        }
        if (lazyListMeasuredItem != null) {
            i = lazyListMeasuredItem.a;
        } else {
            i = 0;
        }
        if (i == 0 && i4 == 0) {
            z3 = false;
        } else {
            z3 = true;
        }
        ((SnapshotMutableStateImpl) this.v).setValue(Boolean.valueOf(z3));
        ((SnapshotMutableStateImpl) this.u).setValue(Boolean.valueOf(lazyListMeasureResult.c));
        this.h -= lazyListMeasureResult.d;
        ((SnapshotMutableStateImpl) this.f).setValue(lazyListMeasureResult);
        if (z2) {
            lazyListScrollPosition.getClass();
            if (i4 >= 0.0f) {
                z5 = true;
            }
            if (!z5) {
                InlineClassHelperKt.c("scrollOffset should be non-negative");
            }
            ((SnapshotMutableIntStateImpl) lazyListScrollPosition.b).k(i4);
            lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses2;
        } else {
            LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.t(list);
            LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.A(list);
            if (lazyListMeasuredItem2 != null) {
                f = 0.0f;
                lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses2;
                j = lazyListMeasuredItem2.a;
            } else {
                f = 0.0f;
                lazyLayoutScrollDeltaBetweenPasses = lazyLayoutScrollDeltaBetweenPasses2;
                j = -1;
            }
            AndroidTrace_androidKt.a(j, "firstVisibleItem:index");
            if (lazyListMeasuredItem3 != null) {
                j2 = lazyListMeasuredItem3.a;
            } else {
                j2 = -1;
            }
            AndroidTrace_androidKt.a(j2, "lastVisibleItem:index");
            lazyListScrollPosition.getClass();
            if (lazyListMeasuredItem != null) {
                obj = lazyListMeasuredItem.i;
            } else {
                obj = null;
            }
            lazyListScrollPosition.d = obj;
            if (lazyListScrollPosition.c || i3 > 0) {
                lazyListScrollPosition.c = true;
                if (i4 >= f) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (!z4) {
                    InlineClassHelperKt.c("scrollOffset should be non-negative");
                }
                if (lazyListMeasuredItem != null) {
                    i2 = lazyListMeasuredItem.a;
                } else {
                    i2 = 0;
                }
                lazyListScrollPosition.c(i2, i4);
            }
            if (this.k) {
                DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = (DefaultLazyListPrefetchStrategy) this.a;
                int i5 = defaultLazyListPrefetchStrategy.a;
                boolean z6 = defaultLazyListPrefetchStrategy.c;
                if (i5 != -1 && !list.isEmpty() && i5 != DefaultLazyListPrefetchStrategy.a(lazyListMeasureResult, z6)) {
                    defaultLazyListPrefetchStrategy.a = -1;
                    LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = defaultLazyListPrefetchStrategy.b;
                    if (prefetchHandle != null) {
                        prefetchHandle.cancel();
                    }
                    defaultLazyListPrefetchStrategy.b = null;
                }
                int i6 = defaultLazyListPrefetchStrategy.d;
                if (i6 != -1 && defaultLazyListPrefetchStrategy.e != f && i6 != i3 && !list.isEmpty()) {
                    if (defaultLazyListPrefetchStrategy.e < f) {
                        z5 = true;
                    }
                    int a2 = DefaultLazyListPrefetchStrategy.a(lazyListMeasureResult, z5);
                    if (a2 >= 0 && a2 < i3) {
                        defaultLazyListPrefetchStrategy.a = a2;
                        defaultLazyListPrefetchStrategy.b = LazyListPrefetchScope.a(this.r, a2);
                    }
                }
                defaultLazyListPrefetchStrategy.d = i3;
            }
        }
        if (z) {
            lazyLayoutScrollDeltaBetweenPasses.b(lazyListMeasureResult.f, lazyListMeasureResult.i, lazyListMeasureResult.h);
        }
    }

    public final LazyListLayoutInfo h() {
        return (LazyListLayoutInfo) ((SnapshotMutableStateImpl) this.f).getValue();
    }

    public final void i(float f, LazyListLayoutInfo lazyListLayoutInfo) {
        boolean z;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle2;
        if (this.k) {
            DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = (DefaultLazyListPrefetchStrategy) this.a;
            if (!((LazyListMeasureResult) lazyListLayoutInfo).l.isEmpty()) {
                if (f < 0.0f) {
                    z = true;
                } else {
                    z = false;
                }
                int a = DefaultLazyListPrefetchStrategy.a(lazyListLayoutInfo, z);
                if (a >= 0) {
                    LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) lazyListLayoutInfo;
                    if (a < lazyListMeasureResult.o) {
                        if (a != defaultLazyListPrefetchStrategy.a) {
                            if (defaultLazyListPrefetchStrategy.c != z) {
                                defaultLazyListPrefetchStrategy.a = -1;
                                LazyLayoutPrefetchState.PrefetchHandle prefetchHandle3 = defaultLazyListPrefetchStrategy.b;
                                if (prefetchHandle3 != null) {
                                    prefetchHandle3.cancel();
                                }
                                defaultLazyListPrefetchStrategy.b = null;
                            }
                            defaultLazyListPrefetchStrategy.c = z;
                            defaultLazyListPrefetchStrategy.a = a;
                            defaultLazyListPrefetchStrategy.b = LazyListPrefetchScope.a(this.r, a);
                        }
                        List list = lazyListMeasureResult.l;
                        if (z) {
                            LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.z(list);
                            if (((((LazyListMeasuredItem) lazyListItemInfo).m + ((LazyListMeasuredItem) lazyListItemInfo).n) + lazyListMeasureResult.r) - lazyListMeasureResult.n < (-f) && (prefetchHandle2 = defaultLazyListPrefetchStrategy.b) != null) {
                                prefetchHandle2.a();
                            }
                        } else if (lazyListMeasureResult.m - ((LazyListMeasuredItem) ((LazyListItemInfo) CollectionsKt.s(list))).m < f && (prefetchHandle = defaultLazyListPrefetchStrategy.b) != null) {
                            prefetchHandle.a();
                        }
                    }
                }
            }
            defaultLazyListPrefetchStrategy.e = f;
        }
    }

    public final void j(int i, int i2) {
        CacheWindowLogic cacheWindowLogic;
        LazyListScrollPosition lazyListScrollPosition = this.e;
        if (lazyListScrollPosition.a() != i || lazyListScrollPosition.b() != i2) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = this.o;
            lazyLayoutItemAnimator.e();
            lazyLayoutItemAnimator.b = null;
            lazyLayoutItemAnimator.c = -1;
            Object obj = this.a;
            if (obj instanceof CacheWindowLogic) {
                cacheWindowLogic = (CacheWindowLogic) obj;
            } else {
                cacheWindowLogic = null;
            }
            if (cacheWindowLogic != null) {
                cacheWindowLogic.f();
            }
        }
        lazyListScrollPosition.c(i, i2);
        lazyListScrollPosition.d = null;
        Remeasurement remeasurement = this.l;
        if (remeasurement != null) {
            ((LayoutNode) remeasurement).k();
        }
    }
}
