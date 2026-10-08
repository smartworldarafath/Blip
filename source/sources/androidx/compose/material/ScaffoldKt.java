package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material.FabPlacement;
import androidx.compose.material.MutableWindowInsets;
import androidx.compose.material.ScaffoldKt;
import androidx.compose.material.ScaffoldState;
import androidx.compose.material.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.s5;
import defpackage.vc;
import defpackage.zc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScaffoldKt {
    public static final StaticProvidableCompositionLocal a = new CompositionLocal(new vc(14));
    public static final float b = 16.0f;

    public static final void a(Modifier modifier, ScaffoldState scaffoldState, final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, Function3 function3, Function2 function2, int i, boolean z, Shape shape, float f, long j, long j2, long j3, long j4, long j5, final ComposableLambdaImpl composableLambdaImpl3, Composer composer, final int i2) {
        GapComposer gapComposer;
        final Modifier modifier2;
        final ScaffoldState scaffoldState2;
        final Function3 function32;
        final Function2 function22;
        final int i3;
        final boolean z2;
        final Shape shape2;
        final float f2;
        final long j6;
        final long j7;
        final long j8;
        final long j9;
        final long j10;
        long b2;
        long j11;
        int i4;
        boolean z3;
        ScaffoldState scaffoldState3;
        Modifier modifier3;
        Shape shape3;
        float f3;
        Function3 function33;
        long j12;
        Function2 function23;
        long j13;
        long j14;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1135600301);
        int i5 = i2 | 920346646;
        if (gapComposer2.N(i5 & 1, (306783379 & i5) != 306783378)) {
            gapComposer2.S();
            if ((i2 & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
                modifier3 = modifier;
                scaffoldState3 = scaffoldState;
                function33 = function3;
                function23 = function2;
                i4 = i;
                z3 = z;
                shape3 = shape;
                f3 = f;
                j14 = j;
                j11 = j2;
                j12 = j3;
                j13 = j4;
                b2 = j5;
            } else {
                DrawerValue drawerValue = DrawerValue.j;
                DrawerState a2 = DrawerKt.a(gapComposer2);
                Object K = gapComposer2.K();
                Object obj = Composer.Companion.a;
                if (K == obj) {
                    K = new SnackbarHostState();
                    gapComposer2.g0(K);
                }
                SnackbarHostState snackbarHostState = (SnackbarHostState) K;
                Object K2 = gapComposer2.K();
                if (K2 == obj) {
                    K2 = new ScaffoldState(a2, snackbarHostState);
                    gapComposer2.g0(K2);
                }
                ScaffoldState scaffoldState4 = (ScaffoldState) K2;
                RoundedCornerShape roundedCornerShape = MaterialTheme.b(gapComposer2).c;
                float f4 = DrawerDefaults.a;
                long f5 = MaterialTheme.a(gapComposer2).f();
                long b3 = ColorsKt.b(f5, gapComposer2);
                long b4 = Color.b(MaterialTheme.a(gapComposer2).d(), 0.32f);
                long b5 = MaterialTheme.a(gapComposer2).b();
                b2 = ColorsKt.b(b5, gapComposer2);
                j11 = b3;
                i4 = 2;
                z3 = true;
                scaffoldState3 = scaffoldState4;
                modifier3 = Modifier.Companion.b;
                shape3 = roundedCornerShape;
                f3 = f4;
                function33 = ComposableSingletons$ScaffoldKt.a;
                j12 = b4;
                function23 = ComposableSingletons$ScaffoldKt.b;
                j13 = b5;
                j14 = f5;
            }
            gapComposer2.q();
            gapComposer = gapComposer2;
            b(WindowInsetsKt.a(), modifier3, scaffoldState3, composableLambdaImpl, composableLambdaImpl2, function33, function23, i4, z3, shape3, f3, j14, j11, j12, j13, b2, composableLambdaImpl3, gapComposer, 920349744, 100663686);
            modifier2 = modifier3;
            scaffoldState2 = scaffoldState3;
            function32 = function33;
            function22 = function23;
            i3 = i4;
            z2 = z3;
            shape2 = shape3;
            f2 = f3;
            j6 = j14;
            j7 = j11;
            j8 = j12;
            j9 = j13;
            j10 = b2;
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
            modifier2 = modifier;
            scaffoldState2 = scaffoldState;
            function32 = function3;
            function22 = function2;
            i3 = i;
            z2 = z;
            shape2 = shape;
            f2 = f;
            j6 = j;
            j7 = j2;
            j8 = j3;
            j9 = j4;
            j10 = j5;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(scaffoldState2, composableLambdaImpl, composableLambdaImpl2, function32, function22, i3, z2, shape2, f2, j6, j7, j8, j9, j10, composableLambdaImpl3, i2) { // from class: ne
                public final /* synthetic */ ScaffoldState k;
                public final /* synthetic */ ComposableLambdaImpl l;
                public final /* synthetic */ ComposableLambdaImpl m;
                public final /* synthetic */ Function3 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ int p;
                public final /* synthetic */ boolean q;
                public final /* synthetic */ Shape r;
                public final /* synthetic */ float s;
                public final /* synthetic */ long t;
                public final /* synthetic */ long u;
                public final /* synthetic */ long v;
                public final /* synthetic */ long w;
                public final /* synthetic */ long x;
                public final /* synthetic */ ComposableLambdaImpl y;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int a3 = RecomposeScopeImplKt.a(3457);
                    ScaffoldKt.a(Modifier.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, (Composer) obj2, a3);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(final WindowInsets windowInsets, Modifier modifier, final ScaffoldState scaffoldState, final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, final Function3 function3, final Function2 function2, final int i, final boolean z, final Shape shape, final float f, final long j, final long j2, final long j3, final long j4, final long j5, final ComposableLambdaImpl composableLambdaImpl3, Composer composer, final int i2, final int i3) {
        int i4;
        ComposableLambdaImpl composableLambdaImpl4;
        int i5;
        GapComposer gapComposer;
        final Modifier modifier2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(50073903);
        if ((i2 & 6) == 0) {
            i4 = (gapComposer2.f(windowInsets) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer2.f(modifier) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= gapComposer2.f(scaffoldState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            composableLambdaImpl4 = composableLambdaImpl;
            i4 |= gapComposer2.h(composableLambdaImpl4) ? 2048 : 1024;
        } else {
            composableLambdaImpl4 = composableLambdaImpl;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposer2.h(composableLambdaImpl2) ? 16384 : 8192;
        }
        if ((i2 & 196608) == 0) {
            i4 |= gapComposer2.h(function3) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposer2.h(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposer2.d(i) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposer2.g(false) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposer2.h(null) ? 536870912 : 268435456;
        }
        int i6 = i4;
        if ((i3 & 6) == 0) {
            i5 = (gapComposer2.g(z) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposer2.f(shape) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i5 |= gapComposer2.c(f) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposer2.e(j) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposer2.e(j2) ? 16384 : 8192;
        }
        if ((i3 & 196608) == 0) {
            i5 |= gapComposer2.e(j3) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposer2.e(j4) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposer2.e(j5) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i5 |= gapComposer2.h(composableLambdaImpl3) ? 67108864 : 33554432;
        }
        if (gapComposer2.N(i6 & 1, ((i6 & 306783379) == 306783378 && (38347923 & i5) == 38347922) ? false : true)) {
            gapComposer2.S();
            if ((i2 & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
            }
            gapComposer2.q();
            boolean z2 = (i6 & 14) == 4;
            Object K = gapComposer2.K();
            if (z2 || K == Composer.Companion.a) {
                K = new MutableWindowInsets(windowInsets);
                gapComposer2.g0(K);
            }
            final MutableWindowInsets mutableWindowInsets = (MutableWindowInsets) K;
            gapComposer = gapComposer2;
            final ComposableLambdaImpl composableLambdaImpl5 = composableLambdaImpl4;
            ComposableLambdaImpl b2 = ComposableLambdaKt.b(-1236753028, new Function3() { // from class: oe
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z3;
                    int i7;
                    Modifier modifier3 = (Modifier) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ScaffoldKt.a;
                    if ((intValue & 6) == 0) {
                        if (((GapComposer) composer2).f(modifier3)) {
                            i7 = 4;
                        } else {
                            i7 = 2;
                        }
                        intValue |= i7;
                    }
                    if ((intValue & 19) != 18) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    GapComposer gapComposer3 = (GapComposer) composer2;
                    if (gapComposer3.N(intValue & 1, z3)) {
                        final MutableWindowInsets mutableWindowInsets2 = MutableWindowInsets.this;
                        boolean f2 = gapComposer3.f(mutableWindowInsets2);
                        WindowInsets windowInsets2 = windowInsets;
                        boolean f3 = f2 | gapComposer3.f(windowInsets2);
                        Object K2 = gapComposer3.K();
                        if (f3 || K2 == Composer.Companion.a) {
                            K2 = new ec(10, mutableWindowInsets2, windowInsets2);
                            gapComposer3.g0(K2);
                        }
                        Modifier a2 = WindowInsetsPaddingKt.a(modifier3, (Function1) K2);
                        final int i8 = i;
                        final ComposableLambdaImpl composableLambdaImpl6 = composableLambdaImpl5;
                        final ComposableLambdaImpl composableLambdaImpl7 = composableLambdaImpl3;
                        final Function2 function22 = function2;
                        final ComposableLambdaImpl composableLambdaImpl8 = composableLambdaImpl2;
                        final Function3 function32 = function3;
                        final ScaffoldState scaffoldState2 = scaffoldState;
                        SurfaceKt.a(a2, null, j4, j5, 0.0f, ComposableLambdaKt.b(-1761194824, new Function2() { // from class: qe
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj4, Object obj5) {
                                boolean z4;
                                Composer composer3 = (Composer) obj4;
                                int intValue2 = ((Integer) obj5).intValue();
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ScaffoldKt.a;
                                if ((intValue2 & 3) != 2) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                GapComposer gapComposer4 = (GapComposer) composer3;
                                if (gapComposer4.N(intValue2 & 1, z4)) {
                                    ScaffoldKt.c(i8, composableLambdaImpl6, composableLambdaImpl7, ComposableLambdaKt.b(545329543, new zc(5, function32, scaffoldState2), gapComposer4), function22, mutableWindowInsets2, composableLambdaImpl8, gapComposer4, 24576);
                                } else {
                                    gapComposer4.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer3), gapComposer3, 1572864, 50);
                    } else {
                        gapComposer3.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer);
            gapComposer.W(1400739380);
            modifier2 = modifier;
            b2.f(modifier2, gapComposer, Integer.valueOf(((i6 >> 3) & 14) | 48));
            gapComposer.p(false);
        } else {
            gapComposer = gapComposer2;
            modifier2 = modifier;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: pe
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(i2 | 1);
                    int a3 = RecomposeScopeImplKt.a(i3);
                    ScaffoldKt.b(WindowInsets.this, modifier2, scaffoldState, composableLambdaImpl, composableLambdaImpl2, function3, function2, i, z, shape, f, j, j2, j3, j4, j5, composableLambdaImpl3, (Composer) obj, a2, a3);
                    return Unit.a;
                }
            };
        }
    }

    public static final void c(final int i, final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, final ComposableLambdaImpl composableLambdaImpl3, final Function2 function2, final WindowInsets windowInsets, final ComposableLambdaImpl composableLambdaImpl4, Composer composer, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(675142332);
        if (gapComposer.g(false)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i10 = i2 | i3;
        if (gapComposer.d(i)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i11 = i10 | i4;
        if (gapComposer.h(composableLambdaImpl)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i12 = i11 | i5;
        if (gapComposer.h(composableLambdaImpl2)) {
            i6 = 2048;
        } else {
            i6 = 1024;
        }
        int i13 = i12 | i6;
        if (gapComposer.h(function2)) {
            i7 = 131072;
        } else {
            i7 = 65536;
        }
        int i14 = i13 | i7;
        if (gapComposer.f(windowInsets)) {
            i8 = 1048576;
        } else {
            i8 = 524288;
        }
        int i15 = i14 | i8;
        if (gapComposer.h(composableLambdaImpl4)) {
            i9 = 8388608;
        } else {
            i9 = 4194304;
        }
        int i16 = i15 | i9;
        if ((4793491 & i16) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i16 & 1, z)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = new ScaffoldKt$ScaffoldLayout$contentPadding$1$1();
                gapComposer.g0(K);
            }
            final ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) K;
            if ((i16 & 896) == 256) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((3670016 & i16) == 1048576) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z9 = z2 | z3;
            if ((458752 & i16) == 131072) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean z10 = z9 | z4;
            if ((i16 & 112) == 32) {
                z5 = true;
            } else {
                z5 = false;
            }
            boolean z11 = z10 | z5;
            if ((i16 & 14) == 4) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean z12 = z11 | z6;
            if ((29360128 & i16) == 8388608) {
                z7 = true;
            } else {
                z7 = false;
            }
            boolean z13 = z12 | z7;
            if ((i16 & 7168) == 2048) {
                z8 = true;
            } else {
                z8 = false;
            }
            boolean z14 = z13 | z8;
            Object K2 = gapComposer.K();
            if (z14 || K2 == composer$Companion$Empty$1) {
                Function2 function22 = new Function2() { // from class: androidx.compose.material.d
                    /* JADX WARN: Removed duplicated region for block: B:50:0x024c A[LOOP:3: B:49:0x024a->B:50:0x024c, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:54:0x0262  */
                    /* JADX WARN: Removed duplicated region for block: B:57:0x0297  */
                    /* JADX WARN: Removed duplicated region for block: B:59:0x02a1  */
                    /* JADX WARN: Removed duplicated region for block: B:64:0x02c3  */
                    /* JADX WARN: Removed duplicated region for block: B:69:0x02e3  */
                    /* JADX WARN: Removed duplicated region for block: B:76:0x034a A[LOOP:4: B:75:0x0348->B:76:0x034a, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:82:0x02e8  */
                    /* JADX WARN: Removed duplicated region for block: B:86:0x02d8  */
                    /* JADX WARN: Removed duplicated region for block: B:88:0x02c0  */
                    /* JADX WARN: Removed duplicated region for block: B:89:0x029e  */
                    /* JADX WARN: Removed duplicated region for block: B:90:0x0266  */
                    @Override // kotlin.jvm.functions.Function2
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object n(Object obj, Object obj2) {
                        Object obj3;
                        final int i17;
                        WindowInsets windowInsets2;
                        Object obj4;
                        int i18;
                        FabPlacement fabPlacement;
                        final ArrayList arrayList;
                        int size;
                        int i19;
                        Object obj5;
                        long j;
                        Placeable placeable;
                        Integer num;
                        Integer num2;
                        int i20;
                        PaddingValues c;
                        float f;
                        float a2;
                        int size2;
                        int i21;
                        Map map;
                        int c2;
                        int y0;
                        Object obj6;
                        int i22;
                        Object obj7;
                        int i23;
                        int i24;
                        int i25;
                        int y02;
                        SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                        Constraints constraints = (Constraints) obj2;
                        float f2 = ScaffoldKt.b;
                        int h = Constraints.h(constraints.a);
                        final int g = Constraints.g(constraints.a);
                        long a3 = Constraints.a(constraints.a, 0, 0, 0, 0, 10);
                        List r = subcomposeMeasureScope.r(ScaffoldLayoutContent.j, ComposableLambdaImpl.this);
                        ArrayList arrayList2 = new ArrayList(r.size());
                        int size3 = r.size();
                        for (int i26 = 0; i26 < size3; i26++) {
                            arrayList2.add(((Measurable) r.get(i26)).w(a3));
                        }
                        int i27 = 1;
                        if (arrayList2.isEmpty()) {
                            obj3 = null;
                        } else {
                            obj3 = arrayList2.get(0);
                            int i28 = ((Placeable) obj3).k;
                            int size4 = arrayList2.size() - 1;
                            if (1 <= size4) {
                                int i29 = 1;
                                while (true) {
                                    Object obj8 = arrayList2.get(i29);
                                    int i30 = ((Placeable) obj8).k;
                                    if (i28 < i30) {
                                        i28 = i30;
                                        obj3 = obj8;
                                    }
                                    if (i29 == size4) {
                                        break;
                                    }
                                    i29++;
                                }
                            }
                        }
                        Placeable placeable2 = (Placeable) obj3;
                        if (placeable2 != null) {
                            i17 = placeable2.k;
                        } else {
                            i17 = 0;
                        }
                        List r2 = subcomposeMeasureScope.r(ScaffoldLayoutContent.l, composableLambdaImpl3);
                        ArrayList arrayList3 = new ArrayList(r2.size());
                        int size5 = r2.size();
                        int i31 = 0;
                        while (true) {
                            windowInsets2 = windowInsets;
                            if (i31 >= size5) {
                                break;
                            }
                            int i32 = i27;
                            arrayList3.add(((Measurable) r2.get(i31)).w(ConstraintsKt.i((-windowInsets2.d(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection())) - windowInsets2.b(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection()), -windowInsets2.c(subcomposeMeasureScope), a3)));
                            i31++;
                            i27 = i32;
                            r2 = r2;
                            arrayList2 = arrayList2;
                        }
                        final ArrayList arrayList4 = arrayList2;
                        int i33 = i27;
                        if (arrayList3.isEmpty()) {
                            obj4 = null;
                        } else {
                            obj4 = arrayList3.get(0);
                            int i34 = ((Placeable) obj4).k;
                            int size6 = arrayList3.size() - 1;
                            if (i33 <= size6) {
                                Object obj9 = obj4;
                                int i35 = i34;
                                int i36 = 1;
                                while (true) {
                                    Object obj10 = arrayList3.get(i36);
                                    int i37 = ((Placeable) obj10).k;
                                    if (i35 < i37) {
                                        obj9 = obj10;
                                        i35 = i37;
                                    }
                                    if (i36 == size6) {
                                        break;
                                    }
                                    i36++;
                                }
                                obj4 = obj9;
                            }
                        }
                        Placeable placeable3 = (Placeable) obj4;
                        if (placeable3 != null) {
                            i18 = placeable3.k;
                        } else {
                            i18 = 0;
                        }
                        List r3 = subcomposeMeasureScope.r(ScaffoldLayoutContent.m, function2);
                        final ArrayList arrayList5 = new ArrayList(r3.size());
                        int size7 = r3.size();
                        int i38 = 0;
                        while (i38 < size7) {
                            int i39 = i18;
                            arrayList5.add(((Measurable) r3.get(i38)).w(ConstraintsKt.i((-windowInsets2.d(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection())) - windowInsets2.b(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection()), -windowInsets2.c(subcomposeMeasureScope), a3)));
                            i38++;
                            i18 = i39;
                            r3 = r3;
                            arrayList3 = arrayList3;
                        }
                        int i40 = i18;
                        final ArrayList arrayList6 = arrayList3;
                        if (!arrayList5.isEmpty()) {
                            if (arrayList5.isEmpty()) {
                                obj6 = null;
                            } else {
                                obj6 = arrayList5.get(0);
                                int i41 = ((Placeable) obj6).j;
                                int size8 = arrayList5.size() - 1;
                                if (1 <= size8) {
                                    Object obj11 = obj6;
                                    int i42 = i41;
                                    int i43 = 1;
                                    while (true) {
                                        Object obj12 = arrayList5.get(i43);
                                        int i44 = ((Placeable) obj12).j;
                                        if (i42 < i44) {
                                            obj11 = obj12;
                                            i42 = i44;
                                        }
                                        if (i43 == size8) {
                                            break;
                                        }
                                        i43++;
                                    }
                                    obj6 = obj11;
                                }
                            }
                            Placeable placeable4 = (Placeable) obj6;
                            if (placeable4 != null) {
                                i22 = placeable4.j;
                            } else {
                                i22 = 0;
                            }
                            if (arrayList5.isEmpty()) {
                                i23 = i22;
                                obj7 = null;
                            } else {
                                obj7 = arrayList5.get(0);
                                int i45 = ((Placeable) obj7).k;
                                int size9 = arrayList5.size() - 1;
                                if (1 <= size9) {
                                    Object obj13 = obj7;
                                    int i46 = i45;
                                    int i47 = 1;
                                    while (true) {
                                        Object obj14 = arrayList5.get(i47);
                                        i23 = i22;
                                        int i48 = ((Placeable) obj14).k;
                                        if (i46 < i48) {
                                            i46 = i48;
                                            obj13 = obj14;
                                        }
                                        if (i47 == size9) {
                                            break;
                                        }
                                        i47++;
                                        i22 = i23;
                                    }
                                    obj7 = obj13;
                                } else {
                                    i23 = i22;
                                }
                            }
                            Placeable placeable5 = (Placeable) obj7;
                            if (placeable5 != null) {
                                i24 = placeable5.k;
                            } else {
                                i24 = 0;
                            }
                            if (i23 != 0 && i24 != 0) {
                                int i49 = i;
                                if (i49 == 0) {
                                    if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.j) {
                                        i25 = subcomposeMeasureScope.y0(f2);
                                        fabPlacement = new FabPlacement(i25, i24);
                                    } else {
                                        y02 = subcomposeMeasureScope.y0(f2);
                                        i25 = (h - y02) - i23;
                                        fabPlacement = new FabPlacement(i25, i24);
                                    }
                                } else {
                                    if (i49 == 2) {
                                        if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.j) {
                                            y02 = subcomposeMeasureScope.y0(f2);
                                            i25 = (h - y02) - i23;
                                        } else {
                                            i25 = subcomposeMeasureScope.y0(f2);
                                        }
                                    } else {
                                        i25 = (h - i23) / 2;
                                    }
                                    fabPlacement = new FabPlacement(i25, i24);
                                }
                                List r4 = subcomposeMeasureScope.r(ScaffoldLayoutContent.n, new ComposableLambdaImpl(-502652347, true, new zc(6, fabPlacement, composableLambdaImpl4)));
                                arrayList = new ArrayList(r4.size());
                                size = r4.size();
                                for (i19 = 0; i19 < size; i19++) {
                                    arrayList.add(((Measurable) r4.get(i19)).w(a3));
                                }
                                if (!arrayList.isEmpty()) {
                                    j = a3;
                                    obj5 = null;
                                } else {
                                    obj5 = arrayList.get(0);
                                    int i50 = ((Placeable) obj5).k;
                                    int size10 = arrayList.size() - 1;
                                    if (1 <= size10) {
                                        int i51 = 1;
                                        while (true) {
                                            Object obj15 = arrayList.get(i51);
                                            j = a3;
                                            int i52 = ((Placeable) obj15).k;
                                            if (i50 < i52) {
                                                i50 = i52;
                                                obj5 = obj15;
                                            }
                                            if (i51 == size10) {
                                                break;
                                            }
                                            i51++;
                                            a3 = j;
                                        }
                                    } else {
                                        j = a3;
                                    }
                                }
                                placeable = (Placeable) obj5;
                                if (placeable == null) {
                                    num = Integer.valueOf(placeable.k);
                                } else {
                                    num = null;
                                }
                                if (fabPlacement == null) {
                                    int i53 = fabPlacement.b;
                                    if (num == null) {
                                        y0 = windowInsets2.c(subcomposeMeasureScope) + subcomposeMeasureScope.y0(f2) + i53;
                                    } else {
                                        y0 = subcomposeMeasureScope.y0(f2) + num.intValue() + i53;
                                    }
                                    num2 = Integer.valueOf(y0);
                                } else {
                                    num2 = null;
                                }
                                if (i40 == 0) {
                                    if (num2 != null) {
                                        c2 = num2.intValue();
                                    } else if (num != null) {
                                        c2 = num.intValue();
                                    } else {
                                        c2 = windowInsets2.c(subcomposeMeasureScope);
                                    }
                                    i20 = i40 + c2;
                                } else {
                                    i20 = 0;
                                }
                                c = WindowInsetsKt.c(windowInsets2, subcomposeMeasureScope);
                                if (!arrayList4.isEmpty()) {
                                    f = c.d();
                                } else {
                                    f = 0.0f;
                                }
                                if (arrayList.isEmpty() && num != null) {
                                    a2 = subcomposeMeasureScope.U(num.intValue());
                                } else {
                                    a2 = c.a();
                                }
                                PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(PaddingKt.b(c, subcomposeMeasureScope.getLayoutDirection()), f, PaddingKt.a(c, subcomposeMeasureScope.getLayoutDirection()), a2);
                                ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$12 = scaffoldKt$ScaffoldLayout$contentPadding$1$1;
                                ((SnapshotMutableStateImpl) scaffoldKt$ScaffoldLayout$contentPadding$1$12.a).setValue(paddingValuesImpl);
                                long j2 = j;
                                int i54 = g - i17;
                                List r5 = subcomposeMeasureScope.r(ScaffoldLayoutContent.k, new ComposableLambdaImpl(-574531306, true, new zc(4, composableLambdaImpl2, scaffoldKt$ScaffoldLayout$contentPadding$1$12)));
                                final FabPlacement fabPlacement2 = fabPlacement;
                                final ArrayList arrayList7 = new ArrayList(r5.size());
                                size2 = r5.size();
                                i21 = 0;
                                while (i21 < size2) {
                                    arrayList7.add(((Measurable) r5.get(i21)).w(Constraints.a(j2, 0, 0, 0, i54, 7)));
                                    i21++;
                                    num = num;
                                    i20 = i20;
                                }
                                final Integer num3 = num;
                                final int i55 = i20;
                                final Integer num4 = num2;
                                Function1 function1 = new Function1() { // from class: me
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj16) {
                                        int i56;
                                        int i57;
                                        int i58;
                                        int i59;
                                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj16;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ScaffoldKt.a;
                                        ArrayList arrayList8 = arrayList7;
                                        int size11 = arrayList8.size();
                                        for (int i60 = 0; i60 < size11; i60++) {
                                            placementScope.e((Placeable) arrayList8.get(i60), 0, i17, 0.0f);
                                        }
                                        ArrayList arrayList9 = arrayList4;
                                        int size12 = arrayList9.size();
                                        for (int i61 = 0; i61 < size12; i61++) {
                                            placementScope.e((Placeable) arrayList9.get(i61), 0, 0, 0.0f);
                                        }
                                        ArrayList arrayList10 = arrayList6;
                                        int size13 = arrayList10.size();
                                        int i62 = 0;
                                        while (true) {
                                            i56 = g;
                                            if (i62 >= size13) {
                                                break;
                                            }
                                            placementScope.e((Placeable) arrayList10.get(i62), 0, i56 - i55, 0.0f);
                                            i62++;
                                        }
                                        ArrayList arrayList11 = arrayList;
                                        int size14 = arrayList11.size();
                                        for (int i63 = 0; i63 < size14; i63++) {
                                            Placeable placeable6 = (Placeable) arrayList11.get(i63);
                                            Integer num5 = num3;
                                            if (num5 != null) {
                                                i59 = num5.intValue();
                                            } else {
                                                i59 = 0;
                                            }
                                            placementScope.e(placeable6, 0, i56 - i59, 0.0f);
                                        }
                                        ArrayList arrayList12 = arrayList5;
                                        int size15 = arrayList12.size();
                                        for (int i64 = 0; i64 < size15; i64++) {
                                            Placeable placeable7 = (Placeable) arrayList12.get(i64);
                                            FabPlacement fabPlacement3 = fabPlacement2;
                                            if (fabPlacement3 != null) {
                                                i57 = fabPlacement3.a;
                                            } else {
                                                i57 = 0;
                                            }
                                            Integer num6 = num4;
                                            if (num6 != null) {
                                                i58 = num6.intValue();
                                            } else {
                                                i58 = 0;
                                            }
                                            placementScope.e(placeable7, i57, i56 - i58, 0.0f);
                                        }
                                        return Unit.a;
                                    }
                                };
                                map = EmptyMap.j;
                                return subcomposeMeasureScope.B(h, g, map, function1);
                            }
                        }
                        fabPlacement = null;
                        List r42 = subcomposeMeasureScope.r(ScaffoldLayoutContent.n, new ComposableLambdaImpl(-502652347, true, new zc(6, fabPlacement, composableLambdaImpl4)));
                        arrayList = new ArrayList(r42.size());
                        size = r42.size();
                        while (i19 < size) {
                        }
                        if (!arrayList.isEmpty()) {
                        }
                        placeable = (Placeable) obj5;
                        if (placeable == null) {
                        }
                        if (fabPlacement == null) {
                        }
                        if (i40 == 0) {
                        }
                        c = WindowInsetsKt.c(windowInsets2, subcomposeMeasureScope);
                        if (!arrayList4.isEmpty()) {
                        }
                        if (arrayList.isEmpty()) {
                        }
                        a2 = c.a();
                        PaddingValuesImpl paddingValuesImpl2 = new PaddingValuesImpl(PaddingKt.b(c, subcomposeMeasureScope.getLayoutDirection()), f, PaddingKt.a(c, subcomposeMeasureScope.getLayoutDirection()), a2);
                        ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$122 = scaffoldKt$ScaffoldLayout$contentPadding$1$1;
                        ((SnapshotMutableStateImpl) scaffoldKt$ScaffoldLayout$contentPadding$1$122.a).setValue(paddingValuesImpl2);
                        long j22 = j;
                        int i542 = g - i17;
                        List r52 = subcomposeMeasureScope.r(ScaffoldLayoutContent.k, new ComposableLambdaImpl(-574531306, true, new zc(4, composableLambdaImpl2, scaffoldKt$ScaffoldLayout$contentPadding$1$122)));
                        final FabPlacement fabPlacement22 = fabPlacement;
                        final ArrayList arrayList72 = new ArrayList(r52.size());
                        size2 = r52.size();
                        i21 = 0;
                        while (i21 < size2) {
                        }
                        final Integer num32 = num;
                        final int i552 = i20;
                        final Integer num42 = num2;
                        Function1 function12 = new Function1() { // from class: me
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj16) {
                                int i56;
                                int i57;
                                int i58;
                                int i59;
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj16;
                                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ScaffoldKt.a;
                                ArrayList arrayList8 = arrayList72;
                                int size11 = arrayList8.size();
                                for (int i60 = 0; i60 < size11; i60++) {
                                    placementScope.e((Placeable) arrayList8.get(i60), 0, i17, 0.0f);
                                }
                                ArrayList arrayList9 = arrayList4;
                                int size12 = arrayList9.size();
                                for (int i61 = 0; i61 < size12; i61++) {
                                    placementScope.e((Placeable) arrayList9.get(i61), 0, 0, 0.0f);
                                }
                                ArrayList arrayList10 = arrayList6;
                                int size13 = arrayList10.size();
                                int i62 = 0;
                                while (true) {
                                    i56 = g;
                                    if (i62 >= size13) {
                                        break;
                                    }
                                    placementScope.e((Placeable) arrayList10.get(i62), 0, i56 - i552, 0.0f);
                                    i62++;
                                }
                                ArrayList arrayList11 = arrayList;
                                int size14 = arrayList11.size();
                                for (int i63 = 0; i63 < size14; i63++) {
                                    Placeable placeable6 = (Placeable) arrayList11.get(i63);
                                    Integer num5 = num32;
                                    if (num5 != null) {
                                        i59 = num5.intValue();
                                    } else {
                                        i59 = 0;
                                    }
                                    placementScope.e(placeable6, 0, i56 - i59, 0.0f);
                                }
                                ArrayList arrayList12 = arrayList5;
                                int size15 = arrayList12.size();
                                for (int i64 = 0; i64 < size15; i64++) {
                                    Placeable placeable7 = (Placeable) arrayList12.get(i64);
                                    FabPlacement fabPlacement3 = fabPlacement22;
                                    if (fabPlacement3 != null) {
                                        i57 = fabPlacement3.a;
                                    } else {
                                        i57 = 0;
                                    }
                                    Integer num6 = num42;
                                    if (num6 != null) {
                                        i58 = num6.intValue();
                                    } else {
                                        i58 = 0;
                                    }
                                    placementScope.e(placeable7, i57, i56 - i58, 0.0f);
                                }
                                return Unit.a;
                            }
                        };
                        map = EmptyMap.j;
                        return subcomposeMeasureScope.B(h, g, map, function12);
                    }
                };
                gapComposer.g0(function22);
                K2 = function22;
            }
            SubcomposeLayoutKt.a(null, (Function2) K2, gapComposer, 0, 1);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new s5(i, composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3, function2, windowInsets, composableLambdaImpl4, i2);
        }
    }
}
