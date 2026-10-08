package androidx.compose.ui.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.lazy.layout.k;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import defpackage.fg;
import defpackage.u2;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubcomposeLayoutState {
    public final SubcomposeSlotReusePolicy a;
    public LayoutNodeSubcompositionsState b;
    public final fg c;
    public final fg d;
    public final fg e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PausedPrecomposition {
        boolean a(k kVar);

        PrecomposedSlotHandle apply();

        boolean b();

        void cancel();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [fg] */
    /* JADX WARN: Type inference failed for: r2v2, types: [fg] */
    /* JADX WARN: Type inference failed for: r2v3, types: [fg] */
    public SubcomposeLayoutState(SubcomposeSlotReusePolicy subcomposeSlotReusePolicy) {
        this.a = subcomposeSlotReusePolicy;
        final int i = 0;
        this.c = new Function2(this) { // from class: fg
            public final /* synthetic */ SubcomposeLayoutState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i2 = i;
                Unit unit = Unit.a;
                SubcomposeLayoutState subcomposeLayoutState = this.k;
                switch (i2) {
                    case 0:
                        SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2 = subcomposeLayoutState.a;
                        LayoutNode layoutNode = (LayoutNode) obj;
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.Q;
                        if (layoutNodeSubcompositionsState == null) {
                            layoutNodeSubcompositionsState = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy2);
                            layoutNode.Q = layoutNodeSubcompositionsState;
                        }
                        subcomposeLayoutState.b = layoutNodeSubcompositionsState;
                        subcomposeLayoutState.a().h();
                        LayoutNodeSubcompositionsState a = subcomposeLayoutState.a();
                        if (a.l != subcomposeSlotReusePolicy2) {
                            a.l = subcomposeSlotReusePolicy2;
                            a.i(false);
                            LayoutNode.Z(a.j, false, 7);
                        }
                        return unit;
                    case 1:
                        subcomposeLayoutState.a().k = (CompositionContext) obj2;
                        return unit;
                    default:
                        final Function2 function2 = (Function2) obj2;
                        final LayoutNodeSubcompositionsState a2 = subcomposeLayoutState.a();
                        ((LayoutNode) obj).g0(new LayoutNode.NoIntrinsicsMeasurePolicy(a2.y) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
                            @Override // androidx.compose.ui.layout.MeasurePolicy
                            public final MeasureResult a(MeasureScope measureScope, List list, long j) {
                                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                                LayoutNodeSubcompositionsState.Scope scope = layoutNodeSubcompositionsState2.q;
                                scope.j = measureScope.getLayoutDirection();
                                scope.k = measureScope.getDensity();
                                scope.l = measureScope.e0();
                                boolean f0 = measureScope.f0();
                                Function2 function22 = function2;
                                if (!f0 && layoutNodeSubcompositionsState2.j.q != null) {
                                    layoutNodeSubcompositionsState2.n = 0;
                                    final MeasureResult measureResult = (MeasureResult) function22.n(layoutNodeSubcompositionsState2.r, new Constraints(j));
                                    final int i3 = layoutNodeSubcompositionsState2.n;
                                    return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final int a() {
                                            return measureResult.a();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final int b() {
                                            return measureResult.b();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Map c() {
                                            return measureResult.c();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final void d() {
                                            int i4 = i3;
                                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState3 = layoutNodeSubcompositionsState2;
                                            layoutNodeSubcompositionsState3.n = i4;
                                            measureResult.d();
                                            MutableVector mutableVector = layoutNodeSubcompositionsState3.v;
                                            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState3.u;
                                            long[] jArr = mutableScatterMap.a;
                                            int length = jArr.length - 2;
                                            if (length >= 0) {
                                                int i5 = 0;
                                                while (true) {
                                                    long j2 = jArr[i5];
                                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                                                        for (int i7 = 0; i7 < i6; i7++) {
                                                            if ((255 & j2) < 128) {
                                                                int i8 = (i5 << 3) + i7;
                                                                Object obj3 = mutableScatterMap.b[i8];
                                                                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) mutableScatterMap.c[i8];
                                                                int i9 = mutableVector.i(obj3);
                                                                if (i9 < 0 || i9 >= layoutNodeSubcompositionsState3.n) {
                                                                    if (i9 >= 0) {
                                                                        Object[] objArr = mutableVector.j;
                                                                        Object obj4 = objArr[i9];
                                                                        objArr[i9] = SubcomposeLayoutKt.b;
                                                                    }
                                                                    if (layoutNodeSubcompositionsState3.s.b(obj3)) {
                                                                        precomposedSlotHandle.a();
                                                                    }
                                                                    mutableScatterMap.n(i8);
                                                                }
                                                            }
                                                            j2 >>= 8;
                                                        }
                                                        if (i6 != 8) {
                                                            break;
                                                        }
                                                    }
                                                    if (i5 == length) {
                                                        break;
                                                    } else {
                                                        i5++;
                                                    }
                                                }
                                            }
                                            layoutNodeSubcompositionsState3.g(layoutNodeSubcompositionsState3.m);
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function1 e() {
                                            return measureResult.e();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function2 f() {
                                            return measureResult.f();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function1 g() {
                                            return measureResult.g();
                                        }
                                    };
                                }
                                layoutNodeSubcompositionsState2.m = 0;
                                final MeasureResult measureResult2 = (MeasureResult) function22.n(scope, new Constraints(j));
                                final int i4 = layoutNodeSubcompositionsState2.m;
                                return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2
                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final int a() {
                                        return measureResult2.a();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final int b() {
                                        return measureResult2.b();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Map c() {
                                        return measureResult2.c();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final void d() {
                                        int i5 = i4;
                                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState3 = layoutNodeSubcompositionsState2;
                                        layoutNodeSubcompositionsState3.m = i5;
                                        measureResult2.d();
                                        if (layoutNodeSubcompositionsState3.j.q == null) {
                                            layoutNodeSubcompositionsState3.g(layoutNodeSubcompositionsState3.m);
                                        }
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function1 e() {
                                        return measureResult2.e();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function2 f() {
                                        return measureResult2.f();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function1 g() {
                                        return measureResult2.g();
                                    }
                                };
                            }
                        });
                        return unit;
                }
            }
        };
        final int i2 = 1;
        this.d = new Function2(this) { // from class: fg
            public final /* synthetic */ SubcomposeLayoutState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i22 = i2;
                Unit unit = Unit.a;
                SubcomposeLayoutState subcomposeLayoutState = this.k;
                switch (i22) {
                    case 0:
                        SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2 = subcomposeLayoutState.a;
                        LayoutNode layoutNode = (LayoutNode) obj;
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.Q;
                        if (layoutNodeSubcompositionsState == null) {
                            layoutNodeSubcompositionsState = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy2);
                            layoutNode.Q = layoutNodeSubcompositionsState;
                        }
                        subcomposeLayoutState.b = layoutNodeSubcompositionsState;
                        subcomposeLayoutState.a().h();
                        LayoutNodeSubcompositionsState a = subcomposeLayoutState.a();
                        if (a.l != subcomposeSlotReusePolicy2) {
                            a.l = subcomposeSlotReusePolicy2;
                            a.i(false);
                            LayoutNode.Z(a.j, false, 7);
                        }
                        return unit;
                    case 1:
                        subcomposeLayoutState.a().k = (CompositionContext) obj2;
                        return unit;
                    default:
                        final Function2 function2 = (Function2) obj2;
                        final LayoutNodeSubcompositionsState a2 = subcomposeLayoutState.a();
                        ((LayoutNode) obj).g0(new LayoutNode.NoIntrinsicsMeasurePolicy(a2.y) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
                            @Override // androidx.compose.ui.layout.MeasurePolicy
                            public final MeasureResult a(MeasureScope measureScope, List list, long j) {
                                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                                LayoutNodeSubcompositionsState.Scope scope = layoutNodeSubcompositionsState2.q;
                                scope.j = measureScope.getLayoutDirection();
                                scope.k = measureScope.getDensity();
                                scope.l = measureScope.e0();
                                boolean f0 = measureScope.f0();
                                Function2 function22 = function2;
                                if (!f0 && layoutNodeSubcompositionsState2.j.q != null) {
                                    layoutNodeSubcompositionsState2.n = 0;
                                    final MeasureResult measureResult = (MeasureResult) function22.n(layoutNodeSubcompositionsState2.r, new Constraints(j));
                                    final int i3 = layoutNodeSubcompositionsState2.n;
                                    return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final int a() {
                                            return measureResult.a();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final int b() {
                                            return measureResult.b();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Map c() {
                                            return measureResult.c();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final void d() {
                                            int i4 = i3;
                                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState3 = layoutNodeSubcompositionsState2;
                                            layoutNodeSubcompositionsState3.n = i4;
                                            measureResult.d();
                                            MutableVector mutableVector = layoutNodeSubcompositionsState3.v;
                                            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState3.u;
                                            long[] jArr = mutableScatterMap.a;
                                            int length = jArr.length - 2;
                                            if (length >= 0) {
                                                int i5 = 0;
                                                while (true) {
                                                    long j2 = jArr[i5];
                                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                                                        for (int i7 = 0; i7 < i6; i7++) {
                                                            if ((255 & j2) < 128) {
                                                                int i8 = (i5 << 3) + i7;
                                                                Object obj3 = mutableScatterMap.b[i8];
                                                                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) mutableScatterMap.c[i8];
                                                                int i9 = mutableVector.i(obj3);
                                                                if (i9 < 0 || i9 >= layoutNodeSubcompositionsState3.n) {
                                                                    if (i9 >= 0) {
                                                                        Object[] objArr = mutableVector.j;
                                                                        Object obj4 = objArr[i9];
                                                                        objArr[i9] = SubcomposeLayoutKt.b;
                                                                    }
                                                                    if (layoutNodeSubcompositionsState3.s.b(obj3)) {
                                                                        precomposedSlotHandle.a();
                                                                    }
                                                                    mutableScatterMap.n(i8);
                                                                }
                                                            }
                                                            j2 >>= 8;
                                                        }
                                                        if (i6 != 8) {
                                                            break;
                                                        }
                                                    }
                                                    if (i5 == length) {
                                                        break;
                                                    } else {
                                                        i5++;
                                                    }
                                                }
                                            }
                                            layoutNodeSubcompositionsState3.g(layoutNodeSubcompositionsState3.m);
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function1 e() {
                                            return measureResult.e();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function2 f() {
                                            return measureResult.f();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function1 g() {
                                            return measureResult.g();
                                        }
                                    };
                                }
                                layoutNodeSubcompositionsState2.m = 0;
                                final MeasureResult measureResult2 = (MeasureResult) function22.n(scope, new Constraints(j));
                                final int i4 = layoutNodeSubcompositionsState2.m;
                                return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2
                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final int a() {
                                        return measureResult2.a();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final int b() {
                                        return measureResult2.b();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Map c() {
                                        return measureResult2.c();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final void d() {
                                        int i5 = i4;
                                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState3 = layoutNodeSubcompositionsState2;
                                        layoutNodeSubcompositionsState3.m = i5;
                                        measureResult2.d();
                                        if (layoutNodeSubcompositionsState3.j.q == null) {
                                            layoutNodeSubcompositionsState3.g(layoutNodeSubcompositionsState3.m);
                                        }
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function1 e() {
                                        return measureResult2.e();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function2 f() {
                                        return measureResult2.f();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function1 g() {
                                        return measureResult2.g();
                                    }
                                };
                            }
                        });
                        return unit;
                }
            }
        };
        final int i3 = 2;
        this.e = new Function2(this) { // from class: fg
            public final /* synthetic */ SubcomposeLayoutState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i22 = i3;
                Unit unit = Unit.a;
                SubcomposeLayoutState subcomposeLayoutState = this.k;
                switch (i22) {
                    case 0:
                        SubcomposeSlotReusePolicy subcomposeSlotReusePolicy2 = subcomposeLayoutState.a;
                        LayoutNode layoutNode = (LayoutNode) obj;
                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.Q;
                        if (layoutNodeSubcompositionsState == null) {
                            layoutNodeSubcompositionsState = new LayoutNodeSubcompositionsState(layoutNode, subcomposeSlotReusePolicy2);
                            layoutNode.Q = layoutNodeSubcompositionsState;
                        }
                        subcomposeLayoutState.b = layoutNodeSubcompositionsState;
                        subcomposeLayoutState.a().h();
                        LayoutNodeSubcompositionsState a = subcomposeLayoutState.a();
                        if (a.l != subcomposeSlotReusePolicy2) {
                            a.l = subcomposeSlotReusePolicy2;
                            a.i(false);
                            LayoutNode.Z(a.j, false, 7);
                        }
                        return unit;
                    case 1:
                        subcomposeLayoutState.a().k = (CompositionContext) obj2;
                        return unit;
                    default:
                        final Function2 function2 = (Function2) obj2;
                        final LayoutNodeSubcompositionsState a2 = subcomposeLayoutState.a();
                        ((LayoutNode) obj).g0(new LayoutNode.NoIntrinsicsMeasurePolicy(a2.y) { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1
                            @Override // androidx.compose.ui.layout.MeasurePolicy
                            public final MeasureResult a(MeasureScope measureScope, List list, long j) {
                                final LayoutNodeSubcompositionsState layoutNodeSubcompositionsState2 = LayoutNodeSubcompositionsState.this;
                                LayoutNodeSubcompositionsState.Scope scope = layoutNodeSubcompositionsState2.q;
                                scope.j = measureScope.getLayoutDirection();
                                scope.k = measureScope.getDensity();
                                scope.l = measureScope.e0();
                                boolean f0 = measureScope.f0();
                                Function2 function22 = function2;
                                if (!f0 && layoutNodeSubcompositionsState2.j.q != null) {
                                    layoutNodeSubcompositionsState2.n = 0;
                                    final MeasureResult measureResult = (MeasureResult) function22.n(layoutNodeSubcompositionsState2.r, new Constraints(j));
                                    final int i32 = layoutNodeSubcompositionsState2.n;
                                    return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$1
                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final int a() {
                                            return measureResult.a();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final int b() {
                                            return measureResult.b();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Map c() {
                                            return measureResult.c();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final void d() {
                                            int i4 = i32;
                                            LayoutNodeSubcompositionsState layoutNodeSubcompositionsState3 = layoutNodeSubcompositionsState2;
                                            layoutNodeSubcompositionsState3.n = i4;
                                            measureResult.d();
                                            MutableVector mutableVector = layoutNodeSubcompositionsState3.v;
                                            MutableScatterMap mutableScatterMap = layoutNodeSubcompositionsState3.u;
                                            long[] jArr = mutableScatterMap.a;
                                            int length = jArr.length - 2;
                                            if (length >= 0) {
                                                int i5 = 0;
                                                while (true) {
                                                    long j2 = jArr[i5];
                                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                                                        for (int i7 = 0; i7 < i6; i7++) {
                                                            if ((255 & j2) < 128) {
                                                                int i8 = (i5 << 3) + i7;
                                                                Object obj3 = mutableScatterMap.b[i8];
                                                                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = (SubcomposeLayoutState.PrecomposedSlotHandle) mutableScatterMap.c[i8];
                                                                int i9 = mutableVector.i(obj3);
                                                                if (i9 < 0 || i9 >= layoutNodeSubcompositionsState3.n) {
                                                                    if (i9 >= 0) {
                                                                        Object[] objArr = mutableVector.j;
                                                                        Object obj4 = objArr[i9];
                                                                        objArr[i9] = SubcomposeLayoutKt.b;
                                                                    }
                                                                    if (layoutNodeSubcompositionsState3.s.b(obj3)) {
                                                                        precomposedSlotHandle.a();
                                                                    }
                                                                    mutableScatterMap.n(i8);
                                                                }
                                                            }
                                                            j2 >>= 8;
                                                        }
                                                        if (i6 != 8) {
                                                            break;
                                                        }
                                                    }
                                                    if (i5 == length) {
                                                        break;
                                                    } else {
                                                        i5++;
                                                    }
                                                }
                                            }
                                            layoutNodeSubcompositionsState3.g(layoutNodeSubcompositionsState3.m);
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function1 e() {
                                            return measureResult.e();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function2 f() {
                                            return measureResult.f();
                                        }

                                        @Override // androidx.compose.ui.layout.MeasureResult
                                        public final Function1 g() {
                                            return measureResult.g();
                                        }
                                    };
                                }
                                layoutNodeSubcompositionsState2.m = 0;
                                final MeasureResult measureResult2 = (MeasureResult) function22.n(scope, new Constraints(j));
                                final int i4 = layoutNodeSubcompositionsState2.m;
                                return new MeasureResult() { // from class: androidx.compose.ui.layout.LayoutNodeSubcompositionsState$createMeasurePolicy$1$measure-3p2s80s$$inlined$createMeasureResult$2
                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final int a() {
                                        return measureResult2.a();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final int b() {
                                        return measureResult2.b();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Map c() {
                                        return measureResult2.c();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final void d() {
                                        int i5 = i4;
                                        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState3 = layoutNodeSubcompositionsState2;
                                        layoutNodeSubcompositionsState3.m = i5;
                                        measureResult2.d();
                                        if (layoutNodeSubcompositionsState3.j.q == null) {
                                            layoutNodeSubcompositionsState3.g(layoutNodeSubcompositionsState3.m);
                                        }
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function1 e() {
                                        return measureResult2.e();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function2 f() {
                                        return measureResult2.f();
                                    }

                                    @Override // androidx.compose.ui.layout.MeasureResult
                                    public final Function1 g() {
                                        return measureResult2.g();
                                    }
                                };
                            }
                        });
                        return unit;
                }
            }
        };
    }

    public final LayoutNodeSubcompositionsState a() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.b;
        if (layoutNodeSubcompositionsState != null) {
            return layoutNodeSubcompositionsState;
        }
        u2.g("SubcomposeLayoutState is not attached to SubcomposeLayout");
        return null;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PrecomposedSlotHandle {
        void a();

        default long b(int i) {
            return 0L;
        }

        default int c() {
            return 0;
        }

        default void d(androidx.compose.foundation.lazy.layout.b bVar) {
        }

        default void e(int i, long j) {
        }
    }
}
