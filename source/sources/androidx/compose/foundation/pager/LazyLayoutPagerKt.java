package androidx.compose.foundation.pager;

import android.os.Trace;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntList;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.BringIntoViewSpec_androidKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.pager.LazyLayoutPagerKt;
import androidx.compose.foundation.pager.PageSize;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a7;
import defpackage.ec;
import defpackage.ia;
import defpackage.s7;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutPagerKt {
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02b6, code lost:
    
        if (r8.d(1) != false) goto L188;
     */
    /* JADX WARN: Removed duplicated region for block: B:207:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x03b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, PagerState pagerState, final PaddingValues paddingValues, final TargetedFlingBehavior targetedFlingBehavior, final boolean z, final OverscrollEffect overscrollEffect, final float f, final PageSize pageSize, NestedScrollConnection nestedScrollConnection, final Alignment.Vertical vertical, final SnapPosition snapPosition, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        boolean z2;
        Modifier modifier2;
        GapComposer gapComposer;
        final NestedScrollConnection nestedScrollConnection2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean f2;
        Object K;
        int i5;
        GapComposer gapComposer2;
        Orientation orientation;
        int i6;
        boolean z16;
        KProperty0 kProperty0;
        boolean z17;
        boolean g;
        Object K2;
        boolean z18;
        boolean z19;
        boolean z20;
        Object K3;
        boolean z21;
        boolean f3;
        Object K4;
        boolean z22;
        Modifier modifier3;
        Modifier l;
        boolean z23;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        final PagerState pagerState2 = pagerState;
        Orientation orientation2 = Orientation.k;
        GapComposer gapComposer3 = (GapComposer) composer;
        gapComposer3.X(-572816025);
        int i17 = 2;
        if ((i & 6) == 0) {
            if (gapComposer3.f(modifier)) {
                i16 = 4;
            } else {
                i16 = 2;
            }
            i3 = i16 | i;
        } else {
            i3 = i;
        }
        int i18 = 16;
        if ((i & 48) == 0) {
            if (gapComposer3.f(pagerState2)) {
                i15 = 32;
            } else {
                i15 = 16;
            }
            i3 |= i15;
        }
        int i19 = 128;
        if ((i & 384) == 0) {
            if (gapComposer3.f(paddingValues)) {
                i14 = 256;
            } else {
                i14 = 128;
            }
            i3 |= i14;
        }
        int i20 = 1024;
        if ((i & 3072) == 0) {
            if (gapComposer3.g(false)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i3 |= i13;
        }
        int i21 = 8192;
        if ((i & 24576) == 0) {
            if (gapComposer3.d(1)) {
                i12 = 16384;
            } else {
                i12 = 8192;
            }
            i3 |= i12;
        }
        int i22 = 65536;
        if ((i & 196608) == 0) {
            if (gapComposer3.f(targetedFlingBehavior)) {
                i11 = 131072;
            } else {
                i11 = 65536;
            }
            i3 |= i11;
        }
        int i23 = 524288;
        if ((i & 1572864) == 0) {
            if (gapComposer3.g(z)) {
                i10 = 1048576;
            } else {
                i10 = 524288;
            }
            i3 |= i10;
        }
        if ((i & 12582912) == 0) {
            if (gapComposer3.f(overscrollEffect)) {
                i9 = 8388608;
            } else {
                i9 = 4194304;
            }
            i3 |= i9;
        }
        if ((i & 100663296) == 0) {
            if (gapComposer3.d(0)) {
                i8 = 67108864;
            } else {
                i8 = 33554432;
            }
            i3 |= i8;
        }
        if ((i & 805306368) == 0) {
            if (gapComposer3.c(f)) {
                i7 = 536870912;
            } else {
                i7 = 268435456;
            }
            i3 |= i7;
        }
        int i24 = i3;
        if ((i2 & 6) == 0) {
            if (gapComposer3.f(pageSize)) {
                i17 = 4;
            }
            i4 = i2 | i17;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            if (gapComposer3.h(nestedScrollConnection)) {
                i18 = 32;
            }
            i4 |= i18;
        }
        if ((i2 & 384) == 0) {
            if (gapComposer3.h(null)) {
                i19 = 256;
            }
            i4 |= i19;
        }
        int i25 = i2 & 3072;
        BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
        if (i25 == 0) {
            if (gapComposer3.f(horizontal)) {
                i20 = 2048;
            }
            i4 |= i20;
        }
        if ((i2 & 24576) == 0) {
            if (gapComposer3.f(vertical)) {
                i21 = 16384;
            }
            i4 |= i21;
        }
        if ((i2 & 196608) == 0) {
            if (gapComposer3.f(snapPosition)) {
                i22 = 131072;
            }
            i4 |= i22;
        }
        if ((i2 & 1572864) == 0) {
            if (gapComposer3.h(composableLambdaImpl)) {
                i23 = 1048576;
            }
            i4 |= i23;
        }
        if ((i24 & 306783379) == 306783378 && (599187 & i4) == 599186) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (gapComposer3.N(i24 & 1, z2)) {
            int i26 = i24 & 112;
            if (i26 == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            Object K5 = gapComposer3.K();
            Object obj = Composer.Companion.a;
            if (z3 || K5 == obj) {
                K5 = new ia(pagerState2, 0);
                gapComposer3.g0(K5);
            }
            final Function0 function0 = (Function0) K5;
            int i27 = i24 >> 3;
            int i28 = i27 & 14;
            int i29 = i4 >> 15;
            int i30 = i28 | (i29 & 112) | (i4 & 896);
            int i31 = i4;
            final MutableState k = SnapshotStateKt.k(composableLambdaImpl, gapComposer3);
            final MutableState k2 = SnapshotStateKt.k(null, gapComposer3);
            if ((((i30 & 14) ^ 6) > 4 && gapComposer3.f(pagerState2)) || (i30 & 6) == 4) {
                z4 = true;
            } else {
                z4 = false;
            }
            boolean f4 = z4 | gapComposer3.f(k) | gapComposer3.f(k2) | gapComposer3.f(function0);
            Object K6 = gapComposer3.K();
            if (f4 || K6 == obj) {
                K6 = new PropertyReference(SnapshotStateKt.d(SnapshotStateKt.j(), new f(SnapshotStateKt.d(SnapshotStateKt.j(), new Function0() { // from class: androidx.compose.foundation.pager.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        return new PagerLayoutIntervalContent((Function4) MutableState.this.getValue(), (Function1) k2.getValue(), ((Number) function0.a()).intValue());
                    }
                }), pagerState2)), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposer3.g0(K6);
            }
            final KProperty0 kProperty02 = (KProperty0) K6;
            Object K7 = gapComposer3.K();
            if (K7 == obj) {
                K7 = EffectsKt.h(gapComposer3);
                gapComposer3.g0(K7);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) K7;
            if (i26 == 32) {
                z5 = true;
            } else {
                z5 = false;
            }
            Object K8 = gapComposer3.K();
            if (z5 || K8 == obj) {
                K8 = new ia(pagerState2, 1);
                gapComposer3.g0(K8);
            }
            final Function0 function02 = (Function0) K8;
            int i32 = i24 >> 9;
            int i33 = (i24 & 65520) | (i32 & 458752) | (i32 & 3670016) | ((i31 << 21) & 29360128);
            int i34 = i31 << 15;
            int i35 = i33 | (i34 & 234881024) | (i34 & 1879048192);
            if ((((i35 & 112) ^ 48) > 32 && gapComposer3.f(pagerState2)) || (i35 & 48) == 32) {
                z6 = true;
            } else {
                z6 = false;
            }
            if ((((i35 & 896) ^ 384) > 256 && gapComposer3.f(paddingValues)) || (i35 & 384) == 256) {
                z7 = true;
            } else {
                z7 = false;
            }
            boolean z24 = z7 | z6;
            if ((((i35 & 7168) ^ 3072) > 2048 && gapComposer3.g(false)) || (i35 & 3072) == 2048) {
                z8 = true;
            } else {
                z8 = false;
            }
            boolean z25 = z24 | z8;
            if (((57344 & i35) ^ 24576) <= 16384) {
            }
            if ((i35 & 24576) != 16384) {
                z9 = false;
                boolean z26 = z25 | z9;
                if ((((i35 & 234881024) ^ 100663296) <= 67108864 && gapComposer3.f(horizontal)) || (i35 & 100663296) == 67108864) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                boolean z27 = z10 | z26;
                if ((((i35 & 1879048192) ^ 805306368) <= 536870912 && gapComposer3.f(vertical)) || (i35 & 805306368) == 536870912) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                boolean z28 = z27 | z11;
                if ((((i35 & 3670016) ^ 1572864) <= 1048576 && gapComposer3.c(f)) || (i35 & 1572864) == 1048576) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                boolean z29 = z28 | z12;
                if ((((i35 & 29360128) ^ 12582912) <= 8388608 && gapComposer3.f(pageSize)) || (i35 & 12582912) == 8388608) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                boolean z30 = z29 | z13;
                if ((((i29 & 14) ^ 6) <= 4 && gapComposer3.f(snapPosition)) || (i29 & 6) == 4) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                boolean f5 = z30 | z14 | gapComposer3.f(function02);
                if ((((i35 & 458752) ^ 196608) <= 131072 && gapComposer3.d(0)) || (i35 & 196608) == 131072) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                f2 = f5 | z15 | gapComposer3.f(coroutineScope);
                K = gapComposer3.K();
                if (f2 && K != obj) {
                    i5 = 4;
                    kProperty0 = kProperty02;
                    gapComposer2 = gapComposer3;
                    orientation = orientation2;
                    i6 = i26;
                    z16 = true;
                    pagerState2 = pagerState;
                } else {
                    i5 = 4;
                    gapComposer2 = gapComposer3;
                    orientation = orientation2;
                    i6 = i26;
                    z16 = true;
                    pagerState2 = pagerState;
                    K = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1
                        {
                            Orientation orientation3 = Orientation.j;
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:114:0x0393  */
                        /* JADX WARN: Removed duplicated region for block: B:124:0x0403  */
                        /* JADX WARN: Removed duplicated region for block: B:136:0x0443  */
                        /* JADX WARN: Removed duplicated region for block: B:139:0x0452 A[LOOP:9: B:138:0x0450->B:139:0x0452, LOOP_END] */
                        /* JADX WARN: Removed duplicated region for block: B:143:0x0480  */
                        /* JADX WARN: Removed duplicated region for block: B:153:0x04bb  */
                        /* JADX WARN: Removed duplicated region for block: B:166:0x0506  */
                        /* JADX WARN: Removed duplicated region for block: B:169:0x0511 A[LOOP:12: B:168:0x050f->B:169:0x0511, LOOP_END] */
                        /* JADX WARN: Removed duplicated region for block: B:180:0x0550  */
                        /* JADX WARN: Removed duplicated region for block: B:186:0x0584  */
                        /* JADX WARN: Removed duplicated region for block: B:203:0x0654  */
                        /* JADX WARN: Removed duplicated region for block: B:207:0x06a3  */
                        /* JADX WARN: Removed duplicated region for block: B:213:0x0716  */
                        /* JADX WARN: Removed duplicated region for block: B:216:0x075e  */
                        /* JADX WARN: Removed duplicated region for block: B:218:0x0764  */
                        /* JADX WARN: Removed duplicated region for block: B:225:0x0767  */
                        /* JADX WARN: Removed duplicated region for block: B:226:0x0761  */
                        /* JADX WARN: Removed duplicated region for block: B:227:0x0718  */
                        /* JADX WARN: Removed duplicated region for block: B:236:0x06de  */
                        /* JADX WARN: Removed duplicated region for block: B:246:0x06a6  */
                        /* JADX WARN: Removed duplicated region for block: B:255:0x065a  */
                        /* JADX WARN: Removed duplicated region for block: B:271:0x05f7  */
                        /* JADX WARN: Removed duplicated region for block: B:284:0x0553  */
                        /* JADX WARN: Removed duplicated region for block: B:286:0x04ae  */
                        /* JADX WARN: Removed duplicated region for block: B:287:0x0445  */
                        /* JADX WARN: Removed duplicated region for block: B:288:0x03e4  */
                        /* JADX WARN: Type inference failed for: r14v20, types: [kotlin.collections.EmptyList] */
                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                            int i36;
                            Function1 function1;
                            int i37;
                            PagerState pagerState3;
                            int i38;
                            MutableState mutableState;
                            int i39;
                            int i40;
                            Alignment.Vertical vertical2;
                            int i41;
                            int i42;
                            int i43;
                            int i44;
                            int i45;
                            long j2;
                            int i46;
                            int i47;
                            int i48;
                            Alignment.Vertical vertical3;
                            int i49;
                            int i50;
                            int i51;
                            int i52;
                            Alignment.Vertical vertical4;
                            int i53;
                            int i54;
                            int max;
                            int i55;
                            int i56;
                            int i57;
                            int i58;
                            int i59;
                            int i60;
                            ArrayDeque arrayDeque;
                            Alignment.Vertical vertical5;
                            int i61;
                            int i62;
                            MeasuredPage measuredPage;
                            ArrayList arrayList;
                            int i63;
                            ArrayList arrayList2;
                            int i64;
                            ArrayList arrayList3;
                            int size;
                            int i65;
                            ArrayList arrayList4;
                            int min;
                            int i66;
                            int i67;
                            int i68;
                            int i69;
                            List list;
                            int i70;
                            int i71;
                            int size2;
                            int i72;
                            boolean z31;
                            int i73;
                            int g2;
                            int i74;
                            boolean z32;
                            int i75;
                            boolean z33;
                            SubcomposeMeasureScope subcomposeMeasureScope;
                            ArrayDeque arrayDeque2;
                            ArrayList arrayList5;
                            ArrayList arrayList6;
                            Object obj2;
                            MeasuredPage measuredPage2;
                            int i76;
                            boolean z34;
                            Map map;
                            boolean z35;
                            PagerMeasureResult pagerMeasureResult;
                            SubcomposeMeasureScope subcomposeMeasureScope2;
                            PagerState pagerState4;
                            LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                            Alignment.Vertical vertical6;
                            int[] iArr;
                            ArrayList arrayList7;
                            Orientation orientation3;
                            long j3;
                            ArrayList arrayList8;
                            int i77;
                            int i78;
                            int i79;
                            MutableIntList mutableIntList;
                            int i80;
                            int i81;
                            int max2;
                            Map map2;
                            PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                            PagerState pagerState5 = pagerState2;
                            pagerState5.A.getValue();
                            Orientation orientation4 = Orientation.k;
                            Orientation orientation5 = Orientation.j;
                            CheckScrollableContainerConstraintsKt.a(j, orientation4);
                            SubcomposeMeasureScope subcomposeMeasureScope3 = lazyLayoutMeasureScopeImpl.k;
                            LayoutDirection layoutDirection = subcomposeMeasureScope3.getLayoutDirection();
                            PaddingValues paddingValues2 = paddingValues;
                            int y0 = subcomposeMeasureScope3.y0(PaddingKt.b(paddingValues2, layoutDirection));
                            int y02 = subcomposeMeasureScope3.y0(PaddingKt.a(paddingValues2, subcomposeMeasureScope3.getLayoutDirection()));
                            int y03 = subcomposeMeasureScope3.y0(paddingValues2.d());
                            int y04 = subcomposeMeasureScope3.y0(paddingValues2.a()) + y03;
                            int i82 = y02 + y0;
                            int i83 = i82 - y0;
                            long i84 = ConstraintsKt.i(-i82, -y04, j);
                            pagerState5.n = lazyLayoutMeasureScopeImpl;
                            int y05 = subcomposeMeasureScope3.y0(f);
                            int h = Constraints.h(j) - i82;
                            int i85 = y04;
                            int i86 = i82;
                            long j4 = (y0 << 32) | (y03 & 4294967295L);
                            ((PageSize.Fill) pageSize).getClass();
                            if (h < 0) {
                                i36 = 0;
                            } else {
                                i36 = h;
                            }
                            ConstraintsKt.b(0, i36, 0, Constraints.g(i84), 5);
                            PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) kProperty02.a();
                            SnapPosition snapPosition2 = snapPosition;
                            Snapshot a = Snapshot.Companion.a();
                            Orientation orientation6 = orientation4;
                            if (a != null) {
                                function1 = a.e();
                            } else {
                                function1 = null;
                            }
                            Snapshot b = Snapshot.Companion.b(a);
                            try {
                                PagerScrollPosition pagerScrollPosition = pagerState5.d;
                                long j5 = i84;
                                int a2 = pagerScrollPosition.a();
                                int a3 = LazyLayoutItemProviderKt.a(a2, pagerLazyLayoutItemProvider, pagerScrollPosition.e);
                                if (a2 != a3) {
                                    i37 = y05;
                                    ((SnapshotMutableIntStateImpl) pagerScrollPosition.b).k(a3);
                                    pagerScrollPosition.f.b(a2);
                                } else {
                                    i37 = y05;
                                }
                                pagerScrollPosition.a();
                                float b2 = pagerScrollPosition.b();
                                pagerState5.l();
                                snapPosition2.getClass();
                                int i87 = i36 + i37;
                                float f6 = 0.0f;
                                int b3 = MathKt.b(0.0f - (b2 * i87));
                                Snapshot.Companion.e(a, b, function1);
                                MutableIntList a4 = LazyLayoutBeyondBoundsStateKt.a(pagerLazyLayoutItemProvider, pagerState5.y, pagerState5.u);
                                MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
                                MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap();
                                int intValue = ((Number) function02.a()).intValue();
                                MutableState mutableState2 = pagerState5.z;
                                if (y0 < 0) {
                                    InlineClassHelperKt.a("negative beforeContentPadding");
                                }
                                if (i83 < 0) {
                                    InlineClassHelperKt.a("negative afterContentPadding");
                                }
                                if (i87 < 0) {
                                    pagerState3 = pagerState5;
                                    i38 = 0;
                                } else {
                                    pagerState3 = pagerState5;
                                    i38 = i87;
                                }
                                if (intValue < 0) {
                                    mutableState = mutableState2;
                                    i39 = intValue;
                                } else {
                                    mutableState = mutableState2;
                                    i39 = 0;
                                }
                                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider;
                                int i88 = i39;
                                long b4 = ConstraintsKt.b(0, i36, 0, Constraints.g(j5), 5);
                                SnapPosition snapPosition3 = snapPosition;
                                CoroutineScope coroutineScope2 = coroutineScope;
                                if (intValue <= 0) {
                                    int j6 = Constraints.j(j5);
                                    int i89 = Constraints.i(j5);
                                    a7 a7Var = new a7(15);
                                    int g3 = ConstraintsKt.g(j6 + i86, j);
                                    int f7 = ConstraintsKt.f(i89 + i85, j);
                                    map2 = EmptyMap.j;
                                    pagerMeasureResult = new PagerMeasureResult(i36, i37, i83, -y0, h + i83, i88, snapPosition3, subcomposeMeasureScope3.B(g3, f7, map2, a7Var), coroutineScope2, lazyLayoutMeasureScopeImpl, b4);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                    subcomposeMeasureScope2 = subcomposeMeasureScope3;
                                    pagerState4 = pagerState3;
                                } else {
                                    long j7 = j4;
                                    int i90 = i36;
                                    SubcomposeMeasureScope subcomposeMeasureScope4 = subcomposeMeasureScope3;
                                    int i91 = b3;
                                    int i92 = a3;
                                    while (i92 > 0 && i91 > 0) {
                                        i92--;
                                        i91 -= i38;
                                    }
                                    int i93 = i91 * (-1);
                                    if (i92 >= intValue) {
                                        i92 = intValue - 1;
                                        i93 = 0;
                                    }
                                    ArrayDeque arrayDeque3 = new ArrayDeque();
                                    int i94 = -y0;
                                    if (i37 < 0) {
                                        i40 = i37;
                                    } else {
                                        i40 = 0;
                                    }
                                    int i95 = i40 + i94;
                                    int i96 = i93 + i95;
                                    int i97 = 0;
                                    while (true) {
                                        vertical2 = vertical;
                                        if (i96 >= 0 || i92 <= 0) {
                                            break;
                                        }
                                        i92--;
                                        int i98 = h;
                                        MutableIntObjectMap mutableIntObjectMap3 = mutableIntObjectMap2;
                                        int i99 = i90;
                                        int i100 = i37;
                                        int i101 = y0;
                                        long j8 = b4;
                                        int i102 = i86;
                                        PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider3 = pagerLazyLayoutItemProvider2;
                                        long j9 = j7;
                                        int i103 = i85;
                                        int i104 = i38;
                                        MeasuredPage a5 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i92, j8, pagerLazyLayoutItemProvider3, j9, vertical2, subcomposeMeasureScope4.getLayoutDirection(), i99, mutableIntObjectMap3);
                                        i90 = i99;
                                        mutableIntObjectMap2 = mutableIntObjectMap3;
                                        arrayDeque3.add(0, a5);
                                        i97 = Math.max(i97, a5.h);
                                        i96 += i104;
                                        pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                                        j7 = j9;
                                        i38 = i104;
                                        i85 = i103;
                                        subcomposeMeasureScope4 = subcomposeMeasureScope4;
                                        i86 = i102;
                                        y0 = i101;
                                        b4 = j8;
                                        h = i98;
                                        j5 = j5;
                                        i37 = i100;
                                        i88 = i88;
                                        pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider3;
                                        intValue = intValue;
                                        mutableState = mutableState;
                                    }
                                    int i105 = i97;
                                    Alignment.Vertical vertical7 = vertical2;
                                    int i106 = h;
                                    long j10 = j5;
                                    int i107 = i37;
                                    MutableState mutableState3 = mutableState;
                                    int i108 = i88;
                                    SubcomposeMeasureScope subcomposeMeasureScope5 = subcomposeMeasureScope4;
                                    int i109 = y0;
                                    int i110 = intValue;
                                    int i111 = i86;
                                    PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider4 = pagerLazyLayoutItemProvider2;
                                    long j11 = b4;
                                    int i112 = i85;
                                    long j12 = j7;
                                    int i113 = i38;
                                    if (i96 < i95) {
                                        i96 = i95;
                                    }
                                    int i114 = i96 - i95;
                                    int i115 = i106 + i83;
                                    if (i115 < 0) {
                                        i41 = 0;
                                    } else {
                                        i41 = i115;
                                    }
                                    int i116 = -i114;
                                    int i117 = i92;
                                    int i118 = 0;
                                    boolean z36 = false;
                                    while (i118 < arrayDeque3.l) {
                                        if (i116 >= i41) {
                                            arrayDeque3.c(i118);
                                            z36 = true;
                                        } else {
                                            i117++;
                                            i116 += i113;
                                            i118++;
                                        }
                                    }
                                    int i119 = i116;
                                    int i120 = i110;
                                    int i121 = i114;
                                    int i122 = i92;
                                    int i123 = i117;
                                    while (true) {
                                        if (i123 < i120) {
                                            if (i119 >= i41 && i119 > 0 && !arrayDeque3.isEmpty()) {
                                                i42 = i115;
                                                i47 = i106;
                                                i43 = i105;
                                                i44 = i123;
                                                int i124 = i122;
                                                i45 = i120;
                                                j2 = j11;
                                                i46 = i124;
                                                break;
                                            }
                                            int i125 = i115;
                                            int i126 = i105;
                                            long j13 = j11;
                                            int i127 = i41;
                                            int i128 = i123;
                                            int i129 = i122;
                                            int i130 = i120;
                                            MeasuredPage a6 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i128, j13, pagerLazyLayoutItemProvider4, j12, vertical7, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2);
                                            int i131 = i130 - 1;
                                            if (i128 == i131) {
                                                i81 = i90;
                                            } else {
                                                i81 = i113;
                                            }
                                            i119 += i81;
                                            if (i119 <= i95 && i128 != i131) {
                                                i121 -= i113;
                                                i129 = i128 + 1;
                                                max2 = i126;
                                                z36 = true;
                                            } else {
                                                max2 = Math.max(i126, a6.h);
                                                arrayDeque3.addLast(a6);
                                            }
                                            i115 = i125;
                                            i123 = i128 + 1;
                                            i105 = max2;
                                            i120 = i130;
                                            i122 = i129;
                                            i41 = i127;
                                            j11 = j13;
                                        } else {
                                            i42 = i115;
                                            i43 = i105;
                                            i44 = i123;
                                            int i132 = i122;
                                            i45 = i120;
                                            j2 = j11;
                                            i46 = i132;
                                            i47 = i106;
                                            break;
                                        }
                                    }
                                    if (i119 < i47) {
                                        int i133 = i47 - i119;
                                        int i134 = i119 + i133;
                                        int i135 = i121 - i133;
                                        while (true) {
                                            i80 = i109;
                                            if (i135 >= i80 || i46 <= 0) {
                                                break;
                                            }
                                            i46--;
                                            i109 = i80;
                                            int i136 = i134;
                                            MeasuredPage a7 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i46, j2, pagerLazyLayoutItemProvider4, j12, vertical7, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2);
                                            arrayDeque3.add(0, a7);
                                            i43 = Math.max(i43, a7.h);
                                            i135 += i113;
                                            vertical7 = vertical7;
                                            i44 = i44;
                                            i134 = i136;
                                        }
                                        int i137 = i135;
                                        i109 = i80;
                                        i49 = i134;
                                        i48 = i44;
                                        vertical3 = vertical7;
                                        if (i137 < 0) {
                                            i49 += i137;
                                            i50 = 0;
                                        } else {
                                            i50 = i137;
                                        }
                                    } else {
                                        int i138 = i119;
                                        i48 = i44;
                                        vertical3 = vertical7;
                                        int i139 = i121;
                                        i49 = i138;
                                        i50 = i139;
                                    }
                                    if (i50 < 0) {
                                        InlineClassHelperKt.a("invalid currentFirstPageScrollOffset");
                                    }
                                    int i140 = -i50;
                                    MeasuredPage measuredPage3 = (MeasuredPage) arrayDeque3.first();
                                    if (i109 <= 0) {
                                        i51 = i43;
                                        i52 = i107;
                                        vertical4 = vertical3;
                                        if (i52 >= 0) {
                                            i53 = i48;
                                            i54 = i113;
                                            int i141 = i50;
                                            Orientation orientation7 = Orientation.j;
                                            max = Math.max(0, i46 - i108);
                                            i55 = i46 - 1;
                                            if (max > i55) {
                                                ArrayList arrayList9 = null;
                                                while (true) {
                                                    if (arrayList9 == null) {
                                                        arrayList9 = new ArrayList();
                                                    }
                                                    i60 = i54;
                                                    arrayList = arrayList9;
                                                    Orientation orientation8 = Orientation.j;
                                                    i59 = i140;
                                                    vertical5 = vertical4;
                                                    i62 = i47;
                                                    measuredPage = measuredPage3;
                                                    int i142 = i49;
                                                    i56 = i52;
                                                    i57 = i108;
                                                    i58 = i142;
                                                    arrayDeque = arrayDeque3;
                                                    i61 = max;
                                                    arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i55, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2));
                                                    if (i55 == i61) {
                                                        break;
                                                    }
                                                    i55--;
                                                    i108 = i57;
                                                    i52 = i56;
                                                    i49 = i58;
                                                    measuredPage3 = measuredPage;
                                                    max = i61;
                                                    i47 = i62;
                                                    arrayDeque3 = arrayDeque;
                                                    vertical4 = vertical5;
                                                    i140 = i59;
                                                    arrayList9 = arrayList;
                                                    i54 = i60;
                                                }
                                            } else {
                                                int i143 = i49;
                                                i56 = i52;
                                                i57 = i108;
                                                i58 = i143;
                                                i59 = i140;
                                                i60 = i54;
                                                arrayDeque = arrayDeque3;
                                                vertical5 = vertical4;
                                                i61 = max;
                                                i62 = i47;
                                                measuredPage = measuredPage3;
                                                arrayList = null;
                                            }
                                            MutableIntList mutableIntList2 = a4;
                                            int[] iArr2 = mutableIntList2.a;
                                            i63 = mutableIntList2.b;
                                            arrayList2 = arrayList;
                                            i64 = 0;
                                            while (i64 < i63) {
                                                int[] iArr3 = iArr2;
                                                int i144 = iArr3[i64];
                                                if (i144 < i61) {
                                                    if (arrayList2 == null) {
                                                        arrayList2 = new ArrayList();
                                                    }
                                                    i78 = i64;
                                                    ArrayList arrayList10 = arrayList2;
                                                    Orientation orientation9 = Orientation.j;
                                                    i79 = i61;
                                                    i77 = i63;
                                                    mutableIntList = mutableIntList2;
                                                    arrayList10.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i144, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2));
                                                    arrayList2 = arrayList10;
                                                } else {
                                                    i77 = i63;
                                                    i78 = i64;
                                                    i79 = i61;
                                                    mutableIntList = mutableIntList2;
                                                }
                                                i64 = i78 + 1;
                                                mutableIntList2 = mutableIntList;
                                                iArr2 = iArr3;
                                                i61 = i79;
                                                i63 = i77;
                                            }
                                            MutableIntList mutableIntList3 = mutableIntList2;
                                            ?? r14 = EmptyList.j;
                                            if (arrayList2 != null) {
                                                arrayList3 = r14;
                                            } else {
                                                arrayList3 = arrayList2;
                                            }
                                            size = arrayList3.size();
                                            ArrayList arrayList11 = r14;
                                            int i145 = i51;
                                            i65 = 0;
                                            while (i65 < size) {
                                                i145 = Math.max(i145, ((MeasuredPage) arrayList3.get(i65)).h);
                                                i65++;
                                                arrayList3 = arrayList3;
                                            }
                                            arrayList4 = arrayList3;
                                            int i146 = ((MeasuredPage) arrayDeque.last()).a;
                                            Orientation orientation10 = Orientation.j;
                                            min = Math.min(i57, (i45 - i146) - 1) + i146;
                                            i66 = i146 + 1;
                                            if (i66 > min) {
                                                ArrayList arrayList12 = null;
                                                while (true) {
                                                    if (arrayList12 == null) {
                                                        arrayList12 = new ArrayList();
                                                    }
                                                    Orientation orientation11 = Orientation.j;
                                                    arrayList8 = arrayList12;
                                                    i67 = i57;
                                                    i68 = i145;
                                                    i69 = min;
                                                    int i147 = i66;
                                                    arrayList8.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i147, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2));
                                                    if (i147 == i69) {
                                                        break;
                                                    }
                                                    i66 = i147 + 1;
                                                    arrayList12 = arrayList8;
                                                    min = i69;
                                                    i145 = i68;
                                                    i57 = i67;
                                                }
                                                list = arrayList8;
                                            } else {
                                                i67 = i57;
                                                i68 = i145;
                                                i69 = min;
                                                list = null;
                                            }
                                            int[] iArr4 = mutableIntList3.a;
                                            i70 = mutableIntList3.b;
                                            i71 = 0;
                                            while (i71 < i70) {
                                                int i148 = iArr4[i71];
                                                int i149 = i71;
                                                if (i69 + 1 <= i148 && i148 < i45) {
                                                    if (list == null) {
                                                        list = new ArrayList();
                                                    }
                                                    Orientation orientation12 = Orientation.j;
                                                    List list2 = list;
                                                    iArr = iArr4;
                                                    MeasuredPage a8 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i148, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2);
                                                    vertical6 = vertical5;
                                                    arrayList7 = arrayList11;
                                                    orientation3 = orientation6;
                                                    j3 = j2;
                                                    list2.add(a8);
                                                    list = list2;
                                                } else {
                                                    vertical6 = vertical5;
                                                    iArr = iArr4;
                                                    arrayList7 = arrayList11;
                                                    orientation3 = orientation6;
                                                    j3 = j2;
                                                }
                                                j2 = j3;
                                                iArr4 = iArr;
                                                arrayList11 = arrayList7;
                                                orientation6 = orientation3;
                                                vertical5 = vertical6;
                                                i71 = i149 + 1;
                                            }
                                            ArrayList arrayList13 = arrayList11;
                                            Orientation orientation13 = orientation6;
                                            long j14 = j2;
                                            if (list == null) {
                                                list = arrayList13;
                                            }
                                            size2 = list.size();
                                            int i150 = i68;
                                            for (i72 = 0; i72 < size2; i72++) {
                                                i150 = Math.max(i150, ((MeasuredPage) list.get(i72)).h);
                                            }
                                            if (!Intrinsics.a(measuredPage, arrayDeque.first()) && arrayList4.isEmpty() && list.isEmpty()) {
                                                z31 = true;
                                            } else {
                                                z31 = false;
                                            }
                                            Orientation orientation14 = Orientation.j;
                                            i73 = i58;
                                            g2 = ConstraintsKt.g(i73, j10);
                                            int f8 = ConstraintsKt.f(i150, j10);
                                            i74 = i62;
                                            if (i73 >= Math.min(g2, i74)) {
                                                z32 = true;
                                            } else {
                                                z32 = false;
                                            }
                                            if (!z32 && i59 != 0) {
                                                StringBuilder sb = new StringBuilder("non-zero pagesScrollOffset=");
                                                i75 = i59;
                                                sb.append(i75);
                                                InlineClassHelperKt.c(sb.toString());
                                            } else {
                                                i75 = i59;
                                            }
                                            ArrayList arrayList14 = new ArrayList(list.size() + arrayList4.size() + arrayDeque.b());
                                            if (!z32) {
                                                if (!arrayList4.isEmpty() || !list.isEmpty()) {
                                                    InlineClassHelperKt.a("No extra pages");
                                                }
                                                int b5 = arrayDeque.b();
                                                int[] iArr5 = new int[b5];
                                                for (int i151 = 0; i151 < b5; i151++) {
                                                    iArr5[i151] = i90;
                                                }
                                                int[] iArr6 = new int[b5];
                                                z33 = z31;
                                                Arrangement.SpacedAligned spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope5.U(i56), false, null);
                                                Orientation orientation15 = Orientation.j;
                                                subcomposeMeasureScope = subcomposeMeasureScope5;
                                                spacedAligned.c(lazyLayoutMeasureScopeImpl, g2, iArr5, LayoutDirection.j, iArr6);
                                                IntRange r = ArraysKt.r(iArr6);
                                                int i152 = r.k;
                                                int i153 = r.l;
                                                if ((i153 > 0 && i152 >= 0) || (i153 < 0 && i152 <= 0)) {
                                                    int i154 = 0;
                                                    while (true) {
                                                        int i155 = iArr6[i154];
                                                        int i156 = i153;
                                                        arrayDeque2 = arrayDeque;
                                                        int[] iArr7 = iArr6;
                                                        MeasuredPage measuredPage4 = (MeasuredPage) arrayDeque2.get(i154);
                                                        measuredPage4.b(i155, g2, f8);
                                                        arrayList14.add(measuredPage4);
                                                        if (i154 == i152) {
                                                            break;
                                                        }
                                                        i154 += i156;
                                                        arrayDeque = arrayDeque2;
                                                        i153 = i156;
                                                        iArr6 = iArr7;
                                                    }
                                                } else {
                                                    arrayDeque2 = arrayDeque;
                                                }
                                            } else {
                                                z33 = z31;
                                                subcomposeMeasureScope = subcomposeMeasureScope5;
                                                arrayDeque2 = arrayDeque;
                                                int size3 = arrayList4.size();
                                                int i157 = i75;
                                                int i158 = 0;
                                                while (i158 < size3) {
                                                    int i159 = i75;
                                                    MeasuredPage measuredPage5 = (MeasuredPage) arrayList4.get(i158);
                                                    i157 -= i87;
                                                    measuredPage5.b(i157, g2, f8);
                                                    arrayList14.add(measuredPage5);
                                                    i158++;
                                                    i75 = i159;
                                                }
                                                int i160 = i75;
                                                int b6 = arrayDeque2.b();
                                                int i161 = i160;
                                                for (int i162 = 0; i162 < b6; i162++) {
                                                    MeasuredPage measuredPage6 = (MeasuredPage) arrayDeque2.get(i162);
                                                    measuredPage6.b(i161, g2, f8);
                                                    arrayList14.add(measuredPage6);
                                                    i161 += i87;
                                                }
                                                int size4 = list.size();
                                                for (int i163 = 0; i163 < size4; i163++) {
                                                    MeasuredPage measuredPage7 = (MeasuredPage) list.get(i163);
                                                    measuredPage7.b(i161, g2, f8);
                                                    arrayList14.add(measuredPage7);
                                                    i161 += i87;
                                                }
                                            }
                                            if (!z33) {
                                                arrayList5 = arrayList14;
                                            } else {
                                                arrayList5 = new ArrayList(arrayList14.size());
                                                int size5 = arrayList14.size();
                                                int i164 = 0;
                                                while (i164 < size5) {
                                                    Object obj3 = arrayList14.get(i164);
                                                    ArrayDeque arrayDeque4 = arrayDeque2;
                                                    MeasuredPage measuredPage8 = (MeasuredPage) obj3;
                                                    int i165 = g2;
                                                    int i166 = size5;
                                                    if (measuredPage8.a >= ((MeasuredPage) arrayDeque4.first()).a && measuredPage8.a <= ((MeasuredPage) arrayDeque4.last()).a) {
                                                        arrayList5.add(obj3);
                                                    }
                                                    i164++;
                                                    g2 = i165;
                                                    size5 = i166;
                                                    arrayDeque2 = arrayDeque4;
                                                }
                                            }
                                            ArrayDeque arrayDeque5 = arrayDeque2;
                                            int i167 = g2;
                                            if (!arrayList4.isEmpty()) {
                                                arrayList6 = arrayList13;
                                            } else {
                                                arrayList6 = new ArrayList(arrayList14.size());
                                                int size6 = arrayList14.size();
                                                int i168 = 0;
                                                while (i168 < size6) {
                                                    Object obj4 = arrayList14.get(i168);
                                                    int i169 = size6;
                                                    if (((MeasuredPage) obj4).a < ((MeasuredPage) arrayDeque5.first()).a) {
                                                        arrayList6.add(obj4);
                                                    }
                                                    i168++;
                                                    size6 = i169;
                                                }
                                            }
                                            ArrayList arrayList15 = arrayList6;
                                            if (!list.isEmpty()) {
                                                ArrayList arrayList16 = new ArrayList(arrayList14.size());
                                                int size7 = arrayList14.size();
                                                int i170 = 0;
                                                ArrayList arrayList17 = arrayList6;
                                                while (i170 < size7) {
                                                    Object obj5 = arrayList14.get(i170);
                                                    ArrayList arrayList18 = arrayList17;
                                                    if (((MeasuredPage) obj5).a > ((MeasuredPage) arrayDeque5.last()).a) {
                                                        arrayList16.add(obj5);
                                                    }
                                                    i170++;
                                                    arrayList17 = arrayList18;
                                                }
                                                arrayList13 = arrayList16;
                                                arrayList15 = arrayList17;
                                            }
                                            ArrayList arrayList19 = arrayList15;
                                            if (!arrayList5.isEmpty()) {
                                                obj2 = null;
                                            } else {
                                                obj2 = arrayList5.get(0);
                                                int i171 = ((MeasuredPage) obj2).j;
                                                snapPosition3.getClass();
                                                float f9 = -Math.abs(i171 - 0.0f);
                                                int size8 = arrayList5.size() - 1;
                                                if (1 <= size8) {
                                                    int i172 = 1;
                                                    while (true) {
                                                        Object obj6 = arrayList5.get(i172);
                                                        float f10 = -Math.abs(((MeasuredPage) obj6).j - 0.0f);
                                                        if (Float.compare(f9, f10) < 0) {
                                                            f9 = f10;
                                                            obj2 = obj6;
                                                        }
                                                        if (i172 == size8) {
                                                            break;
                                                        }
                                                        i172++;
                                                    }
                                                }
                                            }
                                            measuredPage2 = (MeasuredPage) obj2;
                                            snapPosition3.getClass();
                                            if (measuredPage2 == null) {
                                                i76 = measuredPage2.j;
                                            } else {
                                                i76 = 0;
                                            }
                                            if (i60 != 0) {
                                                z34 = false;
                                            } else {
                                                z34 = false;
                                                f6 = RangesKt.c((0 - i76) / i60, -0.5f, 0.5f);
                                            }
                                            ec ecVar = new ec(4, mutableState3, arrayList14);
                                            int g4 = ConstraintsKt.g(i167 + i111, j);
                                            int f11 = ConstraintsKt.f(f8 + i112, j);
                                            map = EmptyMap.j;
                                            MeasureResult B = subcomposeMeasureScope.B(g4, f11, map, ecVar);
                                            if (i53 < i45 && i73 <= i74) {
                                                z35 = z34;
                                            } else {
                                                z35 = true;
                                            }
                                            subcomposeMeasureScope2 = subcomposeMeasureScope;
                                            pagerState4 = pagerState3;
                                            pagerMeasureResult = new PagerMeasureResult(arrayList5, i90, i56, i83, orientation13, i94, i42, i67, measuredPage, measuredPage2, f6, i141, z35, snapPosition3, B, z36, arrayList19, arrayList13, coroutineScope2, lazyLayoutMeasureScopeImpl, j14);
                                            lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                        }
                                    } else {
                                        i51 = i43;
                                        i52 = i107;
                                        vertical4 = vertical3;
                                    }
                                    int b7 = arrayDeque3.b();
                                    MeasuredPage measuredPage9 = measuredPage3;
                                    int i173 = 0;
                                    while (i173 < b7 && i50 != 0) {
                                        i53 = i48;
                                        i54 = i113;
                                        if (i54 > i50) {
                                            break;
                                        }
                                        int i174 = b7;
                                        if (i173 == arrayDeque3.b() - 1) {
                                            break;
                                        }
                                        i50 -= i54;
                                        i173++;
                                        measuredPage9 = (MeasuredPage) arrayDeque3.get(i173);
                                        i113 = i54;
                                        i48 = i53;
                                        b7 = i174;
                                    }
                                    i53 = i48;
                                    i54 = i113;
                                    measuredPage3 = measuredPage9;
                                    int i1412 = i50;
                                    Orientation orientation72 = Orientation.j;
                                    max = Math.max(0, i46 - i108);
                                    i55 = i46 - 1;
                                    if (max > i55) {
                                    }
                                    MutableIntList mutableIntList22 = a4;
                                    int[] iArr22 = mutableIntList22.a;
                                    i63 = mutableIntList22.b;
                                    arrayList2 = arrayList;
                                    i64 = 0;
                                    while (i64 < i63) {
                                    }
                                    MutableIntList mutableIntList32 = mutableIntList22;
                                    ?? r142 = EmptyList.j;
                                    if (arrayList2 != null) {
                                    }
                                    size = arrayList3.size();
                                    ArrayList arrayList112 = r142;
                                    int i1452 = i51;
                                    i65 = 0;
                                    while (i65 < size) {
                                    }
                                    arrayList4 = arrayList3;
                                    int i1462 = ((MeasuredPage) arrayDeque.last()).a;
                                    Orientation orientation102 = Orientation.j;
                                    min = Math.min(i57, (i45 - i1462) - 1) + i1462;
                                    i66 = i1462 + 1;
                                    if (i66 > min) {
                                    }
                                    int[] iArr42 = mutableIntList32.a;
                                    i70 = mutableIntList32.b;
                                    i71 = 0;
                                    while (i71 < i70) {
                                    }
                                    ArrayList arrayList132 = arrayList112;
                                    Orientation orientation132 = orientation6;
                                    long j142 = j2;
                                    if (list == null) {
                                    }
                                    size2 = list.size();
                                    int i1502 = i68;
                                    while (i72 < size2) {
                                    }
                                    if (!Intrinsics.a(measuredPage, arrayDeque.first())) {
                                    }
                                    z31 = false;
                                    Orientation orientation142 = Orientation.j;
                                    i73 = i58;
                                    g2 = ConstraintsKt.g(i73, j10);
                                    int f82 = ConstraintsKt.f(i1502, j10);
                                    i74 = i62;
                                    if (i73 >= Math.min(g2, i74)) {
                                    }
                                    if (!z32) {
                                    }
                                    i75 = i59;
                                    ArrayList arrayList142 = new ArrayList(list.size() + arrayList4.size() + arrayDeque.b());
                                    if (!z32) {
                                    }
                                    if (!z33) {
                                    }
                                    ArrayDeque arrayDeque52 = arrayDeque2;
                                    int i1672 = g2;
                                    if (!arrayList4.isEmpty()) {
                                    }
                                    ArrayList arrayList152 = arrayList6;
                                    if (!list.isEmpty()) {
                                    }
                                    ArrayList arrayList192 = arrayList152;
                                    if (!arrayList5.isEmpty()) {
                                    }
                                    measuredPage2 = (MeasuredPage) obj2;
                                    snapPosition3.getClass();
                                    if (measuredPage2 == null) {
                                    }
                                    if (i60 != 0) {
                                    }
                                    ec ecVar2 = new ec(4, mutableState3, arrayList142);
                                    int g42 = ConstraintsKt.g(i1672 + i111, j);
                                    int f112 = ConstraintsKt.f(f82 + i112, j);
                                    map = EmptyMap.j;
                                    MeasureResult B2 = subcomposeMeasureScope.B(g42, f112, map, ecVar2);
                                    if (i53 < i45) {
                                    }
                                    z35 = true;
                                    subcomposeMeasureScope2 = subcomposeMeasureScope;
                                    pagerState4 = pagerState3;
                                    pagerMeasureResult = new PagerMeasureResult(arrayList5, i90, i56, i83, orientation132, i94, i42, i67, measuredPage, measuredPage2, f6, i1412, z35, snapPosition3, B2, z36, arrayList192, arrayList132, coroutineScope2, lazyLayoutMeasureScopeImpl, j142);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                }
                                PagerState pagerState6 = pagerState4;
                                pagerState6.h(pagerMeasureResult, subcomposeMeasureScope2.f0(), false);
                                PagerCacheWindowLogic pagerCacheWindowLogic = pagerState6.t;
                                List list3 = pagerMeasureResult.a;
                                Trace.beginSection("compose:pager:cache_window:keepAroundItems");
                                try {
                                    if (pagerCacheWindowLogic.b() && !list3.isEmpty()) {
                                        int i175 = ((MeasuredPage) ((PageInfo) CollectionsKt.s(list3))).a;
                                        int i176 = ((MeasuredPage) ((PageInfo) CollectionsKt.z(list3))).a;
                                        for (int i177 = pagerCacheWindowLogic.h; i177 < i175; i177++) {
                                            lazyLayoutMeasureScopeImpl2.a(i177);
                                        }
                                        int i178 = i176 + 1;
                                        int i179 = pagerCacheWindowLogic.i;
                                        if (i178 <= i179) {
                                            while (true) {
                                                lazyLayoutMeasureScopeImpl2.a(i178);
                                                if (i178 == i179) {
                                                    break;
                                                }
                                                i178++;
                                            }
                                        }
                                    }
                                    return pagerMeasureResult;
                                } finally {
                                    Trace.endSection();
                                }
                            } catch (Throwable th) {
                                Snapshot.Companion.e(a, b, function1);
                                throw th;
                            }
                        }
                    };
                    kProperty0 = kProperty02;
                    gapComposer2.g0(K);
                }
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) K;
                Orientation orientation3 = Orientation.j;
                if (((i28 ^ 6) <= i5 && gapComposer2.f(pagerState2)) || (i27 & 6) == i5) {
                    z17 = z16;
                } else {
                    z17 = false;
                }
                final boolean z31 = false;
                g = z17 | gapComposer2.g(false);
                K2 = gapComposer2.K();
                if (!g || K2 == obj) {
                    K2 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.pager.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final int a() {
                            long i36;
                            PagerState pagerState3 = PagerState.this;
                            if (((PagerMeasureResult) pagerState3.k()).e == Orientation.j) {
                                i36 = ((PagerMeasureResult) pagerState3.k()).i() & 4294967295L;
                            } else {
                                i36 = ((PagerMeasureResult) pagerState3.k()).i() >> 32;
                            }
                            return (int) i36;
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final float b() {
                            return (float) PagerScrollPositionKt.a(PagerState.this);
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final int c() {
                            PagerState pagerState3 = PagerState.this;
                            return (-((PagerMeasureResult) pagerState3.k()).f) + ((PagerMeasureResult) pagerState3.k()).d;
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final float d() {
                            PagerState pagerState3 = PagerState.this;
                            return (float) PagerStateKt.a(pagerState3.k(), pagerState3.l());
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final Object e(int i36, Continuation continuation) {
                            PagerState pagerState3 = PagerState.this;
                            pagerState3.getClass();
                            Object c = pagerState3.c(MutatePriority.j, new PagerState$scrollToPage$2(pagerState3, i36, null), (ContinuationImpl) continuation);
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                            Unit unit = Unit.a;
                            if (c != coroutineSingletons) {
                                c = unit;
                            }
                            if (c == coroutineSingletons) {
                                return c;
                            }
                            return unit;
                        }

                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                        public final CollectionInfo f() {
                            boolean z32 = z31;
                            PagerState pagerState3 = PagerState.this;
                            if (z32) {
                                return new CollectionInfo(pagerState3.l(), 1);
                            }
                            return new CollectionInfo(1, pagerState3.l());
                        }
                    };
                    gapComposer2.g0(K2);
                }
                LazyLayoutSemanticState lazyLayoutSemanticState = (LazyLayoutSemanticState) K2;
                if (i6 != 32) {
                    z18 = z16;
                } else {
                    z18 = false;
                }
                if ((i24 & 458752) != 131072) {
                    z19 = z16;
                } else {
                    z19 = false;
                }
                z20 = z18 | z19;
                K3 = gapComposer2.K();
                if (!z20 || K3 == obj) {
                    K3 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState2);
                    gapComposer2.g0(K3);
                }
                PagerWrapperFlingBehavior pagerWrapperFlingBehavior = (PagerWrapperFlingBehavior) K3;
                BringIntoViewSpec bringIntoViewSpec = (BringIntoViewSpec) gapComposer2.j(BringIntoViewSpec_androidKt.a);
                LayoutDirection layoutDirection = (LayoutDirection) gapComposer2.j(CompositionLocalsKt.n);
                if (i6 != 32) {
                    z21 = z16;
                } else {
                    z21 = false;
                }
                f3 = z21 | gapComposer2.f(bringIntoViewSpec) | gapComposer2.d(layoutDirection.ordinal());
                K4 = gapComposer2.K();
                if (!f3 || K4 == obj) {
                    K4 = new PagerBringIntoViewSpec(pagerState2, bringIntoViewSpec, layoutDirection);
                    gapComposer2.g0(K4);
                }
                PagerBringIntoViewSpec pagerBringIntoViewSpec = (PagerBringIntoViewSpec) K4;
                Modifier.Companion companion = Modifier.Companion.b;
                if (!z) {
                    gapComposer2.W(-853734429);
                    int i36 = i28 | ((i24 >> 21) & 112);
                    if ((((i36 & 14) ^ 6) > i5 && gapComposer2.f(pagerState2)) || (i36 & 6) == i5) {
                        z23 = z16;
                    } else {
                        z23 = false;
                    }
                    if ((((i36 & 112) ^ 48) <= 32 || !gapComposer2.d(0)) && (i36 & 48) != 32) {
                        z16 = false;
                    }
                    boolean z32 = z23 | z16;
                    Object K9 = gapComposer2.K();
                    if (z32 || K9 == obj) {
                        K9 = new PagerBeyondBoundsState(pagerState2);
                        gapComposer2.g0(K9);
                    }
                    modifier3 = LazyLayoutBeyondBoundsModifierLocalKt.a((PagerBeyondBoundsState) K9, pagerState2.u, orientation);
                    z22 = false;
                    gapComposer2.p(false);
                } else {
                    z22 = false;
                    gapComposer2.W(-853304645);
                    gapComposer2.p(false);
                    modifier3 = companion;
                }
                modifier2 = modifier;
                Modifier a = LazyLayoutSemanticsKt.a(modifier2.l(pagerState2.x).l(pagerState2.v), kProperty0, lazyLayoutSemanticState, orientation, z);
                if (!z) {
                    l = a.l(SemanticsModifierKt.a(companion, z22, new s7(3, pagerState2, coroutineScope, z22)));
                } else {
                    l = a.l(companion);
                }
                Modifier l2 = ScrollableAreaKt.a(l.l(modifier3), pagerState2, orientation, overscrollEffect, z, pagerWrapperFlingBehavior, pagerState2.p, pagerBringIntoViewSpec).l(SuspendingPointerInputFilterKt.a(companion, pagerState2, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1

                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                    @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {289}, m = "invokeSuspend", v = 1)
                    /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        public int n;
                        public final /* synthetic */ PointerInputScope o;
                        public final /* synthetic */ PagerState p;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                        @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {291, 295}, m = "invokeSuspend", v = 1)
                        /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes.dex */
                        public final class C00021 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                            public PointerInputChange l;
                            public PointerInputChange m;
                            public int n;
                            public /* synthetic */ Object o;
                            public final /* synthetic */ PagerState p;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00021(PagerState pagerState, Continuation continuation) {
                                super(2, continuation);
                                this.p = pagerState;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj, Object obj2) {
                                return ((C00021) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation s(Object obj, Continuation continuation) {
                                C00021 c00021 = new C00021(this.p, continuation);
                                c00021.o = obj;
                                return c00021;
                            }

                            /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
                            
                                if (r13 == r0) goto L17;
                             */
                            /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
                            /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
                            /* JADX WARN: Removed duplicated region for block: B:21:0x0084 A[SYNTHETIC] */
                            /* JADX WARN: Removed duplicated region for block: B:8:0x0072  */
                            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0063 -> B:6:0x0067). Please report as a decompilation issue!!! */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                            */
                            public final Object v(Object obj) {
                                AwaitPointerEventScope awaitPointerEventScope;
                                PointerInputChange pointerInputChange;
                                AwaitPointerEventScope awaitPointerEventScope2;
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                int i = this.n;
                                PointerInputChange pointerInputChange2 = null;
                                PagerState pagerState = this.p;
                                if (i != 0) {
                                    if (i != 1) {
                                        if (i == 2) {
                                            PointerInputChange pointerInputChange3 = this.m;
                                            PointerInputChange pointerInputChange4 = this.l;
                                            awaitPointerEventScope2 = (AwaitPointerEventScope) this.o;
                                            ResultKt.b(obj);
                                            PointerEvent pointerEvent = (PointerEvent) obj;
                                            List list = pointerEvent.a;
                                            int size = list.size();
                                            int i2 = 0;
                                            while (true) {
                                                if (i2 < size) {
                                                    if (!PointerEventKt.c((PointerInputChange) list.get(i2))) {
                                                        pointerInputChange = pointerInputChange4;
                                                        pointerInputChange2 = pointerInputChange3;
                                                        break;
                                                    }
                                                    i2++;
                                                } else {
                                                    PointerInputChange pointerInputChange5 = pointerInputChange4;
                                                    pointerInputChange2 = (PointerInputChange) pointerEvent.a.get(0);
                                                    pointerInputChange = pointerInputChange5;
                                                    break;
                                                }
                                            }
                                            if (pointerInputChange2 == null) {
                                                PointerEventPass pointerEventPass = PointerEventPass.j;
                                                this.o = awaitPointerEventScope2;
                                                this.l = pointerInputChange;
                                                this.m = pointerInputChange2;
                                                this.n = 2;
                                                Object q = awaitPointerEventScope2.q(pointerEventPass, this);
                                                if (q != coroutineSingletons) {
                                                    PointerInputChange pointerInputChange6 = pointerInputChange2;
                                                    pointerInputChange4 = pointerInputChange;
                                                    obj = q;
                                                    pointerInputChange3 = pointerInputChange6;
                                                    PointerEvent pointerEvent2 = (PointerEvent) obj;
                                                    List list2 = pointerEvent2.a;
                                                    int size2 = list2.size();
                                                    int i22 = 0;
                                                    while (true) {
                                                        if (i22 < size2) {
                                                        }
                                                        i22++;
                                                    }
                                                    if (pointerInputChange2 == null) {
                                                        ((SnapshotMutableStateImpl) pagerState.c).setValue(new Offset(Offset.e(pointerInputChange2.c, pointerInputChange.c)));
                                                        return Unit.a;
                                                    }
                                                }
                                                return coroutineSingletons;
                                            }
                                        } else {
                                            u2.l("call to 'resume' before 'invoke' with coroutine");
                                            return null;
                                        }
                                    } else {
                                        awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                                        ResultKt.b(obj);
                                    }
                                } else {
                                    ResultKt.b(obj);
                                    awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                                    PointerEventPass pointerEventPass2 = PointerEventPass.j;
                                    this.o = awaitPointerEventScope;
                                    this.n = 1;
                                    obj = TapGestureDetectorKt.a(awaitPointerEventScope, false, pointerEventPass2, this);
                                }
                                pointerInputChange = (PointerInputChange) obj;
                                ((SnapshotMutableStateImpl) pagerState.c).setValue(new Offset(0L));
                                awaitPointerEventScope2 = awaitPointerEventScope;
                                if (pointerInputChange2 == null) {
                                }
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
                            super(2, continuation);
                            this.o = pointerInputScope;
                            this.p = pagerState;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation s(Object obj, Continuation continuation) {
                            return new AnonymousClass1(this.o, this.p, continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object v(Object obj) {
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                            int i = this.n;
                            if (i != 0) {
                                if (i == 1) {
                                    ResultKt.b(obj);
                                } else {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                ResultKt.b(obj);
                                C00021 c00021 = new C00021(this.p, null);
                                this.n = 1;
                                if (ForEachGestureKt.b(this.o, c00021, this) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            }
                            return Unit.a;
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object c = CoroutineScopeKt.c(new AnonymousClass1(pointerInputScope, PagerState.this, null), continuation);
                        if (c == CoroutineSingletons.j) {
                            return c;
                        }
                        return Unit.a;
                    }
                }));
                nestedScrollConnection2 = nestedScrollConnection;
                gapComposer = gapComposer2;
                LazyLayoutKt.a(kProperty0, NestedScrollModifierKt.a(l2, nestedScrollConnection2, null), pagerState2.s, lazyLayoutMeasurePolicy, gapComposer, 0);
            }
            z9 = true;
            boolean z262 = z25 | z9;
            if (((i35 & 234881024) ^ 100663296) <= 67108864) {
            }
            z10 = false;
            boolean z272 = z10 | z262;
            if (((i35 & 1879048192) ^ 805306368) <= 536870912) {
            }
            z11 = false;
            boolean z282 = z272 | z11;
            if (((i35 & 3670016) ^ 1572864) <= 1048576) {
            }
            z12 = false;
            boolean z292 = z282 | z12;
            if (((i35 & 29360128) ^ 12582912) <= 8388608) {
            }
            z13 = false;
            boolean z302 = z292 | z13;
            if (((i29 & 14) ^ 6) <= 4) {
            }
            z14 = false;
            boolean f52 = z302 | z14 | gapComposer3.f(function02);
            if (((i35 & 458752) ^ 196608) <= 131072) {
            }
            z15 = false;
            f2 = f52 | z15 | gapComposer3.f(coroutineScope);
            K = gapComposer3.K();
            if (f2) {
            }
            i5 = 4;
            gapComposer2 = gapComposer3;
            orientation = orientation2;
            i6 = i26;
            z16 = true;
            pagerState2 = pagerState;
            K = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.pager.PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1
                {
                    Orientation orientation32 = Orientation.j;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:114:0x0393  */
                /* JADX WARN: Removed duplicated region for block: B:124:0x0403  */
                /* JADX WARN: Removed duplicated region for block: B:136:0x0443  */
                /* JADX WARN: Removed duplicated region for block: B:139:0x0452 A[LOOP:9: B:138:0x0450->B:139:0x0452, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:143:0x0480  */
                /* JADX WARN: Removed duplicated region for block: B:153:0x04bb  */
                /* JADX WARN: Removed duplicated region for block: B:166:0x0506  */
                /* JADX WARN: Removed duplicated region for block: B:169:0x0511 A[LOOP:12: B:168:0x050f->B:169:0x0511, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:180:0x0550  */
                /* JADX WARN: Removed duplicated region for block: B:186:0x0584  */
                /* JADX WARN: Removed duplicated region for block: B:203:0x0654  */
                /* JADX WARN: Removed duplicated region for block: B:207:0x06a3  */
                /* JADX WARN: Removed duplicated region for block: B:213:0x0716  */
                /* JADX WARN: Removed duplicated region for block: B:216:0x075e  */
                /* JADX WARN: Removed duplicated region for block: B:218:0x0764  */
                /* JADX WARN: Removed duplicated region for block: B:225:0x0767  */
                /* JADX WARN: Removed duplicated region for block: B:226:0x0761  */
                /* JADX WARN: Removed duplicated region for block: B:227:0x0718  */
                /* JADX WARN: Removed duplicated region for block: B:236:0x06de  */
                /* JADX WARN: Removed duplicated region for block: B:246:0x06a6  */
                /* JADX WARN: Removed duplicated region for block: B:255:0x065a  */
                /* JADX WARN: Removed duplicated region for block: B:271:0x05f7  */
                /* JADX WARN: Removed duplicated region for block: B:284:0x0553  */
                /* JADX WARN: Removed duplicated region for block: B:286:0x04ae  */
                /* JADX WARN: Removed duplicated region for block: B:287:0x0445  */
                /* JADX WARN: Removed duplicated region for block: B:288:0x03e4  */
                /* JADX WARN: Type inference failed for: r14v20, types: [kotlin.collections.EmptyList] */
                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                    int i362;
                    Function1 function1;
                    int i37;
                    PagerState pagerState3;
                    int i38;
                    MutableState mutableState;
                    int i39;
                    int i40;
                    Alignment.Vertical vertical2;
                    int i41;
                    int i42;
                    int i43;
                    int i44;
                    int i45;
                    long j2;
                    int i46;
                    int i47;
                    int i48;
                    Alignment.Vertical vertical3;
                    int i49;
                    int i50;
                    int i51;
                    int i52;
                    Alignment.Vertical vertical4;
                    int i53;
                    int i54;
                    int max;
                    int i55;
                    int i56;
                    int i57;
                    int i58;
                    int i59;
                    int i60;
                    ArrayDeque arrayDeque;
                    Alignment.Vertical vertical5;
                    int i61;
                    int i62;
                    MeasuredPage measuredPage;
                    ArrayList arrayList;
                    int i63;
                    ArrayList arrayList2;
                    int i64;
                    ArrayList arrayList3;
                    int size;
                    int i65;
                    ArrayList arrayList4;
                    int min;
                    int i66;
                    int i67;
                    int i68;
                    int i69;
                    List list;
                    int i70;
                    int i71;
                    int size2;
                    int i72;
                    boolean z312;
                    int i73;
                    int g2;
                    int i74;
                    boolean z322;
                    int i75;
                    boolean z33;
                    SubcomposeMeasureScope subcomposeMeasureScope;
                    ArrayDeque arrayDeque2;
                    ArrayList arrayList5;
                    ArrayList arrayList6;
                    Object obj2;
                    MeasuredPage measuredPage2;
                    int i76;
                    boolean z34;
                    Map map;
                    boolean z35;
                    PagerMeasureResult pagerMeasureResult;
                    SubcomposeMeasureScope subcomposeMeasureScope2;
                    PagerState pagerState4;
                    LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                    Alignment.Vertical vertical6;
                    int[] iArr;
                    ArrayList arrayList7;
                    Orientation orientation32;
                    long j3;
                    ArrayList arrayList8;
                    int i77;
                    int i78;
                    int i79;
                    MutableIntList mutableIntList;
                    int i80;
                    int i81;
                    int max2;
                    Map map2;
                    PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                    PagerState pagerState5 = pagerState2;
                    pagerState5.A.getValue();
                    Orientation orientation4 = Orientation.k;
                    Orientation orientation5 = Orientation.j;
                    CheckScrollableContainerConstraintsKt.a(j, orientation4);
                    SubcomposeMeasureScope subcomposeMeasureScope3 = lazyLayoutMeasureScopeImpl.k;
                    LayoutDirection layoutDirection2 = subcomposeMeasureScope3.getLayoutDirection();
                    PaddingValues paddingValues2 = paddingValues;
                    int y0 = subcomposeMeasureScope3.y0(PaddingKt.b(paddingValues2, layoutDirection2));
                    int y02 = subcomposeMeasureScope3.y0(PaddingKt.a(paddingValues2, subcomposeMeasureScope3.getLayoutDirection()));
                    int y03 = subcomposeMeasureScope3.y0(paddingValues2.d());
                    int y04 = subcomposeMeasureScope3.y0(paddingValues2.a()) + y03;
                    int i82 = y02 + y0;
                    int i83 = i82 - y0;
                    long i84 = ConstraintsKt.i(-i82, -y04, j);
                    pagerState5.n = lazyLayoutMeasureScopeImpl;
                    int y05 = subcomposeMeasureScope3.y0(f);
                    int h = Constraints.h(j) - i82;
                    int i85 = y04;
                    int i86 = i82;
                    long j4 = (y0 << 32) | (y03 & 4294967295L);
                    ((PageSize.Fill) pageSize).getClass();
                    if (h < 0) {
                        i362 = 0;
                    } else {
                        i362 = h;
                    }
                    ConstraintsKt.b(0, i362, 0, Constraints.g(i84), 5);
                    PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) kProperty02.a();
                    SnapPosition snapPosition2 = snapPosition;
                    Snapshot a2 = Snapshot.Companion.a();
                    Orientation orientation6 = orientation4;
                    if (a2 != null) {
                        function1 = a2.e();
                    } else {
                        function1 = null;
                    }
                    Snapshot b = Snapshot.Companion.b(a2);
                    try {
                        PagerScrollPosition pagerScrollPosition = pagerState5.d;
                        long j5 = i84;
                        int a22 = pagerScrollPosition.a();
                        int a3 = LazyLayoutItemProviderKt.a(a22, pagerLazyLayoutItemProvider, pagerScrollPosition.e);
                        if (a22 != a3) {
                            i37 = y05;
                            ((SnapshotMutableIntStateImpl) pagerScrollPosition.b).k(a3);
                            pagerScrollPosition.f.b(a22);
                        } else {
                            i37 = y05;
                        }
                        pagerScrollPosition.a();
                        float b2 = pagerScrollPosition.b();
                        pagerState5.l();
                        snapPosition2.getClass();
                        int i87 = i362 + i37;
                        float f6 = 0.0f;
                        int b3 = MathKt.b(0.0f - (b2 * i87));
                        Snapshot.Companion.e(a2, b, function1);
                        MutableIntList a4 = LazyLayoutBeyondBoundsStateKt.a(pagerLazyLayoutItemProvider, pagerState5.y, pagerState5.u);
                        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
                        MutableIntObjectMap mutableIntObjectMap2 = new MutableIntObjectMap();
                        int intValue = ((Number) function02.a()).intValue();
                        MutableState mutableState2 = pagerState5.z;
                        if (y0 < 0) {
                            InlineClassHelperKt.a("negative beforeContentPadding");
                        }
                        if (i83 < 0) {
                            InlineClassHelperKt.a("negative afterContentPadding");
                        }
                        if (i87 < 0) {
                            pagerState3 = pagerState5;
                            i38 = 0;
                        } else {
                            pagerState3 = pagerState5;
                            i38 = i87;
                        }
                        if (intValue < 0) {
                            mutableState = mutableState2;
                            i39 = intValue;
                        } else {
                            mutableState = mutableState2;
                            i39 = 0;
                        }
                        PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider;
                        int i88 = i39;
                        long b4 = ConstraintsKt.b(0, i362, 0, Constraints.g(j5), 5);
                        SnapPosition snapPosition3 = snapPosition;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        if (intValue <= 0) {
                            int j6 = Constraints.j(j5);
                            int i89 = Constraints.i(j5);
                            a7 a7Var = new a7(15);
                            int g3 = ConstraintsKt.g(j6 + i86, j);
                            int f7 = ConstraintsKt.f(i89 + i85, j);
                            map2 = EmptyMap.j;
                            pagerMeasureResult = new PagerMeasureResult(i362, i37, i83, -y0, h + i83, i88, snapPosition3, subcomposeMeasureScope3.B(g3, f7, map2, a7Var), coroutineScope2, lazyLayoutMeasureScopeImpl, b4);
                            lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                            subcomposeMeasureScope2 = subcomposeMeasureScope3;
                            pagerState4 = pagerState3;
                        } else {
                            long j7 = j4;
                            int i90 = i362;
                            SubcomposeMeasureScope subcomposeMeasureScope4 = subcomposeMeasureScope3;
                            int i91 = b3;
                            int i92 = a3;
                            while (i92 > 0 && i91 > 0) {
                                i92--;
                                i91 -= i38;
                            }
                            int i93 = i91 * (-1);
                            if (i92 >= intValue) {
                                i92 = intValue - 1;
                                i93 = 0;
                            }
                            ArrayDeque arrayDeque3 = new ArrayDeque();
                            int i94 = -y0;
                            if (i37 < 0) {
                                i40 = i37;
                            } else {
                                i40 = 0;
                            }
                            int i95 = i40 + i94;
                            int i96 = i93 + i95;
                            int i97 = 0;
                            while (true) {
                                vertical2 = vertical;
                                if (i96 >= 0 || i92 <= 0) {
                                    break;
                                }
                                i92--;
                                int i98 = h;
                                MutableIntObjectMap mutableIntObjectMap3 = mutableIntObjectMap2;
                                int i99 = i90;
                                int i100 = i37;
                                int i101 = y0;
                                long j8 = b4;
                                int i102 = i86;
                                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider3 = pagerLazyLayoutItemProvider2;
                                long j9 = j7;
                                int i103 = i85;
                                int i104 = i38;
                                MeasuredPage a5 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i92, j8, pagerLazyLayoutItemProvider3, j9, vertical2, subcomposeMeasureScope4.getLayoutDirection(), i99, mutableIntObjectMap3);
                                i90 = i99;
                                mutableIntObjectMap2 = mutableIntObjectMap3;
                                arrayDeque3.add(0, a5);
                                i97 = Math.max(i97, a5.h);
                                i96 += i104;
                                pagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 = this;
                                j7 = j9;
                                i38 = i104;
                                i85 = i103;
                                subcomposeMeasureScope4 = subcomposeMeasureScope4;
                                i86 = i102;
                                y0 = i101;
                                b4 = j8;
                                h = i98;
                                j5 = j5;
                                i37 = i100;
                                i88 = i88;
                                pagerLazyLayoutItemProvider2 = pagerLazyLayoutItemProvider3;
                                intValue = intValue;
                                mutableState = mutableState;
                            }
                            int i105 = i97;
                            Alignment.Vertical vertical7 = vertical2;
                            int i106 = h;
                            long j10 = j5;
                            int i107 = i37;
                            MutableState mutableState3 = mutableState;
                            int i108 = i88;
                            SubcomposeMeasureScope subcomposeMeasureScope5 = subcomposeMeasureScope4;
                            int i109 = y0;
                            int i110 = intValue;
                            int i111 = i86;
                            PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider4 = pagerLazyLayoutItemProvider2;
                            long j11 = b4;
                            int i112 = i85;
                            long j12 = j7;
                            int i113 = i38;
                            if (i96 < i95) {
                                i96 = i95;
                            }
                            int i114 = i96 - i95;
                            int i115 = i106 + i83;
                            if (i115 < 0) {
                                i41 = 0;
                            } else {
                                i41 = i115;
                            }
                            int i116 = -i114;
                            int i117 = i92;
                            int i118 = 0;
                            boolean z36 = false;
                            while (i118 < arrayDeque3.l) {
                                if (i116 >= i41) {
                                    arrayDeque3.c(i118);
                                    z36 = true;
                                } else {
                                    i117++;
                                    i116 += i113;
                                    i118++;
                                }
                            }
                            int i119 = i116;
                            int i120 = i110;
                            int i121 = i114;
                            int i122 = i92;
                            int i123 = i117;
                            while (true) {
                                if (i123 < i120) {
                                    if (i119 >= i41 && i119 > 0 && !arrayDeque3.isEmpty()) {
                                        i42 = i115;
                                        i47 = i106;
                                        i43 = i105;
                                        i44 = i123;
                                        int i124 = i122;
                                        i45 = i120;
                                        j2 = j11;
                                        i46 = i124;
                                        break;
                                    }
                                    int i125 = i115;
                                    int i126 = i105;
                                    long j13 = j11;
                                    int i127 = i41;
                                    int i128 = i123;
                                    int i129 = i122;
                                    int i130 = i120;
                                    MeasuredPage a6 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i128, j13, pagerLazyLayoutItemProvider4, j12, vertical7, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2);
                                    int i131 = i130 - 1;
                                    if (i128 == i131) {
                                        i81 = i90;
                                    } else {
                                        i81 = i113;
                                    }
                                    i119 += i81;
                                    if (i119 <= i95 && i128 != i131) {
                                        i121 -= i113;
                                        i129 = i128 + 1;
                                        max2 = i126;
                                        z36 = true;
                                    } else {
                                        max2 = Math.max(i126, a6.h);
                                        arrayDeque3.addLast(a6);
                                    }
                                    i115 = i125;
                                    i123 = i128 + 1;
                                    i105 = max2;
                                    i120 = i130;
                                    i122 = i129;
                                    i41 = i127;
                                    j11 = j13;
                                } else {
                                    i42 = i115;
                                    i43 = i105;
                                    i44 = i123;
                                    int i132 = i122;
                                    i45 = i120;
                                    j2 = j11;
                                    i46 = i132;
                                    i47 = i106;
                                    break;
                                }
                            }
                            if (i119 < i47) {
                                int i133 = i47 - i119;
                                int i134 = i119 + i133;
                                int i135 = i121 - i133;
                                while (true) {
                                    i80 = i109;
                                    if (i135 >= i80 || i46 <= 0) {
                                        break;
                                    }
                                    i46--;
                                    i109 = i80;
                                    int i136 = i134;
                                    MeasuredPage a7 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i46, j2, pagerLazyLayoutItemProvider4, j12, vertical7, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2);
                                    arrayDeque3.add(0, a7);
                                    i43 = Math.max(i43, a7.h);
                                    i135 += i113;
                                    vertical7 = vertical7;
                                    i44 = i44;
                                    i134 = i136;
                                }
                                int i137 = i135;
                                i109 = i80;
                                i49 = i134;
                                i48 = i44;
                                vertical3 = vertical7;
                                if (i137 < 0) {
                                    i49 += i137;
                                    i50 = 0;
                                } else {
                                    i50 = i137;
                                }
                            } else {
                                int i138 = i119;
                                i48 = i44;
                                vertical3 = vertical7;
                                int i139 = i121;
                                i49 = i138;
                                i50 = i139;
                            }
                            if (i50 < 0) {
                                InlineClassHelperKt.a("invalid currentFirstPageScrollOffset");
                            }
                            int i140 = -i50;
                            MeasuredPage measuredPage3 = (MeasuredPage) arrayDeque3.first();
                            if (i109 <= 0) {
                                i51 = i43;
                                i52 = i107;
                                vertical4 = vertical3;
                                if (i52 >= 0) {
                                    i53 = i48;
                                    i54 = i113;
                                    int i1412 = i50;
                                    Orientation orientation72 = Orientation.j;
                                    max = Math.max(0, i46 - i108);
                                    i55 = i46 - 1;
                                    if (max > i55) {
                                        ArrayList arrayList9 = null;
                                        while (true) {
                                            if (arrayList9 == null) {
                                                arrayList9 = new ArrayList();
                                            }
                                            i60 = i54;
                                            arrayList = arrayList9;
                                            Orientation orientation8 = Orientation.j;
                                            i59 = i140;
                                            vertical5 = vertical4;
                                            i62 = i47;
                                            measuredPage = measuredPage3;
                                            int i142 = i49;
                                            i56 = i52;
                                            i57 = i108;
                                            i58 = i142;
                                            arrayDeque = arrayDeque3;
                                            i61 = max;
                                            arrayList.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i55, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2));
                                            if (i55 == i61) {
                                                break;
                                            }
                                            i55--;
                                            i108 = i57;
                                            i52 = i56;
                                            i49 = i58;
                                            measuredPage3 = measuredPage;
                                            max = i61;
                                            i47 = i62;
                                            arrayDeque3 = arrayDeque;
                                            vertical4 = vertical5;
                                            i140 = i59;
                                            arrayList9 = arrayList;
                                            i54 = i60;
                                        }
                                    } else {
                                        int i143 = i49;
                                        i56 = i52;
                                        i57 = i108;
                                        i58 = i143;
                                        i59 = i140;
                                        i60 = i54;
                                        arrayDeque = arrayDeque3;
                                        vertical5 = vertical4;
                                        i61 = max;
                                        i62 = i47;
                                        measuredPage = measuredPage3;
                                        arrayList = null;
                                    }
                                    MutableIntList mutableIntList22 = a4;
                                    int[] iArr22 = mutableIntList22.a;
                                    i63 = mutableIntList22.b;
                                    arrayList2 = arrayList;
                                    i64 = 0;
                                    while (i64 < i63) {
                                        int[] iArr3 = iArr22;
                                        int i144 = iArr3[i64];
                                        if (i144 < i61) {
                                            if (arrayList2 == null) {
                                                arrayList2 = new ArrayList();
                                            }
                                            i78 = i64;
                                            ArrayList arrayList10 = arrayList2;
                                            Orientation orientation9 = Orientation.j;
                                            i79 = i61;
                                            i77 = i63;
                                            mutableIntList = mutableIntList22;
                                            arrayList10.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i144, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2));
                                            arrayList2 = arrayList10;
                                        } else {
                                            i77 = i63;
                                            i78 = i64;
                                            i79 = i61;
                                            mutableIntList = mutableIntList22;
                                        }
                                        i64 = i78 + 1;
                                        mutableIntList22 = mutableIntList;
                                        iArr22 = iArr3;
                                        i61 = i79;
                                        i63 = i77;
                                    }
                                    MutableIntList mutableIntList32 = mutableIntList22;
                                    ?? r142 = EmptyList.j;
                                    if (arrayList2 != null) {
                                        arrayList3 = r142;
                                    } else {
                                        arrayList3 = arrayList2;
                                    }
                                    size = arrayList3.size();
                                    ArrayList arrayList112 = r142;
                                    int i1452 = i51;
                                    i65 = 0;
                                    while (i65 < size) {
                                        i1452 = Math.max(i1452, ((MeasuredPage) arrayList3.get(i65)).h);
                                        i65++;
                                        arrayList3 = arrayList3;
                                    }
                                    arrayList4 = arrayList3;
                                    int i1462 = ((MeasuredPage) arrayDeque.last()).a;
                                    Orientation orientation102 = Orientation.j;
                                    min = Math.min(i57, (i45 - i1462) - 1) + i1462;
                                    i66 = i1462 + 1;
                                    if (i66 > min) {
                                        ArrayList arrayList12 = null;
                                        while (true) {
                                            if (arrayList12 == null) {
                                                arrayList12 = new ArrayList();
                                            }
                                            Orientation orientation11 = Orientation.j;
                                            arrayList8 = arrayList12;
                                            i67 = i57;
                                            i68 = i1452;
                                            i69 = min;
                                            int i147 = i66;
                                            arrayList8.add(PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i147, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2));
                                            if (i147 == i69) {
                                                break;
                                            }
                                            i66 = i147 + 1;
                                            arrayList12 = arrayList8;
                                            min = i69;
                                            i1452 = i68;
                                            i57 = i67;
                                        }
                                        list = arrayList8;
                                    } else {
                                        i67 = i57;
                                        i68 = i1452;
                                        i69 = min;
                                        list = null;
                                    }
                                    int[] iArr42 = mutableIntList32.a;
                                    i70 = mutableIntList32.b;
                                    i71 = 0;
                                    while (i71 < i70) {
                                        int i148 = iArr42[i71];
                                        int i149 = i71;
                                        if (i69 + 1 <= i148 && i148 < i45) {
                                            if (list == null) {
                                                list = new ArrayList();
                                            }
                                            Orientation orientation12 = Orientation.j;
                                            List list2 = list;
                                            iArr = iArr42;
                                            MeasuredPage a8 = PagerMeasureKt.a(lazyLayoutMeasureScopeImpl, i148, j2, pagerLazyLayoutItemProvider4, j12, vertical5, subcomposeMeasureScope5.getLayoutDirection(), i90, mutableIntObjectMap2);
                                            vertical6 = vertical5;
                                            arrayList7 = arrayList112;
                                            orientation32 = orientation6;
                                            j3 = j2;
                                            list2.add(a8);
                                            list = list2;
                                        } else {
                                            vertical6 = vertical5;
                                            iArr = iArr42;
                                            arrayList7 = arrayList112;
                                            orientation32 = orientation6;
                                            j3 = j2;
                                        }
                                        j2 = j3;
                                        iArr42 = iArr;
                                        arrayList112 = arrayList7;
                                        orientation6 = orientation32;
                                        vertical5 = vertical6;
                                        i71 = i149 + 1;
                                    }
                                    ArrayList arrayList132 = arrayList112;
                                    Orientation orientation132 = orientation6;
                                    long j142 = j2;
                                    if (list == null) {
                                        list = arrayList132;
                                    }
                                    size2 = list.size();
                                    int i1502 = i68;
                                    for (i72 = 0; i72 < size2; i72++) {
                                        i1502 = Math.max(i1502, ((MeasuredPage) list.get(i72)).h);
                                    }
                                    if (!Intrinsics.a(measuredPage, arrayDeque.first()) && arrayList4.isEmpty() && list.isEmpty()) {
                                        z312 = true;
                                    } else {
                                        z312 = false;
                                    }
                                    Orientation orientation142 = Orientation.j;
                                    i73 = i58;
                                    g2 = ConstraintsKt.g(i73, j10);
                                    int f82 = ConstraintsKt.f(i1502, j10);
                                    i74 = i62;
                                    if (i73 >= Math.min(g2, i74)) {
                                        z322 = true;
                                    } else {
                                        z322 = false;
                                    }
                                    if (!z322 && i59 != 0) {
                                        StringBuilder sb = new StringBuilder("non-zero pagesScrollOffset=");
                                        i75 = i59;
                                        sb.append(i75);
                                        InlineClassHelperKt.c(sb.toString());
                                    } else {
                                        i75 = i59;
                                    }
                                    ArrayList arrayList142 = new ArrayList(list.size() + arrayList4.size() + arrayDeque.b());
                                    if (!z322) {
                                        if (!arrayList4.isEmpty() || !list.isEmpty()) {
                                            InlineClassHelperKt.a("No extra pages");
                                        }
                                        int b5 = arrayDeque.b();
                                        int[] iArr5 = new int[b5];
                                        for (int i151 = 0; i151 < b5; i151++) {
                                            iArr5[i151] = i90;
                                        }
                                        int[] iArr6 = new int[b5];
                                        z33 = z312;
                                        Arrangement.SpacedAligned spacedAligned = new Arrangement.SpacedAligned(subcomposeMeasureScope5.U(i56), false, null);
                                        Orientation orientation15 = Orientation.j;
                                        subcomposeMeasureScope = subcomposeMeasureScope5;
                                        spacedAligned.c(lazyLayoutMeasureScopeImpl, g2, iArr5, LayoutDirection.j, iArr6);
                                        IntRange r = ArraysKt.r(iArr6);
                                        int i152 = r.k;
                                        int i153 = r.l;
                                        if ((i153 > 0 && i152 >= 0) || (i153 < 0 && i152 <= 0)) {
                                            int i154 = 0;
                                            while (true) {
                                                int i155 = iArr6[i154];
                                                int i156 = i153;
                                                arrayDeque2 = arrayDeque;
                                                int[] iArr7 = iArr6;
                                                MeasuredPage measuredPage4 = (MeasuredPage) arrayDeque2.get(i154);
                                                measuredPage4.b(i155, g2, f82);
                                                arrayList142.add(measuredPage4);
                                                if (i154 == i152) {
                                                    break;
                                                }
                                                i154 += i156;
                                                arrayDeque = arrayDeque2;
                                                i153 = i156;
                                                iArr6 = iArr7;
                                            }
                                        } else {
                                            arrayDeque2 = arrayDeque;
                                        }
                                    } else {
                                        z33 = z312;
                                        subcomposeMeasureScope = subcomposeMeasureScope5;
                                        arrayDeque2 = arrayDeque;
                                        int size3 = arrayList4.size();
                                        int i157 = i75;
                                        int i158 = 0;
                                        while (i158 < size3) {
                                            int i159 = i75;
                                            MeasuredPage measuredPage5 = (MeasuredPage) arrayList4.get(i158);
                                            i157 -= i87;
                                            measuredPage5.b(i157, g2, f82);
                                            arrayList142.add(measuredPage5);
                                            i158++;
                                            i75 = i159;
                                        }
                                        int i160 = i75;
                                        int b6 = arrayDeque2.b();
                                        int i161 = i160;
                                        for (int i162 = 0; i162 < b6; i162++) {
                                            MeasuredPage measuredPage6 = (MeasuredPage) arrayDeque2.get(i162);
                                            measuredPage6.b(i161, g2, f82);
                                            arrayList142.add(measuredPage6);
                                            i161 += i87;
                                        }
                                        int size4 = list.size();
                                        for (int i163 = 0; i163 < size4; i163++) {
                                            MeasuredPage measuredPage7 = (MeasuredPage) list.get(i163);
                                            measuredPage7.b(i161, g2, f82);
                                            arrayList142.add(measuredPage7);
                                            i161 += i87;
                                        }
                                    }
                                    if (!z33) {
                                        arrayList5 = arrayList142;
                                    } else {
                                        arrayList5 = new ArrayList(arrayList142.size());
                                        int size5 = arrayList142.size();
                                        int i164 = 0;
                                        while (i164 < size5) {
                                            Object obj3 = arrayList142.get(i164);
                                            ArrayDeque arrayDeque4 = arrayDeque2;
                                            MeasuredPage measuredPage8 = (MeasuredPage) obj3;
                                            int i165 = g2;
                                            int i166 = size5;
                                            if (measuredPage8.a >= ((MeasuredPage) arrayDeque4.first()).a && measuredPage8.a <= ((MeasuredPage) arrayDeque4.last()).a) {
                                                arrayList5.add(obj3);
                                            }
                                            i164++;
                                            g2 = i165;
                                            size5 = i166;
                                            arrayDeque2 = arrayDeque4;
                                        }
                                    }
                                    ArrayDeque arrayDeque52 = arrayDeque2;
                                    int i1672 = g2;
                                    if (!arrayList4.isEmpty()) {
                                        arrayList6 = arrayList132;
                                    } else {
                                        arrayList6 = new ArrayList(arrayList142.size());
                                        int size6 = arrayList142.size();
                                        int i168 = 0;
                                        while (i168 < size6) {
                                            Object obj4 = arrayList142.get(i168);
                                            int i169 = size6;
                                            if (((MeasuredPage) obj4).a < ((MeasuredPage) arrayDeque52.first()).a) {
                                                arrayList6.add(obj4);
                                            }
                                            i168++;
                                            size6 = i169;
                                        }
                                    }
                                    ArrayList arrayList152 = arrayList6;
                                    if (!list.isEmpty()) {
                                        ArrayList arrayList16 = new ArrayList(arrayList142.size());
                                        int size7 = arrayList142.size();
                                        int i170 = 0;
                                        ArrayList arrayList17 = arrayList6;
                                        while (i170 < size7) {
                                            Object obj5 = arrayList142.get(i170);
                                            ArrayList arrayList18 = arrayList17;
                                            if (((MeasuredPage) obj5).a > ((MeasuredPage) arrayDeque52.last()).a) {
                                                arrayList16.add(obj5);
                                            }
                                            i170++;
                                            arrayList17 = arrayList18;
                                        }
                                        arrayList132 = arrayList16;
                                        arrayList152 = arrayList17;
                                    }
                                    ArrayList arrayList192 = arrayList152;
                                    if (!arrayList5.isEmpty()) {
                                        obj2 = null;
                                    } else {
                                        obj2 = arrayList5.get(0);
                                        int i171 = ((MeasuredPage) obj2).j;
                                        snapPosition3.getClass();
                                        float f9 = -Math.abs(i171 - 0.0f);
                                        int size8 = arrayList5.size() - 1;
                                        if (1 <= size8) {
                                            int i172 = 1;
                                            while (true) {
                                                Object obj6 = arrayList5.get(i172);
                                                float f10 = -Math.abs(((MeasuredPage) obj6).j - 0.0f);
                                                if (Float.compare(f9, f10) < 0) {
                                                    f9 = f10;
                                                    obj2 = obj6;
                                                }
                                                if (i172 == size8) {
                                                    break;
                                                }
                                                i172++;
                                            }
                                        }
                                    }
                                    measuredPage2 = (MeasuredPage) obj2;
                                    snapPosition3.getClass();
                                    if (measuredPage2 == null) {
                                        i76 = measuredPage2.j;
                                    } else {
                                        i76 = 0;
                                    }
                                    if (i60 != 0) {
                                        z34 = false;
                                    } else {
                                        z34 = false;
                                        f6 = RangesKt.c((0 - i76) / i60, -0.5f, 0.5f);
                                    }
                                    ec ecVar2 = new ec(4, mutableState3, arrayList142);
                                    int g42 = ConstraintsKt.g(i1672 + i111, j);
                                    int f112 = ConstraintsKt.f(f82 + i112, j);
                                    map = EmptyMap.j;
                                    MeasureResult B2 = subcomposeMeasureScope.B(g42, f112, map, ecVar2);
                                    if (i53 < i45 && i73 <= i74) {
                                        z35 = z34;
                                    } else {
                                        z35 = true;
                                    }
                                    subcomposeMeasureScope2 = subcomposeMeasureScope;
                                    pagerState4 = pagerState3;
                                    pagerMeasureResult = new PagerMeasureResult(arrayList5, i90, i56, i83, orientation132, i94, i42, i67, measuredPage, measuredPage2, f6, i1412, z35, snapPosition3, B2, z36, arrayList192, arrayList132, coroutineScope2, lazyLayoutMeasureScopeImpl, j142);
                                    lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                                }
                            } else {
                                i51 = i43;
                                i52 = i107;
                                vertical4 = vertical3;
                            }
                            int b7 = arrayDeque3.b();
                            MeasuredPage measuredPage9 = measuredPage3;
                            int i173 = 0;
                            while (i173 < b7 && i50 != 0) {
                                i53 = i48;
                                i54 = i113;
                                if (i54 > i50) {
                                    break;
                                }
                                int i174 = b7;
                                if (i173 == arrayDeque3.b() - 1) {
                                    break;
                                }
                                i50 -= i54;
                                i173++;
                                measuredPage9 = (MeasuredPage) arrayDeque3.get(i173);
                                i113 = i54;
                                i48 = i53;
                                b7 = i174;
                            }
                            i53 = i48;
                            i54 = i113;
                            measuredPage3 = measuredPage9;
                            int i14122 = i50;
                            Orientation orientation722 = Orientation.j;
                            max = Math.max(0, i46 - i108);
                            i55 = i46 - 1;
                            if (max > i55) {
                            }
                            MutableIntList mutableIntList222 = a4;
                            int[] iArr222 = mutableIntList222.a;
                            i63 = mutableIntList222.b;
                            arrayList2 = arrayList;
                            i64 = 0;
                            while (i64 < i63) {
                            }
                            MutableIntList mutableIntList322 = mutableIntList222;
                            ?? r1422 = EmptyList.j;
                            if (arrayList2 != null) {
                            }
                            size = arrayList3.size();
                            ArrayList arrayList1122 = r1422;
                            int i14522 = i51;
                            i65 = 0;
                            while (i65 < size) {
                            }
                            arrayList4 = arrayList3;
                            int i14622 = ((MeasuredPage) arrayDeque.last()).a;
                            Orientation orientation1022 = Orientation.j;
                            min = Math.min(i57, (i45 - i14622) - 1) + i14622;
                            i66 = i14622 + 1;
                            if (i66 > min) {
                            }
                            int[] iArr422 = mutableIntList322.a;
                            i70 = mutableIntList322.b;
                            i71 = 0;
                            while (i71 < i70) {
                            }
                            ArrayList arrayList1322 = arrayList1122;
                            Orientation orientation1322 = orientation6;
                            long j1422 = j2;
                            if (list == null) {
                            }
                            size2 = list.size();
                            int i15022 = i68;
                            while (i72 < size2) {
                            }
                            if (!Intrinsics.a(measuredPage, arrayDeque.first())) {
                            }
                            z312 = false;
                            Orientation orientation1422 = Orientation.j;
                            i73 = i58;
                            g2 = ConstraintsKt.g(i73, j10);
                            int f822 = ConstraintsKt.f(i15022, j10);
                            i74 = i62;
                            if (i73 >= Math.min(g2, i74)) {
                            }
                            if (!z322) {
                            }
                            i75 = i59;
                            ArrayList arrayList1422 = new ArrayList(list.size() + arrayList4.size() + arrayDeque.b());
                            if (!z322) {
                            }
                            if (!z33) {
                            }
                            ArrayDeque arrayDeque522 = arrayDeque2;
                            int i16722 = g2;
                            if (!arrayList4.isEmpty()) {
                            }
                            ArrayList arrayList1522 = arrayList6;
                            if (!list.isEmpty()) {
                            }
                            ArrayList arrayList1922 = arrayList1522;
                            if (!arrayList5.isEmpty()) {
                            }
                            measuredPage2 = (MeasuredPage) obj2;
                            snapPosition3.getClass();
                            if (measuredPage2 == null) {
                            }
                            if (i60 != 0) {
                            }
                            ec ecVar22 = new ec(4, mutableState3, arrayList1422);
                            int g422 = ConstraintsKt.g(i16722 + i111, j);
                            int f1122 = ConstraintsKt.f(f822 + i112, j);
                            map = EmptyMap.j;
                            MeasureResult B22 = subcomposeMeasureScope.B(g422, f1122, map, ecVar22);
                            if (i53 < i45) {
                            }
                            z35 = true;
                            subcomposeMeasureScope2 = subcomposeMeasureScope;
                            pagerState4 = pagerState3;
                            pagerMeasureResult = new PagerMeasureResult(arrayList5, i90, i56, i83, orientation1322, i94, i42, i67, measuredPage, measuredPage2, f6, i14122, z35, snapPosition3, B22, z36, arrayList1922, arrayList1322, coroutineScope2, lazyLayoutMeasureScopeImpl, j1422);
                            lazyLayoutMeasureScopeImpl2 = lazyLayoutMeasureScopeImpl;
                        }
                        PagerState pagerState6 = pagerState4;
                        pagerState6.h(pagerMeasureResult, subcomposeMeasureScope2.f0(), false);
                        PagerCacheWindowLogic pagerCacheWindowLogic = pagerState6.t;
                        List list3 = pagerMeasureResult.a;
                        Trace.beginSection("compose:pager:cache_window:keepAroundItems");
                        try {
                            if (pagerCacheWindowLogic.b() && !list3.isEmpty()) {
                                int i175 = ((MeasuredPage) ((PageInfo) CollectionsKt.s(list3))).a;
                                int i176 = ((MeasuredPage) ((PageInfo) CollectionsKt.z(list3))).a;
                                for (int i177 = pagerCacheWindowLogic.h; i177 < i175; i177++) {
                                    lazyLayoutMeasureScopeImpl2.a(i177);
                                }
                                int i178 = i176 + 1;
                                int i179 = pagerCacheWindowLogic.i;
                                if (i178 <= i179) {
                                    while (true) {
                                        lazyLayoutMeasureScopeImpl2.a(i178);
                                        if (i178 == i179) {
                                            break;
                                        }
                                        i178++;
                                    }
                                }
                            }
                            return pagerMeasureResult;
                        } finally {
                            Trace.endSection();
                        }
                    } catch (Throwable th) {
                        Snapshot.Companion.e(a2, b, function1);
                        throw th;
                    }
                }
            };
            kProperty0 = kProperty02;
            gapComposer2.g0(K);
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) K;
            Orientation orientation32 = Orientation.j;
            if ((i28 ^ 6) <= i5) {
            }
            z17 = false;
            final boolean z312 = false;
            g = z17 | gapComposer2.g(false);
            K2 = gapComposer2.K();
            if (!g) {
            }
            K2 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.pager.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final int a() {
                    long i362;
                    PagerState pagerState3 = PagerState.this;
                    if (((PagerMeasureResult) pagerState3.k()).e == Orientation.j) {
                        i362 = ((PagerMeasureResult) pagerState3.k()).i() & 4294967295L;
                    } else {
                        i362 = ((PagerMeasureResult) pagerState3.k()).i() >> 32;
                    }
                    return (int) i362;
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final float b() {
                    return (float) PagerScrollPositionKt.a(PagerState.this);
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final int c() {
                    PagerState pagerState3 = PagerState.this;
                    return (-((PagerMeasureResult) pagerState3.k()).f) + ((PagerMeasureResult) pagerState3.k()).d;
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final float d() {
                    PagerState pagerState3 = PagerState.this;
                    return (float) PagerStateKt.a(pagerState3.k(), pagerState3.l());
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final Object e(int i362, Continuation continuation) {
                    PagerState pagerState3 = PagerState.this;
                    pagerState3.getClass();
                    Object c = pagerState3.c(MutatePriority.j, new PagerState$scrollToPage$2(pagerState3, i362, null), (ContinuationImpl) continuation);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    Unit unit = Unit.a;
                    if (c != coroutineSingletons) {
                        c = unit;
                    }
                    if (c == coroutineSingletons) {
                        return c;
                    }
                    return unit;
                }

                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                public final CollectionInfo f() {
                    boolean z322 = z312;
                    PagerState pagerState3 = PagerState.this;
                    if (z322) {
                        return new CollectionInfo(pagerState3.l(), 1);
                    }
                    return new CollectionInfo(1, pagerState3.l());
                }
            };
            gapComposer2.g0(K2);
            LazyLayoutSemanticState lazyLayoutSemanticState2 = (LazyLayoutSemanticState) K2;
            if (i6 != 32) {
            }
            if ((i24 & 458752) != 131072) {
            }
            z20 = z18 | z19;
            K3 = gapComposer2.K();
            if (!z20) {
            }
            K3 = new PagerWrapperFlingBehavior(targetedFlingBehavior, pagerState2);
            gapComposer2.g0(K3);
            PagerWrapperFlingBehavior pagerWrapperFlingBehavior2 = (PagerWrapperFlingBehavior) K3;
            BringIntoViewSpec bringIntoViewSpec2 = (BringIntoViewSpec) gapComposer2.j(BringIntoViewSpec_androidKt.a);
            LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer2.j(CompositionLocalsKt.n);
            if (i6 != 32) {
            }
            f3 = z21 | gapComposer2.f(bringIntoViewSpec2) | gapComposer2.d(layoutDirection2.ordinal());
            K4 = gapComposer2.K();
            if (!f3) {
            }
            K4 = new PagerBringIntoViewSpec(pagerState2, bringIntoViewSpec2, layoutDirection2);
            gapComposer2.g0(K4);
            PagerBringIntoViewSpec pagerBringIntoViewSpec2 = (PagerBringIntoViewSpec) K4;
            Modifier.Companion companion2 = Modifier.Companion.b;
            if (!z) {
            }
            modifier2 = modifier;
            Modifier a2 = LazyLayoutSemanticsKt.a(modifier2.l(pagerState2.x).l(pagerState2.v), kProperty0, lazyLayoutSemanticState2, orientation, z);
            if (!z) {
            }
            Modifier l22 = ScrollableAreaKt.a(l.l(modifier3), pagerState2, orientation, overscrollEffect, z, pagerWrapperFlingBehavior2, pagerState2.p, pagerBringIntoViewSpec2).l(SuspendingPointerInputFilterKt.a(companion2, pagerState2, new PointerInputEventHandler() { // from class: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1

                /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", l = {289}, m = "invokeSuspend", v = 1)
                /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
                /* loaded from: classes.dex */
                final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                    public int n;
                    public final /* synthetic */ PointerInputScope o;
                    public final /* synthetic */ PagerState p;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                    @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", l = {291, 295}, m = "invokeSuspend", v = 1)
                    /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
                    /* loaded from: classes.dex */
                    public final class C00021 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                        public PointerInputChange l;
                        public PointerInputChange m;
                        public int n;
                        public /* synthetic */ Object o;
                        public final /* synthetic */ PagerState p;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00021(PagerState pagerState, Continuation continuation) {
                            super(2, continuation);
                            this.p = pagerState;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            return ((C00021) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation s(Object obj, Continuation continuation) {
                            C00021 c00021 = new C00021(this.p, continuation);
                            c00021.o = obj;
                            return c00021;
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:28:0x003c, code lost:
                        
                            if (r13 == r0) goto L17;
                         */
                        /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
                        /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
                        /* JADX WARN: Removed duplicated region for block: B:21:0x0084 A[SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:8:0x0072  */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0063 -> B:6:0x0067). Please report as a decompilation issue!!! */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final Object v(Object obj) {
                            AwaitPointerEventScope awaitPointerEventScope;
                            PointerInputChange pointerInputChange;
                            AwaitPointerEventScope awaitPointerEventScope2;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                            int i = this.n;
                            PointerInputChange pointerInputChange2 = null;
                            PagerState pagerState = this.p;
                            if (i != 0) {
                                if (i != 1) {
                                    if (i == 2) {
                                        PointerInputChange pointerInputChange3 = this.m;
                                        PointerInputChange pointerInputChange4 = this.l;
                                        awaitPointerEventScope2 = (AwaitPointerEventScope) this.o;
                                        ResultKt.b(obj);
                                        PointerEvent pointerEvent2 = (PointerEvent) obj;
                                        List list2 = pointerEvent2.a;
                                        int size2 = list2.size();
                                        int i22 = 0;
                                        while (true) {
                                            if (i22 < size2) {
                                                if (!PointerEventKt.c((PointerInputChange) list2.get(i22))) {
                                                    pointerInputChange = pointerInputChange4;
                                                    pointerInputChange2 = pointerInputChange3;
                                                    break;
                                                }
                                                i22++;
                                            } else {
                                                PointerInputChange pointerInputChange5 = pointerInputChange4;
                                                pointerInputChange2 = (PointerInputChange) pointerEvent2.a.get(0);
                                                pointerInputChange = pointerInputChange5;
                                                break;
                                            }
                                        }
                                        if (pointerInputChange2 == null) {
                                            PointerEventPass pointerEventPass = PointerEventPass.j;
                                            this.o = awaitPointerEventScope2;
                                            this.l = pointerInputChange;
                                            this.m = pointerInputChange2;
                                            this.n = 2;
                                            Object q = awaitPointerEventScope2.q(pointerEventPass, this);
                                            if (q != coroutineSingletons) {
                                                PointerInputChange pointerInputChange6 = pointerInputChange2;
                                                pointerInputChange4 = pointerInputChange;
                                                obj = q;
                                                pointerInputChange3 = pointerInputChange6;
                                                PointerEvent pointerEvent22 = (PointerEvent) obj;
                                                List list22 = pointerEvent22.a;
                                                int size22 = list22.size();
                                                int i222 = 0;
                                                while (true) {
                                                    if (i222 < size22) {
                                                    }
                                                    i222++;
                                                }
                                                if (pointerInputChange2 == null) {
                                                    ((SnapshotMutableStateImpl) pagerState.c).setValue(new Offset(Offset.e(pointerInputChange2.c, pointerInputChange.c)));
                                                    return Unit.a;
                                                }
                                            }
                                            return coroutineSingletons;
                                        }
                                    } else {
                                        u2.l("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                } else {
                                    awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                                    ResultKt.b(obj);
                                }
                            } else {
                                ResultKt.b(obj);
                                awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                                PointerEventPass pointerEventPass2 = PointerEventPass.j;
                                this.o = awaitPointerEventScope;
                                this.n = 1;
                                obj = TapGestureDetectorKt.a(awaitPointerEventScope, false, pointerEventPass2, this);
                            }
                            pointerInputChange = (PointerInputChange) obj;
                            ((SnapshotMutableStateImpl) pagerState.c).setValue(new Offset(0L));
                            awaitPointerEventScope2 = awaitPointerEventScope;
                            if (pointerInputChange2 == null) {
                            }
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
                        super(2, continuation);
                        this.o = pointerInputScope;
                        this.p = pagerState;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation s(Object obj, Continuation continuation) {
                        return new AnonymousClass1(this.o, this.p, continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object v(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        int i = this.n;
                        if (i != 0) {
                            if (i == 1) {
                                ResultKt.b(obj);
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            ResultKt.b(obj);
                            C00021 c00021 = new C00021(this.p, null);
                            this.n = 1;
                            if (ForEachGestureKt.b(this.o, c00021, this) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                        return Unit.a;
                    }
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    Object c = CoroutineScopeKt.c(new AnonymousClass1(pointerInputScope, PagerState.this, null), continuation);
                    if (c == CoroutineSingletons.j) {
                        return c;
                    }
                    return Unit.a;
                }
            }));
            nestedScrollConnection2 = nestedScrollConnection;
            gapComposer = gapComposer2;
            LazyLayoutKt.a(kProperty0, NestedScrollModifierKt.a(l22, nestedScrollConnection2, null), pagerState2.s, lazyLayoutMeasurePolicy2, gapComposer, 0);
        } else {
            modifier2 = modifier;
            gapComposer = gapComposer3;
            nestedScrollConnection2 = nestedScrollConnection;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final PagerState pagerState3 = pagerState2;
            final Modifier modifier4 = modifier2;
            r.d = new Function2() { // from class: ja
                {
                    Orientation orientation4 = Orientation.j;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    Orientation orientation4 = Orientation.j;
                    ((Integer) obj3).getClass();
                    int a3 = RecomposeScopeImplKt.a(i | 1);
                    int a4 = RecomposeScopeImplKt.a(i2);
                    LazyLayoutPagerKt.a(modifier4, pagerState3, paddingValues, targetedFlingBehavior, z, overscrollEffect, f, pageSize, nestedScrollConnection2, vertical, snapPosition, composableLambdaImpl, (Composer) obj2, a3, a4);
                    return Unit.a;
                }
            };
        }
    }
}
