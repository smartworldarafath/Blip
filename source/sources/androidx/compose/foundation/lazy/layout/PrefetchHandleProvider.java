package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider;
import androidx.compose.foundation.lazy.layout.k;
import androidx.compose.runtime.PausedCompositionImpl;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.LongSaturatedMathKt;
import kotlin.time.MonotonicTimeSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PrefetchHandleProvider {
    public final LazyLayoutItemContentFactory a;
    public final SubcomposeLayoutState b;
    public final PrefetchScheduler c;
    public boolean d = true;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class HandleAndRequestImpl implements LazyLayoutPrefetchState.PrefetchHandle, PrefetchRequest, LazyLayoutPrefetchState.PrefetchResultScope {
        public final int a;
        public final PrefetchMetrics b;
        public final Function1 c;
        public Constraints d;
        public SubcomposeLayoutState.PrecomposedSlotHandle e;
        public SubcomposeLayoutState.PausedPrecomposition f;
        public boolean g;
        public boolean h;
        public boolean i;
        public Object j;
        public boolean k;
        public NestedPrefetchController l;
        public boolean m;
        public long n;
        public long o;
        public long p = MonotonicTimeSource.a();
        public boolean q;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public final class NestedPrefetchController {
            public final List a;
            public final List[] b;
            public int c;
            public int d;
            public boolean e;

            public NestedPrefetchController(List list) {
                this.a = list;
                this.b = new List[list.size()];
                if (list.isEmpty()) {
                    InlineClassHelperKt.a("NestedPrefetchController shouldn't be created with no states");
                }
            }
        }

        public HandleAndRequestImpl(int i, PrefetchMetrics prefetchMetrics, Function1 function1) {
            this.a = i;
            this.b = prefetchMetrics;
            this.c = function1;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public final void a() {
            this.m = true;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public final long b(int i) {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.e;
            if (precomposedSlotHandle != null) {
                return precomposedSlotHandle.b(i);
            }
            return 0L;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public final int c() {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.e;
            if (precomposedSlotHandle != null) {
                return precomposedSlotHandle.c();
            }
            return 0;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public final void cancel() {
            if (!this.h) {
                this.h = true;
                d();
            }
        }

        public final void d() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.f;
            if (pausedPrecomposition != null) {
                pausedPrecomposition.cancel();
            }
            this.f = null;
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.e;
            if (precomposedSlotHandle != null) {
                precomposedSlotHandle.a();
            }
            this.e = null;
            this.l = null;
        }

        public final boolean e(PrefetchRequestScope prefetchRequestScope) {
            boolean f;
            if (!PrefetchHandleProvider.this.d) {
                return false;
            }
            if (this.m) {
                Trace.beginSection("compose:lazy:prefetch:execute:urgent");
                try {
                    f = f(prefetchRequestScope);
                } finally {
                    Trace.endSection();
                }
            } else {
                f = f(prefetchRequestScope);
            }
            AndroidTrace_androidKt.a(-1L, "compose:lazy:prefetch:execute:item");
            return f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:111:0x01e8 A[Catch: all -> 0x01fe, LOOP:2: B:100:0x01b8->B:111:0x01e8, LOOP_END, TRY_ENTER, TryCatch #5 {all -> 0x01fe, blocks: (B:84:0x0172, B:86:0x017a, B:88:0x0180, B:91:0x018d, B:93:0x0199, B:94:0x01af, B:95:0x019c, B:99:0x01b1, B:100:0x01b8, B:102:0x01c0, B:104:0x01ca, B:106:0x01ce, B:108:0x01d5, B:109:0x01da, B:111:0x01e8, B:118:0x01ee), top: B:83:0x0172 }] */
        /* JADX WARN: Removed duplicated region for block: B:112:0x01e4 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r13v10, types: [int, boolean] */
        /* JADX WARN: Type inference failed for: r13v11 */
        /* JADX WARN: Type inference failed for: r13v9 */
        /* JADX WARN: Type inference failed for: r9v23, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
        /* JADX WARN: Type inference failed for: r9v3, types: [androidx.compose.foundation.lazy.layout.Averages, java.lang.Object] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean f(PrefetchRequestScope prefetchRequestScope) {
            int i;
            ?? r13;
            HandleAndRequestImpl handleAndRequestImpl;
            List list;
            NestedPrefetchController nestedPrefetchController;
            int i2 = this.a;
            long j = i2;
            AndroidTrace_androidKt.a(j, "compose:lazy:prefetch:execute:item");
            LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) PrefetchHandleProvider.this.a.b.a();
            if (!this.h) {
                int a = lazyLayoutItemProvider.a();
                if (i2 >= 0 && i2 < a) {
                    Object b = lazyLayoutItemProvider.b(i2);
                    Object obj = this.j;
                    if (obj != null && !b.equals(obj)) {
                        d();
                        return false;
                    }
                    Object c = lazyLayoutItemProvider.c(i2);
                    PrefetchMetrics prefetchMetrics = this.b;
                    Averages averages = prefetchMetrics.c;
                    if (prefetchMetrics.b != c || averages == null) {
                        MutableScatterMap mutableScatterMap = prefetchMetrics.a;
                        Object e = mutableScatterMap.e(c);
                        Object obj2 = e;
                        if (e == null) {
                            ?? obj3 = new Object();
                            obj3.e = -1;
                            mutableScatterMap.o(c, obj3);
                            obj2 = obj3;
                        }
                        averages = (Averages) obj2;
                        prefetchMetrics.b = c;
                        prefetchMetrics.c = averages;
                    }
                    g();
                    AndroidPrefetchScheduler.PrefetchRequestScopeImpl prefetchRequestScopeImpl = (AndroidPrefetchScheduler.PrefetchRequestScopeImpl) prefetchRequestScope;
                    long a2 = prefetchRequestScopeImpl.a();
                    this.n = a2;
                    this.p = MonotonicTimeSource.a();
                    this.o = 0L;
                    AndroidTrace_androidKt.a(a2, "compose:lazy:prefetch:available_time_nanos");
                    long j2 = 0;
                    if (!g()) {
                        if (i(this.n, averages.a + averages.b)) {
                            Trace.beginSection("compose:lazy:prefetch:compose");
                            try {
                                h(b, c, averages);
                            } finally {
                            }
                        }
                        if (!g()) {
                            return true;
                        }
                    }
                    if (this.f != null) {
                        if (!i(this.n, averages.c)) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:apply");
                        try {
                            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.f;
                            if (pausedPrecomposition != null) {
                                this.e = pausedPrecomposition.apply();
                                this.f = null;
                                this.i = true;
                                Trace.endSection();
                                j();
                                averages.c = Averages.a(this.o, averages.c);
                            } else {
                                throw new IllegalArgumentException("Nothing to apply!");
                            }
                        } finally {
                        }
                    }
                    if (!this.k) {
                        if (this.n <= 0) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:resolve-nested");
                        try {
                            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.e;
                            if (precomposedSlotHandle != null) {
                                ?? obj4 = new Object();
                                precomposedSlotHandle.d(new b(2, obj4));
                                List list2 = (List) obj4.j;
                                if (list2 != null) {
                                    nestedPrefetchController = new NestedPrefetchController(list2);
                                } else {
                                    nestedPrefetchController = null;
                                }
                                this.l = nestedPrefetchController;
                                this.k = true;
                            } else {
                                throw q.C("Should precompose before resolving nested prefetch states");
                            }
                        } finally {
                        }
                    }
                    NestedPrefetchController nestedPrefetchController2 = this.l;
                    if (nestedPrefetchController2 != null) {
                        int i3 = averages.e;
                        boolean z = this.m;
                        List[] listArr = nestedPrefetchController2.b;
                        int i4 = nestedPrefetchController2.c;
                        List list3 = nestedPrefetchController2.a;
                        if (i4 < list3.size()) {
                            if (HandleAndRequestImpl.this.h) {
                                InlineClassHelperKt.c("Should not execute nested prefetch on canceled request");
                            }
                            Trace.beginSection("compose:lazy:prefetch:update_nested_prefetch_count");
                            try {
                                int size = list3.size();
                                for (int i5 = 0; i5 < size; i5++) {
                                    ((LazyLayoutPrefetchState) list3.get(i5)).d = i3;
                                }
                                Trace.endSection();
                                Trace.beginSection("compose:lazy:prefetch:nested");
                                while (nestedPrefetchController2.c < list3.size()) {
                                    try {
                                        if (listArr[nestedPrefetchController2.c] == null) {
                                            if (prefetchRequestScopeImpl.a() <= j2) {
                                                Trace.endSection();
                                                return true;
                                            }
                                            int i6 = nestedPrefetchController2.c;
                                            LazyLayoutPrefetchState lazyLayoutPrefetchState = (LazyLayoutPrefetchState) list3.get(i6);
                                            Function1 function1 = lazyLayoutPrefetchState.a;
                                            if (function1 == null) {
                                                list = EmptyList.j;
                                            } else {
                                                LazyLayoutPrefetchState.NestedPrefetchScopeImpl nestedPrefetchScopeImpl = new LazyLayoutPrefetchState.NestedPrefetchScopeImpl(lazyLayoutPrefetchState.d);
                                                function1.b(nestedPrefetchScopeImpl);
                                                ArrayList arrayList = nestedPrefetchScopeImpl.b;
                                                lazyLayoutPrefetchState.f = arrayList.size();
                                                list = arrayList;
                                            }
                                            listArr[i6] = list;
                                        }
                                        List list4 = listArr[nestedPrefetchController2.c];
                                        list4.getClass();
                                        while (nestedPrefetchController2.d < list4.size()) {
                                            PrefetchRequest prefetchRequest = (PrefetchRequest) list4.get(nestedPrefetchController2.d);
                                            if (z) {
                                                if (prefetchRequest instanceof HandleAndRequestImpl) {
                                                    handleAndRequestImpl = (HandleAndRequestImpl) prefetchRequest;
                                                } else {
                                                    handleAndRequestImpl = null;
                                                }
                                                if (handleAndRequestImpl != null) {
                                                    r13 = 1;
                                                    handleAndRequestImpl.m = true;
                                                    nestedPrefetchController2.e = r13;
                                                    if (!((HandleAndRequestImpl) prefetchRequest).e(prefetchRequestScopeImpl)) {
                                                        return r13;
                                                    }
                                                    nestedPrefetchController2.d += r13;
                                                }
                                            }
                                            r13 = 1;
                                            nestedPrefetchController2.e = r13;
                                            if (!((HandleAndRequestImpl) prefetchRequest).e(prefetchRequestScopeImpl)) {
                                            }
                                        }
                                        nestedPrefetchController2.d = 0;
                                        nestedPrefetchController2.c++;
                                        j2 = 0;
                                    } finally {
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    NestedPrefetchController nestedPrefetchController3 = this.l;
                    if (nestedPrefetchController3 != null && nestedPrefetchController3.e) {
                        j();
                        AndroidTrace_androidKt.a(j, "compose:lazy:prefetch:execute:item");
                        NestedPrefetchController nestedPrefetchController4 = this.l;
                        if (nestedPrefetchController4 != null) {
                            nestedPrefetchController4.e = false;
                        }
                    }
                    Constraints constraints = this.d;
                    if (!this.g && constraints != null) {
                        if (!i(this.n, averages.d)) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:measure");
                        try {
                            long j3 = constraints.a;
                            if (this.h) {
                                InlineClassHelperKt.a("Callers should check whether the request is still valid before calling performMeasure()");
                            }
                            if (this.g) {
                                InlineClassHelperKt.a("Request was already measured!");
                            }
                            this.g = true;
                            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle2 = this.e;
                            if (precomposedSlotHandle2 != null) {
                                int c2 = precomposedSlotHandle2.c();
                                for (int i7 = 0; i7 < c2; i7++) {
                                    precomposedSlotHandle2.e(i7, j3);
                                }
                                Trace.endSection();
                                j();
                                averages.d = Averages.a(this.o, averages.d);
                                Function1 function12 = this.c;
                                if (function12 != null) {
                                    function12.b(this);
                                }
                            } else {
                                throw q.C("performComposition() must be called before performMeasure()");
                            }
                        } finally {
                        }
                    }
                    NestedPrefetchController nestedPrefetchController5 = this.l;
                    if (this.g && this.k && nestedPrefetchController5 != null) {
                        List list5 = nestedPrefetchController5.a;
                        int size2 = list5.size();
                        int i8 = Integer.MAX_VALUE;
                        for (int i9 = 0; i9 < size2; i9++) {
                            i8 = Math.min(i8, ((LazyLayoutPrefetchState) list5.get(i9)).e);
                        }
                        if (i8 == Integer.MAX_VALUE) {
                            i8 = 0;
                        }
                        int i10 = averages.e;
                        if (i10 == -1) {
                            i = i8;
                        } else {
                            i = ((i10 * 3) + i8) / 4;
                        }
                        averages.e = i;
                        int size3 = list5.size();
                        int i11 = Integer.MAX_VALUE;
                        for (int i12 = 0; i12 < size3; i12++) {
                            i11 = Math.min(i11, ((LazyLayoutPrefetchState) list5.get(i12)).f);
                        }
                        if (i11 == Integer.MAX_VALUE) {
                            i11 = 0;
                        }
                        if (i11 < i8) {
                            averages.d = 0L;
                        }
                    }
                    return false;
                }
            }
            d();
            return false;
        }

        public final boolean g() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition;
            if (this.i || ((pausedPrecomposition = this.f) != null && pausedPrecomposition.b())) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public final int getIndex() {
            return this.a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v5, types: [androidx.compose.foundation.lazy.layout.k] */
        public final void h(final Object obj, Object obj2, final Averages averages) {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition;
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition2 = this.f;
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition3 = pausedPrecomposition2;
            if (pausedPrecomposition2 == null) {
                PrefetchHandleProvider prefetchHandleProvider = PrefetchHandleProvider.this;
                Function2 a = prefetchHandleProvider.a.a(this.a, obj, obj2);
                final LayoutNodeSubcompositionsState a2 = prefetchHandleProvider.b.a();
                if (!a2.j.L()) {
                    pausedPrecomposition = new SubcomposeLayoutState.PausedPrecomposition() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precomposePaused$1
                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean a(k kVar) {
                            return true;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final SubcomposeLayoutState.PrecomposedSlotHandle apply() {
                            return LayoutNodeSubcompositionsState.this.f(obj);
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean b() {
                            return true;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final void cancel() {
                        }
                    };
                } else {
                    a2.k(obj, a, true);
                    pausedPrecomposition = new SubcomposeLayoutState.PausedPrecomposition() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$precomposePaused$2
                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean a(k kVar) {
                            PausedCompositionImpl pausedCompositionImpl;
                            LayoutNodeSubcompositionsState.NodeState c = c();
                            Function1 function1 = null;
                            if (c != null) {
                                pausedCompositionImpl = c.f;
                            } else {
                                pausedCompositionImpl = null;
                            }
                            if (pausedCompositionImpl != null && !pausedCompositionImpl.c()) {
                                Snapshot a3 = Snapshot.Companion.a();
                                if (a3 != null) {
                                    function1 = a3.e();
                                }
                                Snapshot b = Snapshot.Companion.b(a3);
                                try {
                                    return pausedCompositionImpl.e(kVar);
                                } catch (Throwable th) {
                                    try {
                                        c.getClass();
                                        throw th;
                                    } finally {
                                        Snapshot.Companion.e(a3, b, function1);
                                    }
                                }
                            }
                            return true;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final SubcomposeLayoutState.PrecomposedSlotHandle apply() {
                            LayoutNodeSubcompositionsState.NodeState c = c();
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                            if (c != null) {
                                layoutNodeSubcompositionsState.d(c, false);
                            }
                            return layoutNodeSubcompositionsState.f(obj);
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final boolean b() {
                            PausedCompositionImpl pausedCompositionImpl;
                            LayoutNodeSubcompositionsState.NodeState c = c();
                            if (c != null && (pausedCompositionImpl = c.f) != null) {
                                return pausedCompositionImpl.c();
                            }
                            return true;
                        }

                        public final LayoutNodeSubcompositionsState.NodeState c() {
                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = LayoutNodeSubcompositionsState.this;
                            LayoutNode layoutNode = (LayoutNode) layoutNodeSubcompositionsState.s.e(obj);
                            if (layoutNode != null) {
                                return (LayoutNodeSubcompositionsState.NodeState) layoutNodeSubcompositionsState.o.e(layoutNode);
                            }
                            return null;
                        }

                        @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PausedPrecomposition
                        public final void cancel() {
                            PausedCompositionImpl pausedCompositionImpl;
                            LayoutNodeSubcompositionsState.NodeState c = c();
                            if (c != null) {
                                pausedCompositionImpl = c.f;
                            } else {
                                pausedCompositionImpl = null;
                            }
                            if (pausedCompositionImpl != null) {
                                LayoutNodeSubcompositionsState.c(LayoutNodeSubcompositionsState.this, obj);
                            }
                        }
                    };
                }
                SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition4 = pausedPrecomposition;
                this.f = pausedPrecomposition4;
                this.j = obj;
                pausedPrecomposition3 = pausedPrecomposition4;
            }
            this.q = false;
            while (!pausedPrecomposition3.b() && !this.q) {
                pausedPrecomposition3.a(new ShouldPauseCallback() { // from class: androidx.compose.foundation.lazy.layout.k
                    @Override // androidx.compose.runtime.ShouldPauseCallback
                    public final boolean a() {
                        PrefetchHandleProvider.HandleAndRequestImpl handleAndRequestImpl = PrefetchHandleProvider.HandleAndRequestImpl.this;
                        if (!handleAndRequestImpl.q) {
                            handleAndRequestImpl.j();
                            long j = handleAndRequestImpl.o;
                            Averages averages2 = averages;
                            averages2.a = Averages.a(j, averages2.a);
                            handleAndRequestImpl.q = !handleAndRequestImpl.i(handleAndRequestImpl.n, r1 + averages2.b);
                        }
                        return handleAndRequestImpl.q;
                    }
                });
            }
            j();
            boolean z = this.q;
            long j = this.o;
            if (z) {
                averages.b = Averages.a(j, averages.b);
            } else {
                averages.a = Averages.a(j, averages.a);
            }
        }

        public final boolean i(long j, long j2) {
            if (this.m) {
                j2 = 0;
            }
            if (j > j2) {
                return true;
            }
            return false;
        }

        public final void j() {
            long b;
            long a = MonotonicTimeSource.a();
            long j = this.p;
            int i = MonotonicTimeSource.b;
            DurationUnit durationUnit = DurationUnit.k;
            long j2 = Long.MAX_VALUE;
            if (((j - 1) | 1) == Long.MAX_VALUE) {
                if (a == j) {
                    Duration.Companion companion = Duration.k;
                    b = 0;
                } else {
                    b = Duration.i(LongSaturatedMathKt.a(j));
                }
            } else if ((1 | (a - 1)) == Long.MAX_VALUE) {
                b = LongSaturatedMathKt.a(a);
            } else {
                b = LongSaturatedMathKt.b(a, j);
            }
            long j3 = b >> 1;
            Duration.Companion companion2 = Duration.k;
            if ((((int) b) & 1) == 0) {
                j2 = j3;
            } else if (j3 <= 9223372036854L) {
                if (j3 < -9223372036854L) {
                    j2 = Long.MIN_VALUE;
                } else {
                    j2 = j3 * 1000000;
                }
            }
            this.o = j2;
            long j4 = this.n - j2;
            this.n = j4;
            this.p = a;
            AndroidTrace_androidKt.a(j4, "compose:lazy:prefetch:available_time_nanos");
        }

        public final String toString() {
            return "HandleAndRequestImpl { index = " + this.a + ", constraints = " + this.d + ", isComposed = " + g() + ", isMeasured = " + this.g + ", isCanceled = " + this.h + " }";
        }
    }

    public PrefetchHandleProvider(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, PrefetchScheduler prefetchScheduler) {
        this.a = lazyLayoutItemContentFactory;
        this.b = subcomposeLayoutState;
        this.c = prefetchScheduler;
    }
}
