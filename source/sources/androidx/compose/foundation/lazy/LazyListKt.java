package androidx.compose.foundation.lazy;

import android.os.Trace;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsModifierLocalKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBringIntoViewSpecKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimatorModifierKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProviderKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItemKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutStickyItemsKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement$Companion$StickToTopPlacement$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a7;
import defpackage.ca;
import defpackage.ha;
import defpackage.ka;
import defpackage.o1;
import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyListKt {
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0289, code lost:
    
        if (r14.g(true) != false) goto L172;
     */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0301 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0382 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02c3  */
    /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.foundation.lazy.LazyItemScopeImpl, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(int i, int i2, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, final Arrangement.Vertical vertical, final PaddingValuesImpl paddingValuesImpl, final LazyListState lazyListState, Composer composer, final Alignment.Horizontal horizontal, Modifier modifier, Function1 function1, boolean z) {
        int i3;
        int i4;
        LazyListState lazyListState2;
        GapComposer gapComposer;
        int i5;
        int i6;
        boolean z2;
        Object obj;
        boolean z3;
        boolean f;
        Object obj2;
        final LazyListState lazyListState3;
        LazyLayoutSemanticState lazyLayoutSemanticState;
        int i7;
        boolean z4;
        KProperty0 kProperty0;
        Modifier modifier2;
        Object K;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(924924659);
        if ((i & 6) == 0) {
            i3 = (gapComposer2.f(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer2.f(lazyListState) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer2.f(paddingValuesImpl) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer2.g(false) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer2.g(true) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer2.f(flingBehavior) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= gapComposer2.g(z) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer2.f(overscrollEffect) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= 33554432;
        }
        if ((i & 805306368) == 0) {
            i3 |= gapComposer2.f(horizontal) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer2.f(vertical) ? 4 : 2);
        } else {
            i4 = i2;
        }
        int i8 = i4 | 432;
        if ((i2 & 3072) == 0) {
            i8 |= gapComposer2.h(function1) ? 2048 : 1024;
        }
        if (gapComposer2.N(i3 & 1, ((306783379 & i3) == 306783378 && (i8 & 1171) == 1170) ? false : true)) {
            gapComposer2.S();
            if ((i & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
            }
            int i9 = i3 & (-234881025);
            gapComposer2.q();
            int i10 = i9 >> 3;
            int i11 = i10 & 14;
            int i12 = i11 | ((i8 >> 6) & 112);
            MutableState k = SnapshotStateKt.k(function1, gapComposer2);
            boolean z5 = (((i12 & 14) ^ 6) > 4 && gapComposer2.f(lazyListState)) || (i12 & 6) == 4;
            Object K2 = gapComposer2.K();
            Object obj3 = Composer.Companion.a;
            if (z5 || K2 == obj3) {
                final ?? obj4 = new Object();
                obj4.a = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                obj4.b = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                i5 = i11;
                i6 = i8;
                final State d = SnapshotStateKt.d(SnapshotStateKt.j(), new o1(k, 20));
                K2 = new PropertyReference(SnapshotStateKt.d(SnapshotStateKt.j(), new Function0() { // from class: androidx.compose.foundation.lazy.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) State.this.getValue();
                        LazyListState lazyListState4 = lazyListState;
                        return new LazyListItemProviderImpl(lazyListState4, lazyListIntervalContent, obj4, new NearestRangeKeyIndexMap((IntRange) lazyListState4.e.e.getValue(), lazyListIntervalContent));
                    }
                }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposer2.g0(K2);
            } else {
                i5 = i11;
                i6 = i8;
            }
            final KProperty0 kProperty02 = (KProperty0) K2;
            int i13 = i9 >> 9;
            int i14 = i5 | (i13 & 112);
            boolean z6 = ((((i14 & 112) ^ 48) > 32 && gapComposer2.g(true)) || (i14 & 48) == 32) | ((((i14 & 14) ^ 6) > 4 && gapComposer2.f(lazyListState)) || (i14 & 6) == 4);
            Object K3 = gapComposer2.K();
            if (z6 || K3 == obj3) {
                K3 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
                    public final State a;

                    {
                        this.a = SnapshotStateKt.e(new ka(LazyListState.this, 0));
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        long i15;
                        LazyListState lazyListState4 = LazyListState.this;
                        if (((LazyListMeasureResult) lazyListState4.h()).p == Orientation.j) {
                            i15 = ((LazyListMeasureResult) lazyListState4.h()).i() & 4294967295L;
                        } else {
                            i15 = ((LazyListMeasureResult) lazyListState4.h()).i() >> 32;
                        }
                        return (int) i15;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        LazyListState lazyListState4 = LazyListState.this;
                        return (lazyListState4.e.a() * 500) + lazyListState4.e.b();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int c() {
                        LazyListState lazyListState4 = LazyListState.this;
                        return (-((LazyListMeasureResult) lazyListState4.h()).m) + ((LazyListMeasureResult) lazyListState4.h()).q;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float d() {
                        LazyListState lazyListState4 = LazyListState.this;
                        int a = lazyListState4.e.a();
                        int b = lazyListState4.e.b();
                        if (lazyListState4.d()) {
                            return (a * 500) + b + 100.0f;
                        }
                        return (a * 500) + b;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object e(int i15, Continuation continuation) {
                        SaverKt$Saver$1 saverKt$Saver$1 = LazyListState.y;
                        LazyListState lazyListState4 = LazyListState.this;
                        lazyListState4.getClass();
                        Object c = lazyListState4.c(MutatePriority.j, new LazyListState$scrollToItem$2(lazyListState4, i15, null), (ContinuationImpl) continuation);
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
                        return new CollectionInfo(((Number) this.a.getValue()).intValue(), 1);
                    }
                };
                gapComposer2.g0(K3);
            }
            LazyLayoutSemanticState lazyLayoutSemanticState2 = (LazyLayoutSemanticState) K3;
            Object K4 = gapComposer2.K();
            if (K4 == obj3) {
                K4 = EffectsKt.h(gapComposer2);
                gapComposer2.g0(K4);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) K4;
            final GraphicsContext graphicsContext = (GraphicsContext) gapComposer2.j(CompositionLocalsKt.g);
            StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$1 = !((Boolean) gapComposer2.j(CompositionLocalsKt.x)).booleanValue() ? StickyItemsPlacement.Companion.a : null;
            int i15 = i9 & 112;
            int i16 = i6 << 18;
            int i17 = (i9 & 65520) | (i13 & 3670016) | (i16 & 29360128) | (i16 & 234881024) | ((i6 << 27) & 1879048192);
            boolean z7 = ((((i17 & 896) ^ 384) > 256 && gapComposer2.f(paddingValuesImpl)) || (i17 & 384) == 256) | ((((i17 & 112) ^ 48) > 32 && gapComposer2.f(lazyListState)) || (i17 & 48) == 32) | ((((i17 & 7168) ^ 3072) > 2048 && gapComposer2.g(false)) || (i17 & 3072) == 2048);
            if (((57344 & i17) ^ 24576) <= 16384) {
            }
            if ((i17 & 24576) != 16384) {
                z2 = false;
                boolean d2 = z7 | z2 | gapComposer2.d(0) | ((((i17 & 3670016) ^ 1572864) <= 1048576 && gapComposer2.f(horizontal)) || (i17 & 1572864) == 1048576);
                if (((i17 & 29360128) ^ 12582912) <= 8388608) {
                    obj = null;
                    if (gapComposer2.f(null)) {
                        z3 = true;
                        f = (((i17 & 234881024) ^ 100663296) <= 67108864 && gapComposer2.f(obj)) | d2 | z3 | ((((i17 & 1879048192) ^ 805306368) <= 536870912 && gapComposer2.f(vertical)) || (i17 & 805306368) == 536870912) | gapComposer2.f(graphicsContext) | gapComposer2.f(stickyItemsPlacement$Companion$StickToTopPlacement$1);
                        Object K5 = gapComposer2.K();
                        if (!f || K5 == obj3) {
                            final StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$12 = stickyItemsPlacement$Companion$StickToTopPlacement$1;
                            lazyListState3 = lazyListState;
                            lazyLayoutSemanticState = lazyLayoutSemanticState2;
                            i7 = i15;
                            z4 = false;
                            obj2 = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                                /* JADX WARN: Removed duplicated region for block: B:252:0x0645  */
                                /* JADX WARN: Removed duplicated region for block: B:255:0x0654  */
                                /* JADX WARN: Removed duplicated region for block: B:258:0x0681  */
                                /* JADX WARN: Removed duplicated region for block: B:262:0x06a3  */
                                /* JADX WARN: Removed duplicated region for block: B:267:0x06ca A[ADDED_TO_REGION] */
                                /* JADX WARN: Removed duplicated region for block: B:271:0x06fe  */
                                /* JADX WARN: Removed duplicated region for block: B:273:0x0706  */
                                /* JADX WARN: Removed duplicated region for block: B:276:0x071e A[LOOP:15: B:275:0x071c->B:276:0x071e, LOOP_END] */
                                /* JADX WARN: Removed duplicated region for block: B:279:0x070b  */
                                /* JADX WARN: Removed duplicated region for block: B:280:0x0703  */
                                /* JADX WARN: Removed duplicated region for block: B:283:0x06b9  */
                                /* JADX WARN: Removed duplicated region for block: B:287:0x0693  */
                                /* JADX WARN: Removed duplicated region for block: B:290:0x0659  */
                                /* JADX WARN: Removed duplicated region for block: B:291:0x064a  */
                                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                */
                                public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                                    boolean z8;
                                    Function1 function12;
                                    float f2;
                                    LazyListState lazyListState4;
                                    LazyListItemProvider lazyListItemProvider;
                                    int i18;
                                    long j2;
                                    int i19;
                                    int i20;
                                    int i21;
                                    int i22;
                                    int i23;
                                    int i24;
                                    int i25;
                                    float f3;
                                    float f4;
                                    int i26;
                                    int i27;
                                    LazyListMeasuredItem lazyListMeasuredItem;
                                    int i28;
                                    List list;
                                    int i29;
                                    float f5;
                                    List list2;
                                    List list3;
                                    boolean z9;
                                    boolean z10;
                                    LazyListMeasuredItem lazyListMeasuredItem2;
                                    LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                    ArrayList arrayList;
                                    LazyLayoutItemAnimator lazyLayoutItemAnimator;
                                    float f6;
                                    int i30;
                                    LazyListMeasuredItem lazyListMeasuredItem3;
                                    int i31;
                                    LazyListMeasuredItem lazyListMeasuredItem4;
                                    int i32;
                                    Integer valueOf;
                                    Integer valueOf2;
                                    int i33;
                                    Integer num;
                                    boolean z11;
                                    Map map;
                                    int i34;
                                    int i35;
                                    int size;
                                    int i36;
                                    SubcomposeMeasureScope subcomposeMeasureScope;
                                    LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12;
                                    LazyListMeasureResult lazyListMeasureResult;
                                    int i37;
                                    LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                                    Map map2;
                                    SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.k;
                                    LazyListState lazyListState5 = LazyListState.this;
                                    lazyListState5.t.getValue();
                                    if (!lazyListState5.b && !subcomposeMeasureScope2.f0()) {
                                        z8 = false;
                                    } else {
                                        z8 = true;
                                    }
                                    Orientation orientation = Orientation.j;
                                    CheckScrollableContainerConstraintsKt.a(j, orientation);
                                    LayoutDirection layoutDirection = subcomposeMeasureScope2.getLayoutDirection();
                                    PaddingValuesImpl paddingValuesImpl2 = paddingValuesImpl;
                                    int y0 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b(layoutDirection));
                                    int y02 = subcomposeMeasureScope2.y0(paddingValuesImpl2.c(subcomposeMeasureScope2.getLayoutDirection()));
                                    int y03 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b);
                                    int y04 = subcomposeMeasureScope2.y0(paddingValuesImpl2.d) + y03;
                                    int i38 = y02 + y0;
                                    int i39 = y04 - y03;
                                    long i40 = ConstraintsKt.i(-i38, -y04, j);
                                    LazyListItemProvider lazyListItemProvider2 = (LazyListItemProvider) kProperty02.a();
                                    LazyItemScopeImpl lazyItemScopeImpl = ((LazyListItemProviderImpl) lazyListItemProvider2).c;
                                    int h = Constraints.h(i40);
                                    int g = Constraints.g(i40);
                                    ((SnapshotMutableIntStateImpl) lazyItemScopeImpl.a).k(h);
                                    ((SnapshotMutableIntStateImpl) lazyItemScopeImpl.b).k(g);
                                    Arrangement.Vertical vertical2 = vertical;
                                    if (vertical2 != null) {
                                        int y05 = subcomposeMeasureScope2.y0(vertical2.a());
                                        int i41 = ((LazyListItemProviderImpl) lazyListItemProvider2).b.e().b;
                                        int g2 = Constraints.g(j) - y04;
                                        int i42 = y03;
                                        int i43 = i41;
                                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13 = new LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(i40, lazyListItemProvider2, lazyLayoutMeasureScopeImpl, i43, y05, horizontal, i42, i39, (y0 << 32) | (y03 & 4294967295L), LazyListState.this);
                                        Snapshot a = Snapshot.Companion.a();
                                        CacheWindowLogic cacheWindowLogic = null;
                                        if (a != null) {
                                            function12 = a.e();
                                        } else {
                                            function12 = null;
                                        }
                                        Snapshot b = Snapshot.Companion.b(a);
                                        try {
                                            LazyListScrollPosition lazyListScrollPosition = lazyListState5.e;
                                            int a2 = lazyListScrollPosition.a();
                                            int a3 = LazyLayoutItemProviderKt.a(a2, lazyListItemProvider2, lazyListScrollPosition.d);
                                            if (a2 != a3) {
                                                ((SnapshotMutableIntStateImpl) lazyListScrollPosition.a).k(a3);
                                                lazyListScrollPosition.e.b(a2);
                                            }
                                            int b2 = lazyListScrollPosition.b();
                                            Snapshot.Companion.e(a, b, function12);
                                            MutableIntList a4 = LazyLayoutBeyondBoundsStateKt.a(lazyListItemProvider2, lazyListState5.s, lazyListState5.p);
                                            if (!subcomposeMeasureScope2.f0() && z8) {
                                                f2 = ((Number) ((SnapshotMutableStateImpl) lazyListState5.x.b.k).getValue()).floatValue();
                                            } else {
                                                f2 = lazyListState5.h;
                                            }
                                            LazyLayoutItemAnimator lazyLayoutItemAnimator2 = lazyListState5.o;
                                            boolean f0 = subcomposeMeasureScope2.f0();
                                            MutableState mutableState = lazyListState5.w;
                                            boolean z12 = lazyListState5.i;
                                            if (i42 < 0) {
                                                InlineClassHelperKt.a("invalid beforeContentPadding");
                                            }
                                            if (i39 < 0) {
                                                InlineClassHelperKt.a("invalid afterContentPadding");
                                            }
                                            LazyListItemProvider lazyListItemProvider3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.b;
                                            CoroutineScope coroutineScope2 = coroutineScope;
                                            GraphicsContext graphicsContext2 = graphicsContext;
                                            List list4 = EmptyList.j;
                                            if (i43 <= 0) {
                                                int j3 = Constraints.j(i40);
                                                int i44 = Constraints.i(i40);
                                                lazyLayoutItemAnimator2.d(0, j3, i44, new ArrayList(), ((LazyListItemProviderImpl) lazyListItemProvider3).d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13, f0, 1, z8, 0, 0, coroutineScope2, graphicsContext2);
                                                if (!f0) {
                                                    long b3 = lazyLayoutItemAnimator2.b();
                                                    if (!IntSize.a(b3, 0L)) {
                                                        j3 = ConstraintsKt.g((int) (b3 >> 32), i40);
                                                        i44 = ConstraintsKt.f((int) (b3 & 4294967295L), i40);
                                                    }
                                                }
                                                a7 a7Var = new a7(15);
                                                int g3 = ConstraintsKt.g(j3 + i38, j);
                                                int f7 = ConstraintsKt.f(i44 + y04, j);
                                                map2 = EmptyMap.j;
                                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                                lazyListState4 = lazyListState5;
                                                lazyListItemProvider = lazyListItemProvider3;
                                                lazyListMeasureResult = new LazyListMeasureResult(null, 0, false, 0.0f, subcomposeMeasureScope2.B(g3, f7, map2, a7Var), 0.0f, false, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.d, 0, list4, -i42, g2 + i39, 0, orientation, i39, y05);
                                                lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                            } else {
                                                lazyListState4 = lazyListState5;
                                                int i45 = a3;
                                                lazyListItemProvider = lazyListItemProvider3;
                                                if (i45 >= i43) {
                                                    i45 = i43 - 1;
                                                    b2 = 0;
                                                }
                                                int round = Math.round(f2);
                                                int i46 = b2 - round;
                                                if (i45 == 0 && i46 < 0) {
                                                    round += i46;
                                                    i46 = 0;
                                                }
                                                float f8 = f2;
                                                ArrayDeque arrayDeque = new ArrayDeque();
                                                int i47 = i45;
                                                int i48 = -i42;
                                                if (y05 < 0) {
                                                    i18 = y05;
                                                } else {
                                                    i18 = 0;
                                                }
                                                int i49 = i48 + i18;
                                                int i50 = i46 + i49;
                                                int i51 = 0;
                                                while (true) {
                                                    j2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.d;
                                                    if (i50 >= 0 || i47 <= 0) {
                                                        break;
                                                    }
                                                    int i52 = i47 - 1;
                                                    LazyListMeasuredItem c = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i52, j2);
                                                    arrayDeque.add(0, c);
                                                    i51 = Math.max(i51, c.q);
                                                    i50 += c.j();
                                                    i47 = i52;
                                                }
                                                int i53 = 0;
                                                if (i50 < i49) {
                                                    round -= i49 - i50;
                                                    i50 = i49;
                                                }
                                                int i54 = round;
                                                int i55 = i50 - i49;
                                                int i56 = g2 + i39;
                                                if (i56 >= 0) {
                                                    i53 = i56;
                                                }
                                                int i57 = i51;
                                                int i58 = i55;
                                                int i59 = -i55;
                                                int i60 = i47;
                                                int i61 = 0;
                                                boolean z13 = false;
                                                while (i61 < arrayDeque.l) {
                                                    if (i59 >= i53) {
                                                        arrayDeque.c(i61);
                                                        z13 = true;
                                                    } else {
                                                        i60++;
                                                        int j4 = ((LazyListMeasuredItem) arrayDeque.get(i61)).j() + i59;
                                                        i61++;
                                                        i59 = j4;
                                                    }
                                                }
                                                int i62 = i57;
                                                boolean z14 = z13;
                                                int i63 = i60;
                                                while (i63 < i43 && (i59 < i53 || i59 <= 0 || arrayDeque.isEmpty())) {
                                                    int i64 = i53;
                                                    LazyListMeasuredItem c2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i63, j2);
                                                    i59 = c2.j() + i59;
                                                    if (i59 <= i49) {
                                                        i37 = i49;
                                                        if (i63 != i43 - 1) {
                                                            i58 -= c2.j();
                                                            i47 = i63 + 1;
                                                            z14 = true;
                                                            i63++;
                                                            i53 = i64;
                                                            i49 = i37;
                                                        }
                                                    } else {
                                                        i37 = i49;
                                                    }
                                                    int max = Math.max(i62, c2.q);
                                                    arrayDeque.addLast(c2);
                                                    i62 = max;
                                                    i63++;
                                                    i53 = i64;
                                                    i49 = i37;
                                                }
                                                if (i59 < g2) {
                                                    int i65 = g2 - i59;
                                                    i59 += i65;
                                                    i21 = i62;
                                                    i23 = i58 - i65;
                                                    while (i23 < i42 && i47 > 0) {
                                                        int i66 = i65;
                                                        int i67 = i47 - 1;
                                                        int i68 = i42;
                                                        LazyListMeasuredItem c3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i67, j2);
                                                        i47 = i67;
                                                        arrayDeque.add(0, c3);
                                                        i21 = Math.max(i21, c3.q);
                                                        i23 += c3.j();
                                                        i65 = i66;
                                                        i42 = i68;
                                                    }
                                                    int i69 = i65;
                                                    i19 = i42;
                                                    i20 = i54;
                                                    int i70 = i20 + i69;
                                                    if (i23 < 0) {
                                                        i59 += i23;
                                                        i22 = i47;
                                                        i24 = i70 + i23;
                                                        i23 = 0;
                                                    } else {
                                                        i22 = i47;
                                                        i24 = i70;
                                                    }
                                                } else {
                                                    i19 = i42;
                                                    i20 = i54;
                                                    i21 = i62;
                                                    i22 = i47;
                                                    i23 = i58;
                                                    i24 = i20;
                                                }
                                                int i71 = i21;
                                                int i72 = i63;
                                                if (Integer.signum(Math.round(f8)) == Integer.signum(i24) && Math.abs(Math.round(f8)) >= Math.abs(i24)) {
                                                    i25 = i24;
                                                    f3 = i25;
                                                } else {
                                                    i25 = i24;
                                                    f3 = f8;
                                                }
                                                float f9 = f8 - f3;
                                                float f10 = 0.0f;
                                                if (f0 && i25 > i20 && f9 <= 0.0f) {
                                                    f10 = (i25 - i20) + f9;
                                                }
                                                float f11 = f10;
                                                if (i23 < 0) {
                                                    InlineClassHelperKt.a("negative currentFirstItemScrollOffset");
                                                }
                                                int i73 = -i23;
                                                LazyListMeasuredItem lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.first();
                                                if (i19 > 0 || y05 < 0) {
                                                    f4 = f11;
                                                    int b4 = arrayDeque.b();
                                                    LazyListMeasuredItem lazyListMeasuredItem6 = lazyListMeasuredItem5;
                                                    i26 = i73;
                                                    int i74 = i23;
                                                    int i75 = 0;
                                                    while (i75 < b4) {
                                                        int i76 = b4;
                                                        int j5 = ((LazyListMeasuredItem) arrayDeque.get(i75)).j();
                                                        if (i74 == 0 || j5 > i74 || i75 == arrayDeque.b() - 1) {
                                                            break;
                                                        }
                                                        i74 -= j5;
                                                        i75++;
                                                        lazyListMeasuredItem6 = (LazyListMeasuredItem) arrayDeque.get(i75);
                                                        b4 = i76;
                                                    }
                                                    i27 = i74;
                                                    lazyListMeasuredItem = lazyListMeasuredItem6;
                                                } else {
                                                    f4 = f11;
                                                    i27 = i23;
                                                    lazyListMeasuredItem = lazyListMeasuredItem5;
                                                    i26 = i73;
                                                }
                                                int max2 = Math.max(0, i22);
                                                int i77 = i22 - 1;
                                                if (max2 <= i77) {
                                                    List list5 = null;
                                                    while (true) {
                                                        if (list5 == null) {
                                                            list5 = new ArrayList();
                                                        }
                                                        i28 = i43;
                                                        list = list5;
                                                        list.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i77, j2));
                                                        if (i77 == max2) {
                                                            break;
                                                        }
                                                        i77--;
                                                        list5 = list;
                                                        i43 = i28;
                                                    }
                                                } else {
                                                    i28 = i43;
                                                    list = null;
                                                }
                                                int[] iArr = a4.a;
                                                for (int i78 = a4.b - 1; -1 < i78; i78--) {
                                                    int i79 = iArr[i78];
                                                    if (i79 < max2) {
                                                        if (list == null) {
                                                            list = new ArrayList();
                                                        }
                                                        list.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i79, j2));
                                                    }
                                                }
                                                if (list == null) {
                                                    list = list4;
                                                }
                                                int i80 = i71;
                                                int i81 = 0;
                                                for (int size2 = list.size(); i81 < size2; size2 = size2) {
                                                    i80 = Math.max(i80, ((LazyListMeasuredItem) list.get(i81)).q);
                                                    i81++;
                                                }
                                                int min = Math.min(((LazyListMeasuredItem) CollectionsKt.z(arrayDeque)).a, i28 - 1);
                                                int i82 = ((LazyListMeasuredItem) CollectionsKt.z(arrayDeque)).a + 1;
                                                if (i82 <= min) {
                                                    List list6 = null;
                                                    while (true) {
                                                        if (list6 == null) {
                                                            list6 = new ArrayList();
                                                        }
                                                        i29 = i80;
                                                        f5 = f3;
                                                        list2 = list6;
                                                        list2.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i82, j2));
                                                        if (i82 == min) {
                                                            break;
                                                        }
                                                        i82++;
                                                        list6 = list2;
                                                        i80 = i29;
                                                        f3 = f5;
                                                    }
                                                } else {
                                                    i29 = i80;
                                                    f5 = f3;
                                                    list2 = null;
                                                }
                                                if (list2 != null && ((LazyListMeasuredItem) CollectionsKt.z(list2)).a > min) {
                                                    min = ((LazyListMeasuredItem) CollectionsKt.z(list2)).a;
                                                }
                                                int[] iArr2 = a4.a;
                                                int i83 = a4.b;
                                                List list7 = list2;
                                                int i84 = 0;
                                                while (i84 < i83) {
                                                    int i85 = i83;
                                                    int i86 = iArr2[i84];
                                                    if (i86 > min) {
                                                        if (list7 == null) {
                                                            list7 = new ArrayList();
                                                        }
                                                        list7.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i86, j2));
                                                    }
                                                    i84++;
                                                    i83 = i85;
                                                }
                                                if (list7 == null) {
                                                    list3 = list4;
                                                } else {
                                                    list3 = list7;
                                                }
                                                int size3 = list3.size();
                                                int i87 = i29;
                                                for (int i88 = 0; i88 < size3; i88++) {
                                                    i87 = Math.max(i87, ((LazyListMeasuredItem) list3.get(i88)).q);
                                                }
                                                if (Intrinsics.a(lazyListMeasuredItem, arrayDeque.first()) && list.isEmpty() && list3.isEmpty()) {
                                                    z9 = true;
                                                } else {
                                                    z9 = false;
                                                }
                                                int g4 = ConstraintsKt.g(i87, i40);
                                                int f12 = ConstraintsKt.f(i59, i40);
                                                if (i59 < Math.min(f12, g2)) {
                                                    z10 = true;
                                                } else {
                                                    z10 = false;
                                                }
                                                if (z10 && i26 != 0) {
                                                    InlineClassHelperKt.c("non-zero itemsScrollOffset");
                                                }
                                                ArrayList arrayList2 = new ArrayList(list3.size() + list.size() + arrayDeque.b());
                                                if (z10) {
                                                    if (!list.isEmpty() || !list3.isEmpty()) {
                                                        InlineClassHelperKt.a("no extra items");
                                                    }
                                                    int b5 = arrayDeque.b();
                                                    int[] iArr3 = new int[b5];
                                                    for (int i89 = 0; i89 < b5; i89++) {
                                                        iArr3[i89] = ((LazyListMeasuredItem) arrayDeque.get(i89)).n;
                                                    }
                                                    int[] iArr4 = new int[b5];
                                                    if (vertical2 != null) {
                                                        vertical2.b(f12, lazyLayoutMeasureScopeImpl, iArr3, iArr4);
                                                        IntRange r = ArraysKt.r(iArr4);
                                                        int i90 = r.k;
                                                        int i91 = r.l;
                                                        if ((i91 > 0 && i90 >= 0) || (i91 < 0 && i90 <= 0)) {
                                                            lazyListMeasuredItem2 = lazyListMeasuredItem;
                                                            int i92 = 0;
                                                            while (true) {
                                                                int i93 = iArr4[i92];
                                                                LazyListMeasuredItem lazyListMeasuredItem7 = (LazyListMeasuredItem) arrayDeque.get(i92);
                                                                lazyListMeasuredItem7.l(i93, g4, f12);
                                                                arrayList2.add(lazyListMeasuredItem7);
                                                                if (i92 == i90) {
                                                                    break;
                                                                }
                                                                i92 += i91;
                                                            }
                                                        } else {
                                                            lazyListMeasuredItem2 = lazyListMeasuredItem;
                                                        }
                                                    } else {
                                                        throw q.C("null verticalArrangement when isVertical == true");
                                                    }
                                                } else {
                                                    lazyListMeasuredItem2 = lazyListMeasuredItem;
                                                    int size4 = list.size();
                                                    int i94 = i26;
                                                    for (int i95 = 0; i95 < size4; i95++) {
                                                        LazyListMeasuredItem lazyListMeasuredItem8 = (LazyListMeasuredItem) list.get(i95);
                                                        i94 -= lazyListMeasuredItem8.j();
                                                        lazyListMeasuredItem8.l(i94, g4, f12);
                                                        arrayList2.add(lazyListMeasuredItem8);
                                                    }
                                                    int b6 = arrayDeque.b();
                                                    int i96 = i26;
                                                    for (int i97 = 0; i97 < b6; i97++) {
                                                        LazyListMeasuredItem lazyListMeasuredItem9 = (LazyListMeasuredItem) arrayDeque.get(i97);
                                                        lazyListMeasuredItem9.l(i96, g4, f12);
                                                        arrayList2.add(lazyListMeasuredItem9);
                                                        i96 += lazyListMeasuredItem9.j();
                                                    }
                                                    int size5 = list3.size();
                                                    for (int i98 = 0; i98 < size5; i98++) {
                                                        LazyListMeasuredItem lazyListMeasuredItem10 = (LazyListMeasuredItem) list3.get(i98);
                                                        lazyListMeasuredItem10.l(i96, g4, f12);
                                                        arrayList2.add(lazyListMeasuredItem10);
                                                        i96 += lazyListMeasuredItem10.j();
                                                    }
                                                }
                                                if (!z12) {
                                                    f6 = f5;
                                                    lazyLayoutItemAnimator = lazyLayoutItemAnimator2;
                                                    lazyLayoutItemAnimator.d((int) f6, g4, f12, arrayList2, ((LazyListItemProviderImpl) lazyListItemProvider).d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13, f0, 1, z8, i27, i59, coroutineScope2, graphicsContext2);
                                                    arrayList = arrayList2;
                                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                                } else {
                                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                                    arrayList = arrayList2;
                                                    lazyLayoutItemAnimator = lazyLayoutItemAnimator2;
                                                    f6 = f5;
                                                }
                                                if (!f0) {
                                                    long b7 = lazyLayoutItemAnimator.b();
                                                    if (!IntSize.a(b7, 0L)) {
                                                        g4 = ConstraintsKt.g(Math.max(g4, (int) (b7 >> 32)), i40);
                                                        int f13 = ConstraintsKt.f(Math.max(f12, (int) (b7 & 4294967295L)), i40);
                                                        if (f13 != f12) {
                                                            int size6 = arrayList.size();
                                                            for (int i99 = 0; i99 < size6; i99++) {
                                                                LazyListMeasuredItem lazyListMeasuredItem11 = (LazyListMeasuredItem) arrayList.get(i99);
                                                                lazyListMeasuredItem11.s = f13;
                                                                lazyListMeasuredItem11.u = lazyListMeasuredItem11.f + f13;
                                                            }
                                                        }
                                                        i30 = f13;
                                                        int i100 = g4;
                                                        lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.f();
                                                        if (lazyListMeasuredItem3 == null) {
                                                            i31 = lazyListMeasuredItem3.a;
                                                        } else {
                                                            i31 = 0;
                                                        }
                                                        lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.i();
                                                        if (lazyListMeasuredItem4 == null) {
                                                            i32 = lazyListMeasuredItem4.a;
                                                        } else {
                                                            i32 = 0;
                                                        }
                                                        ((LazyListItemProviderImpl) lazyListItemProvider).b.getClass();
                                                        ArrayList arrayList3 = arrayList;
                                                        List a5 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$12, i31, i32, arrayList3, IntListKt.a, i19, i100, i30, new defpackage.c(28, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1));
                                                        if (!z9) {
                                                            LazyListMeasuredItem lazyListMeasuredItem12 = (LazyListMeasuredItem) CollectionsKt.t(arrayList3);
                                                            if (lazyListMeasuredItem12 != null) {
                                                                valueOf = Integer.valueOf(lazyListMeasuredItem12.a);
                                                                if (!z9) {
                                                                    LazyListMeasuredItem lazyListMeasuredItem13 = (LazyListMeasuredItem) CollectionsKt.A(arrayList3);
                                                                    if (lazyListMeasuredItem13 != null) {
                                                                        valueOf2 = Integer.valueOf(lazyListMeasuredItem13.a);
                                                                        i33 = i28;
                                                                        if (i72 < i33 && i59 <= g2) {
                                                                            num = valueOf2;
                                                                            z11 = false;
                                                                        } else {
                                                                            num = valueOf2;
                                                                            z11 = true;
                                                                        }
                                                                        ha haVar = new ha(mutableState, arrayList3, a5, f0, 1);
                                                                        int g5 = ConstraintsKt.g(i100 + i38, j);
                                                                        int f14 = ConstraintsKt.f(i30 + y04, j);
                                                                        map = EmptyMap.j;
                                                                        MeasureResult B = subcomposeMeasureScope2.B(g5, f14, map, haVar);
                                                                        if (valueOf == null) {
                                                                            i34 = valueOf.intValue();
                                                                        } else {
                                                                            i34 = 0;
                                                                        }
                                                                        if (num == null) {
                                                                            i35 = num.intValue();
                                                                        } else {
                                                                            i35 = 0;
                                                                        }
                                                                        List a6 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList3, a5);
                                                                        float f15 = f6;
                                                                        Orientation orientation2 = Orientation.j;
                                                                        size = a5.size();
                                                                        int i101 = 0;
                                                                        for (i36 = 0; i36 < size; i36++) {
                                                                            i101 += ((LazyListMeasuredItem) a5.get(i36)).n;
                                                                        }
                                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f15, B, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i101, a6, i48, i56, i33, orientation2, i39, y05);
                                                                    }
                                                                    valueOf2 = null;
                                                                    i33 = i28;
                                                                    if (i72 < i33) {
                                                                    }
                                                                    num = valueOf2;
                                                                    z11 = true;
                                                                    ha haVar2 = new ha(mutableState, arrayList3, a5, f0, 1);
                                                                    int g52 = ConstraintsKt.g(i100 + i38, j);
                                                                    int f142 = ConstraintsKt.f(i30 + y04, j);
                                                                    map = EmptyMap.j;
                                                                    MeasureResult B2 = subcomposeMeasureScope2.B(g52, f142, map, haVar2);
                                                                    if (valueOf == null) {
                                                                    }
                                                                    if (num == null) {
                                                                    }
                                                                    List a62 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList3, a5);
                                                                    float f152 = f6;
                                                                    Orientation orientation22 = Orientation.j;
                                                                    size = a5.size();
                                                                    int i1012 = 0;
                                                                    while (i36 < size) {
                                                                    }
                                                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f152, B2, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i1012, a62, i48, i56, i33, orientation22, i39, y05);
                                                                } else {
                                                                    LazyListMeasuredItem lazyListMeasuredItem14 = (LazyListMeasuredItem) arrayDeque.i();
                                                                    if (lazyListMeasuredItem14 != null) {
                                                                        valueOf2 = Integer.valueOf(lazyListMeasuredItem14.a);
                                                                        i33 = i28;
                                                                        if (i72 < i33) {
                                                                        }
                                                                        num = valueOf2;
                                                                        z11 = true;
                                                                        ha haVar22 = new ha(mutableState, arrayList3, a5, f0, 1);
                                                                        int g522 = ConstraintsKt.g(i100 + i38, j);
                                                                        int f1422 = ConstraintsKt.f(i30 + y04, j);
                                                                        map = EmptyMap.j;
                                                                        MeasureResult B22 = subcomposeMeasureScope2.B(g522, f1422, map, haVar22);
                                                                        if (valueOf == null) {
                                                                        }
                                                                        if (num == null) {
                                                                        }
                                                                        List a622 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList3, a5);
                                                                        float f1522 = f6;
                                                                        Orientation orientation222 = Orientation.j;
                                                                        size = a5.size();
                                                                        int i10122 = 0;
                                                                        while (i36 < size) {
                                                                        }
                                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f1522, B22, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i10122, a622, i48, i56, i33, orientation222, i39, y05);
                                                                    }
                                                                    valueOf2 = null;
                                                                    i33 = i28;
                                                                    if (i72 < i33) {
                                                                    }
                                                                    num = valueOf2;
                                                                    z11 = true;
                                                                    ha haVar222 = new ha(mutableState, arrayList3, a5, f0, 1);
                                                                    int g5222 = ConstraintsKt.g(i100 + i38, j);
                                                                    int f14222 = ConstraintsKt.f(i30 + y04, j);
                                                                    map = EmptyMap.j;
                                                                    MeasureResult B222 = subcomposeMeasureScope2.B(g5222, f14222, map, haVar222);
                                                                    if (valueOf == null) {
                                                                    }
                                                                    if (num == null) {
                                                                    }
                                                                    List a6222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList3, a5);
                                                                    float f15222 = f6;
                                                                    Orientation orientation2222 = Orientation.j;
                                                                    size = a5.size();
                                                                    int i101222 = 0;
                                                                    while (i36 < size) {
                                                                    }
                                                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f15222, B222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i101222, a6222, i48, i56, i33, orientation2222, i39, y05);
                                                                }
                                                            }
                                                            valueOf = null;
                                                            if (!z9) {
                                                            }
                                                        } else {
                                                            LazyListMeasuredItem lazyListMeasuredItem15 = (LazyListMeasuredItem) arrayDeque.f();
                                                            if (lazyListMeasuredItem15 != null) {
                                                                valueOf = Integer.valueOf(lazyListMeasuredItem15.a);
                                                                if (!z9) {
                                                                }
                                                            }
                                                            valueOf = null;
                                                            if (!z9) {
                                                            }
                                                        }
                                                    }
                                                }
                                                i30 = f12;
                                                int i1002 = g4;
                                                lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.f();
                                                if (lazyListMeasuredItem3 == null) {
                                                }
                                                lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.i();
                                                if (lazyListMeasuredItem4 == null) {
                                                }
                                                ((LazyListItemProviderImpl) lazyListItemProvider).b.getClass();
                                                ArrayList arrayList32 = arrayList;
                                                List a52 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$12, i31, i32, arrayList32, IntListKt.a, i19, i1002, i30, new defpackage.c(28, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1));
                                                if (!z9) {
                                                }
                                            }
                                            LazyListMeasureResult lazyListMeasureResult2 = lazyListMeasureResult;
                                            LazyListState lazyListState6 = lazyListState4;
                                            lazyListState6.g(lazyListMeasureResult2, subcomposeMeasureScope.f0(), false);
                                            Object obj5 = lazyListState6.a;
                                            if (obj5 instanceof CacheWindowLogic) {
                                                cacheWindowLogic = (CacheWindowLogic) obj5;
                                            }
                                            CacheWindowLogic cacheWindowLogic2 = cacheWindowLogic;
                                            if (cacheWindowLogic2 != null) {
                                                List list8 = lazyListMeasureResult2.l;
                                                Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                                                try {
                                                    if (cacheWindowLogic2.b() && !list8.isEmpty()) {
                                                        int i102 = ((LazyListMeasuredItem) CollectionsKt.s(list8)).a;
                                                        int i103 = ((LazyListMeasuredItem) CollectionsKt.z(list8)).a;
                                                        int i104 = cacheWindowLogic2.h;
                                                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$14 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12;
                                                        while (true) {
                                                            lazyLayoutMeasureScopeImpl2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$14.c;
                                                            if (i104 >= i102) {
                                                                break;
                                                            }
                                                            if (i104 >= 0 && i104 < ((LazyListItemProviderImpl) lazyListItemProvider).b.e().b) {
                                                                lazyLayoutMeasureScopeImpl2.a(i104);
                                                            }
                                                            i104++;
                                                        }
                                                        int i105 = i103 + 1;
                                                        int i106 = cacheWindowLogic2.i;
                                                        if (i105 <= i106) {
                                                            while (true) {
                                                                if (i105 >= 0) {
                                                                    if (i105 < ((LazyListItemProviderImpl) lazyListItemProvider).b.e().b) {
                                                                        lazyLayoutMeasureScopeImpl2.a(i105);
                                                                    }
                                                                }
                                                                if (i105 == i106) {
                                                                    break;
                                                                }
                                                                i105++;
                                                            }
                                                        }
                                                    }
                                                    return lazyListMeasureResult2;
                                                } finally {
                                                    Trace.endSection();
                                                }
                                            }
                                            return lazyListMeasureResult2;
                                        } catch (Throwable th) {
                                            Snapshot.Companion.e(a, b, function12);
                                            throw th;
                                        }
                                    }
                                    throw q.C("null verticalArrangement when isVertical == true");
                                }
                            };
                            kProperty0 = kProperty02;
                            gapComposer2.g0(obj2);
                        } else {
                            obj2 = K5;
                            kProperty0 = kProperty02;
                            lazyLayoutSemanticState = lazyLayoutSemanticState2;
                            i7 = i15;
                            z4 = false;
                            lazyListState3 = lazyListState;
                        }
                        LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) obj2;
                        Orientation orientation = Orientation.j;
                        if (z) {
                            gapComposer2.W(-2077147368);
                            boolean d3 = (((((i10 & 14) ^ 6) <= 4 || !gapComposer2.f(lazyListState3)) && (i10 & 6) != 4) ? z4 ? 1 : 0 : true) | gapComposer2.d(z4 ? 1 : 0);
                            Object K6 = gapComposer2.K();
                            if (d3 || K6 == obj3) {
                                K6 = new LazyListBeyondBoundsState(lazyListState3);
                                gapComposer2.g0(K6);
                            }
                            modifier2 = LazyLayoutBeyondBoundsModifierLocalKt.a((LazyListBeyondBoundsState) K6, lazyListState3.p, orientation);
                            gapComposer2.p(z4);
                        } else {
                            gapComposer2.W(-2076718545);
                            gapComposer2.p(z4);
                            modifier2 = Modifier.Companion.b;
                        }
                        if (i7 == 32) {
                            z4 = true;
                        }
                        K = gapComposer2.K();
                        if (!z4 || K == obj3) {
                            K = new ka(lazyListState3, 1);
                            gapComposer2.g0(K);
                        }
                        lazyListState2 = lazyListState3;
                        gapComposer = gapComposer2;
                        LazyLayoutKt.a(kProperty0, ScrollableAreaKt.a(LazyLayoutItemAnimatorModifierKt.a(LazyLayoutSemanticsKt.a(modifier.l(lazyListState3.m).l(lazyListState3.n), kProperty0, lazyLayoutSemanticState, orientation, z).l(modifier2), lazyListState3.o), lazyListState3, orientation, overscrollEffect, z, flingBehavior, lazyListState3.g, LazyLayoutBringIntoViewSpecKt.a((Function0) K, gapComposer2, i13 & 126)), lazyListState2.q, lazyLayoutMeasurePolicy, gapComposer, 0);
                    }
                } else {
                    obj = null;
                }
                z3 = false;
                f = (((i17 & 234881024) ^ 100663296) <= 67108864 && gapComposer2.f(obj)) | d2 | z3 | ((((i17 & 1879048192) ^ 805306368) <= 536870912 && gapComposer2.f(vertical)) || (i17 & 805306368) == 536870912) | gapComposer2.f(graphicsContext) | gapComposer2.f(stickyItemsPlacement$Companion$StickToTopPlacement$1);
                Object K52 = gapComposer2.K();
                if (f) {
                }
                final StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$122 = stickyItemsPlacement$Companion$StickToTopPlacement$1;
                lazyListState3 = lazyListState;
                lazyLayoutSemanticState = lazyLayoutSemanticState2;
                i7 = i15;
                z4 = false;
                obj2 = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                    /* JADX WARN: Removed duplicated region for block: B:252:0x0645  */
                    /* JADX WARN: Removed duplicated region for block: B:255:0x0654  */
                    /* JADX WARN: Removed duplicated region for block: B:258:0x0681  */
                    /* JADX WARN: Removed duplicated region for block: B:262:0x06a3  */
                    /* JADX WARN: Removed duplicated region for block: B:267:0x06ca A[ADDED_TO_REGION] */
                    /* JADX WARN: Removed duplicated region for block: B:271:0x06fe  */
                    /* JADX WARN: Removed duplicated region for block: B:273:0x0706  */
                    /* JADX WARN: Removed duplicated region for block: B:276:0x071e A[LOOP:15: B:275:0x071c->B:276:0x071e, LOOP_END] */
                    /* JADX WARN: Removed duplicated region for block: B:279:0x070b  */
                    /* JADX WARN: Removed duplicated region for block: B:280:0x0703  */
                    /* JADX WARN: Removed duplicated region for block: B:283:0x06b9  */
                    /* JADX WARN: Removed duplicated region for block: B:287:0x0693  */
                    /* JADX WARN: Removed duplicated region for block: B:290:0x0659  */
                    /* JADX WARN: Removed duplicated region for block: B:291:0x064a  */
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                        boolean z8;
                        Function1 function12;
                        float f2;
                        LazyListState lazyListState4;
                        LazyListItemProvider lazyListItemProvider;
                        int i18;
                        long j2;
                        int i19;
                        int i20;
                        int i21;
                        int i22;
                        int i23;
                        int i24;
                        int i25;
                        float f3;
                        float f4;
                        int i26;
                        int i27;
                        LazyListMeasuredItem lazyListMeasuredItem;
                        int i28;
                        List list;
                        int i29;
                        float f5;
                        List list2;
                        List list3;
                        boolean z9;
                        boolean z10;
                        LazyListMeasuredItem lazyListMeasuredItem2;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                        ArrayList arrayList;
                        LazyLayoutItemAnimator lazyLayoutItemAnimator;
                        float f6;
                        int i30;
                        LazyListMeasuredItem lazyListMeasuredItem3;
                        int i31;
                        LazyListMeasuredItem lazyListMeasuredItem4;
                        int i32;
                        Integer valueOf;
                        Integer valueOf2;
                        int i33;
                        Integer num;
                        boolean z11;
                        Map map;
                        int i34;
                        int i35;
                        int size;
                        int i36;
                        SubcomposeMeasureScope subcomposeMeasureScope;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12;
                        LazyListMeasureResult lazyListMeasureResult;
                        int i37;
                        LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                        Map map2;
                        SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.k;
                        LazyListState lazyListState5 = LazyListState.this;
                        lazyListState5.t.getValue();
                        if (!lazyListState5.b && !subcomposeMeasureScope2.f0()) {
                            z8 = false;
                        } else {
                            z8 = true;
                        }
                        Orientation orientation2 = Orientation.j;
                        CheckScrollableContainerConstraintsKt.a(j, orientation2);
                        LayoutDirection layoutDirection = subcomposeMeasureScope2.getLayoutDirection();
                        PaddingValuesImpl paddingValuesImpl2 = paddingValuesImpl;
                        int y0 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b(layoutDirection));
                        int y02 = subcomposeMeasureScope2.y0(paddingValuesImpl2.c(subcomposeMeasureScope2.getLayoutDirection()));
                        int y03 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b);
                        int y04 = subcomposeMeasureScope2.y0(paddingValuesImpl2.d) + y03;
                        int i38 = y02 + y0;
                        int i39 = y04 - y03;
                        long i40 = ConstraintsKt.i(-i38, -y04, j);
                        LazyListItemProvider lazyListItemProvider2 = (LazyListItemProvider) kProperty02.a();
                        LazyItemScopeImpl lazyItemScopeImpl = ((LazyListItemProviderImpl) lazyListItemProvider2).c;
                        int h = Constraints.h(i40);
                        int g = Constraints.g(i40);
                        ((SnapshotMutableIntStateImpl) lazyItemScopeImpl.a).k(h);
                        ((SnapshotMutableIntStateImpl) lazyItemScopeImpl.b).k(g);
                        Arrangement.Vertical vertical2 = vertical;
                        if (vertical2 != null) {
                            int y05 = subcomposeMeasureScope2.y0(vertical2.a());
                            int i41 = ((LazyListItemProviderImpl) lazyListItemProvider2).b.e().b;
                            int g2 = Constraints.g(j) - y04;
                            int i42 = y03;
                            int i43 = i41;
                            LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13 = new LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(i40, lazyListItemProvider2, lazyLayoutMeasureScopeImpl, i43, y05, horizontal, i42, i39, (y0 << 32) | (y03 & 4294967295L), LazyListState.this);
                            Snapshot a = Snapshot.Companion.a();
                            CacheWindowLogic cacheWindowLogic = null;
                            if (a != null) {
                                function12 = a.e();
                            } else {
                                function12 = null;
                            }
                            Snapshot b = Snapshot.Companion.b(a);
                            try {
                                LazyListScrollPosition lazyListScrollPosition = lazyListState5.e;
                                int a2 = lazyListScrollPosition.a();
                                int a3 = LazyLayoutItemProviderKt.a(a2, lazyListItemProvider2, lazyListScrollPosition.d);
                                if (a2 != a3) {
                                    ((SnapshotMutableIntStateImpl) lazyListScrollPosition.a).k(a3);
                                    lazyListScrollPosition.e.b(a2);
                                }
                                int b2 = lazyListScrollPosition.b();
                                Snapshot.Companion.e(a, b, function12);
                                MutableIntList a4 = LazyLayoutBeyondBoundsStateKt.a(lazyListItemProvider2, lazyListState5.s, lazyListState5.p);
                                if (!subcomposeMeasureScope2.f0() && z8) {
                                    f2 = ((Number) ((SnapshotMutableStateImpl) lazyListState5.x.b.k).getValue()).floatValue();
                                } else {
                                    f2 = lazyListState5.h;
                                }
                                LazyLayoutItemAnimator lazyLayoutItemAnimator2 = lazyListState5.o;
                                boolean f0 = subcomposeMeasureScope2.f0();
                                MutableState mutableState = lazyListState5.w;
                                boolean z12 = lazyListState5.i;
                                if (i42 < 0) {
                                    InlineClassHelperKt.a("invalid beforeContentPadding");
                                }
                                if (i39 < 0) {
                                    InlineClassHelperKt.a("invalid afterContentPadding");
                                }
                                LazyListItemProvider lazyListItemProvider3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.b;
                                CoroutineScope coroutineScope2 = coroutineScope;
                                GraphicsContext graphicsContext2 = graphicsContext;
                                List list4 = EmptyList.j;
                                if (i43 <= 0) {
                                    int j3 = Constraints.j(i40);
                                    int i44 = Constraints.i(i40);
                                    lazyLayoutItemAnimator2.d(0, j3, i44, new ArrayList(), ((LazyListItemProviderImpl) lazyListItemProvider3).d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13, f0, 1, z8, 0, 0, coroutineScope2, graphicsContext2);
                                    if (!f0) {
                                        long b3 = lazyLayoutItemAnimator2.b();
                                        if (!IntSize.a(b3, 0L)) {
                                            j3 = ConstraintsKt.g((int) (b3 >> 32), i40);
                                            i44 = ConstraintsKt.f((int) (b3 & 4294967295L), i40);
                                        }
                                    }
                                    a7 a7Var = new a7(15);
                                    int g3 = ConstraintsKt.g(j3 + i38, j);
                                    int f7 = ConstraintsKt.f(i44 + y04, j);
                                    map2 = EmptyMap.j;
                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                    lazyListState4 = lazyListState5;
                                    lazyListItemProvider = lazyListItemProvider3;
                                    lazyListMeasureResult = new LazyListMeasureResult(null, 0, false, 0.0f, subcomposeMeasureScope2.B(g3, f7, map2, a7Var), 0.0f, false, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.d, 0, list4, -i42, g2 + i39, 0, orientation2, i39, y05);
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                } else {
                                    lazyListState4 = lazyListState5;
                                    int i45 = a3;
                                    lazyListItemProvider = lazyListItemProvider3;
                                    if (i45 >= i43) {
                                        i45 = i43 - 1;
                                        b2 = 0;
                                    }
                                    int round = Math.round(f2);
                                    int i46 = b2 - round;
                                    if (i45 == 0 && i46 < 0) {
                                        round += i46;
                                        i46 = 0;
                                    }
                                    float f8 = f2;
                                    ArrayDeque arrayDeque = new ArrayDeque();
                                    int i47 = i45;
                                    int i48 = -i42;
                                    if (y05 < 0) {
                                        i18 = y05;
                                    } else {
                                        i18 = 0;
                                    }
                                    int i49 = i48 + i18;
                                    int i50 = i46 + i49;
                                    int i51 = 0;
                                    while (true) {
                                        j2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.d;
                                        if (i50 >= 0 || i47 <= 0) {
                                            break;
                                        }
                                        int i52 = i47 - 1;
                                        LazyListMeasuredItem c = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i52, j2);
                                        arrayDeque.add(0, c);
                                        i51 = Math.max(i51, c.q);
                                        i50 += c.j();
                                        i47 = i52;
                                    }
                                    int i53 = 0;
                                    if (i50 < i49) {
                                        round -= i49 - i50;
                                        i50 = i49;
                                    }
                                    int i54 = round;
                                    int i55 = i50 - i49;
                                    int i56 = g2 + i39;
                                    if (i56 >= 0) {
                                        i53 = i56;
                                    }
                                    int i57 = i51;
                                    int i58 = i55;
                                    int i59 = -i55;
                                    int i60 = i47;
                                    int i61 = 0;
                                    boolean z13 = false;
                                    while (i61 < arrayDeque.l) {
                                        if (i59 >= i53) {
                                            arrayDeque.c(i61);
                                            z13 = true;
                                        } else {
                                            i60++;
                                            int j4 = ((LazyListMeasuredItem) arrayDeque.get(i61)).j() + i59;
                                            i61++;
                                            i59 = j4;
                                        }
                                    }
                                    int i62 = i57;
                                    boolean z14 = z13;
                                    int i63 = i60;
                                    while (i63 < i43 && (i59 < i53 || i59 <= 0 || arrayDeque.isEmpty())) {
                                        int i64 = i53;
                                        LazyListMeasuredItem c2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i63, j2);
                                        i59 = c2.j() + i59;
                                        if (i59 <= i49) {
                                            i37 = i49;
                                            if (i63 != i43 - 1) {
                                                i58 -= c2.j();
                                                i47 = i63 + 1;
                                                z14 = true;
                                                i63++;
                                                i53 = i64;
                                                i49 = i37;
                                            }
                                        } else {
                                            i37 = i49;
                                        }
                                        int max = Math.max(i62, c2.q);
                                        arrayDeque.addLast(c2);
                                        i62 = max;
                                        i63++;
                                        i53 = i64;
                                        i49 = i37;
                                    }
                                    if (i59 < g2) {
                                        int i65 = g2 - i59;
                                        i59 += i65;
                                        i21 = i62;
                                        i23 = i58 - i65;
                                        while (i23 < i42 && i47 > 0) {
                                            int i66 = i65;
                                            int i67 = i47 - 1;
                                            int i68 = i42;
                                            LazyListMeasuredItem c3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i67, j2);
                                            i47 = i67;
                                            arrayDeque.add(0, c3);
                                            i21 = Math.max(i21, c3.q);
                                            i23 += c3.j();
                                            i65 = i66;
                                            i42 = i68;
                                        }
                                        int i69 = i65;
                                        i19 = i42;
                                        i20 = i54;
                                        int i70 = i20 + i69;
                                        if (i23 < 0) {
                                            i59 += i23;
                                            i22 = i47;
                                            i24 = i70 + i23;
                                            i23 = 0;
                                        } else {
                                            i22 = i47;
                                            i24 = i70;
                                        }
                                    } else {
                                        i19 = i42;
                                        i20 = i54;
                                        i21 = i62;
                                        i22 = i47;
                                        i23 = i58;
                                        i24 = i20;
                                    }
                                    int i71 = i21;
                                    int i72 = i63;
                                    if (Integer.signum(Math.round(f8)) == Integer.signum(i24) && Math.abs(Math.round(f8)) >= Math.abs(i24)) {
                                        i25 = i24;
                                        f3 = i25;
                                    } else {
                                        i25 = i24;
                                        f3 = f8;
                                    }
                                    float f9 = f8 - f3;
                                    float f10 = 0.0f;
                                    if (f0 && i25 > i20 && f9 <= 0.0f) {
                                        f10 = (i25 - i20) + f9;
                                    }
                                    float f11 = f10;
                                    if (i23 < 0) {
                                        InlineClassHelperKt.a("negative currentFirstItemScrollOffset");
                                    }
                                    int i73 = -i23;
                                    LazyListMeasuredItem lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.first();
                                    if (i19 > 0 || y05 < 0) {
                                        f4 = f11;
                                        int b4 = arrayDeque.b();
                                        LazyListMeasuredItem lazyListMeasuredItem6 = lazyListMeasuredItem5;
                                        i26 = i73;
                                        int i74 = i23;
                                        int i75 = 0;
                                        while (i75 < b4) {
                                            int i76 = b4;
                                            int j5 = ((LazyListMeasuredItem) arrayDeque.get(i75)).j();
                                            if (i74 == 0 || j5 > i74 || i75 == arrayDeque.b() - 1) {
                                                break;
                                            }
                                            i74 -= j5;
                                            i75++;
                                            lazyListMeasuredItem6 = (LazyListMeasuredItem) arrayDeque.get(i75);
                                            b4 = i76;
                                        }
                                        i27 = i74;
                                        lazyListMeasuredItem = lazyListMeasuredItem6;
                                    } else {
                                        f4 = f11;
                                        i27 = i23;
                                        lazyListMeasuredItem = lazyListMeasuredItem5;
                                        i26 = i73;
                                    }
                                    int max2 = Math.max(0, i22);
                                    int i77 = i22 - 1;
                                    if (max2 <= i77) {
                                        List list5 = null;
                                        while (true) {
                                            if (list5 == null) {
                                                list5 = new ArrayList();
                                            }
                                            i28 = i43;
                                            list = list5;
                                            list.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i77, j2));
                                            if (i77 == max2) {
                                                break;
                                            }
                                            i77--;
                                            list5 = list;
                                            i43 = i28;
                                        }
                                    } else {
                                        i28 = i43;
                                        list = null;
                                    }
                                    int[] iArr = a4.a;
                                    for (int i78 = a4.b - 1; -1 < i78; i78--) {
                                        int i79 = iArr[i78];
                                        if (i79 < max2) {
                                            if (list == null) {
                                                list = new ArrayList();
                                            }
                                            list.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i79, j2));
                                        }
                                    }
                                    if (list == null) {
                                        list = list4;
                                    }
                                    int i80 = i71;
                                    int i81 = 0;
                                    for (int size2 = list.size(); i81 < size2; size2 = size2) {
                                        i80 = Math.max(i80, ((LazyListMeasuredItem) list.get(i81)).q);
                                        i81++;
                                    }
                                    int min = Math.min(((LazyListMeasuredItem) CollectionsKt.z(arrayDeque)).a, i28 - 1);
                                    int i82 = ((LazyListMeasuredItem) CollectionsKt.z(arrayDeque)).a + 1;
                                    if (i82 <= min) {
                                        List list6 = null;
                                        while (true) {
                                            if (list6 == null) {
                                                list6 = new ArrayList();
                                            }
                                            i29 = i80;
                                            f5 = f3;
                                            list2 = list6;
                                            list2.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i82, j2));
                                            if (i82 == min) {
                                                break;
                                            }
                                            i82++;
                                            list6 = list2;
                                            i80 = i29;
                                            f3 = f5;
                                        }
                                    } else {
                                        i29 = i80;
                                        f5 = f3;
                                        list2 = null;
                                    }
                                    if (list2 != null && ((LazyListMeasuredItem) CollectionsKt.z(list2)).a > min) {
                                        min = ((LazyListMeasuredItem) CollectionsKt.z(list2)).a;
                                    }
                                    int[] iArr2 = a4.a;
                                    int i83 = a4.b;
                                    List list7 = list2;
                                    int i84 = 0;
                                    while (i84 < i83) {
                                        int i85 = i83;
                                        int i86 = iArr2[i84];
                                        if (i86 > min) {
                                            if (list7 == null) {
                                                list7 = new ArrayList();
                                            }
                                            list7.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i86, j2));
                                        }
                                        i84++;
                                        i83 = i85;
                                    }
                                    if (list7 == null) {
                                        list3 = list4;
                                    } else {
                                        list3 = list7;
                                    }
                                    int size3 = list3.size();
                                    int i87 = i29;
                                    for (int i88 = 0; i88 < size3; i88++) {
                                        i87 = Math.max(i87, ((LazyListMeasuredItem) list3.get(i88)).q);
                                    }
                                    if (Intrinsics.a(lazyListMeasuredItem, arrayDeque.first()) && list.isEmpty() && list3.isEmpty()) {
                                        z9 = true;
                                    } else {
                                        z9 = false;
                                    }
                                    int g4 = ConstraintsKt.g(i87, i40);
                                    int f12 = ConstraintsKt.f(i59, i40);
                                    if (i59 < Math.min(f12, g2)) {
                                        z10 = true;
                                    } else {
                                        z10 = false;
                                    }
                                    if (z10 && i26 != 0) {
                                        InlineClassHelperKt.c("non-zero itemsScrollOffset");
                                    }
                                    ArrayList arrayList2 = new ArrayList(list3.size() + list.size() + arrayDeque.b());
                                    if (z10) {
                                        if (!list.isEmpty() || !list3.isEmpty()) {
                                            InlineClassHelperKt.a("no extra items");
                                        }
                                        int b5 = arrayDeque.b();
                                        int[] iArr3 = new int[b5];
                                        for (int i89 = 0; i89 < b5; i89++) {
                                            iArr3[i89] = ((LazyListMeasuredItem) arrayDeque.get(i89)).n;
                                        }
                                        int[] iArr4 = new int[b5];
                                        if (vertical2 != null) {
                                            vertical2.b(f12, lazyLayoutMeasureScopeImpl, iArr3, iArr4);
                                            IntRange r = ArraysKt.r(iArr4);
                                            int i90 = r.k;
                                            int i91 = r.l;
                                            if ((i91 > 0 && i90 >= 0) || (i91 < 0 && i90 <= 0)) {
                                                lazyListMeasuredItem2 = lazyListMeasuredItem;
                                                int i92 = 0;
                                                while (true) {
                                                    int i93 = iArr4[i92];
                                                    LazyListMeasuredItem lazyListMeasuredItem7 = (LazyListMeasuredItem) arrayDeque.get(i92);
                                                    lazyListMeasuredItem7.l(i93, g4, f12);
                                                    arrayList2.add(lazyListMeasuredItem7);
                                                    if (i92 == i90) {
                                                        break;
                                                    }
                                                    i92 += i91;
                                                }
                                            } else {
                                                lazyListMeasuredItem2 = lazyListMeasuredItem;
                                            }
                                        } else {
                                            throw q.C("null verticalArrangement when isVertical == true");
                                        }
                                    } else {
                                        lazyListMeasuredItem2 = lazyListMeasuredItem;
                                        int size4 = list.size();
                                        int i94 = i26;
                                        for (int i95 = 0; i95 < size4; i95++) {
                                            LazyListMeasuredItem lazyListMeasuredItem8 = (LazyListMeasuredItem) list.get(i95);
                                            i94 -= lazyListMeasuredItem8.j();
                                            lazyListMeasuredItem8.l(i94, g4, f12);
                                            arrayList2.add(lazyListMeasuredItem8);
                                        }
                                        int b6 = arrayDeque.b();
                                        int i96 = i26;
                                        for (int i97 = 0; i97 < b6; i97++) {
                                            LazyListMeasuredItem lazyListMeasuredItem9 = (LazyListMeasuredItem) arrayDeque.get(i97);
                                            lazyListMeasuredItem9.l(i96, g4, f12);
                                            arrayList2.add(lazyListMeasuredItem9);
                                            i96 += lazyListMeasuredItem9.j();
                                        }
                                        int size5 = list3.size();
                                        for (int i98 = 0; i98 < size5; i98++) {
                                            LazyListMeasuredItem lazyListMeasuredItem10 = (LazyListMeasuredItem) list3.get(i98);
                                            lazyListMeasuredItem10.l(i96, g4, f12);
                                            arrayList2.add(lazyListMeasuredItem10);
                                            i96 += lazyListMeasuredItem10.j();
                                        }
                                    }
                                    if (!z12) {
                                        f6 = f5;
                                        lazyLayoutItemAnimator = lazyLayoutItemAnimator2;
                                        lazyLayoutItemAnimator.d((int) f6, g4, f12, arrayList2, ((LazyListItemProviderImpl) lazyListItemProvider).d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13, f0, 1, z8, i27, i59, coroutineScope2, graphicsContext2);
                                        arrayList = arrayList2;
                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                    } else {
                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                        arrayList = arrayList2;
                                        lazyLayoutItemAnimator = lazyLayoutItemAnimator2;
                                        f6 = f5;
                                    }
                                    if (!f0) {
                                        long b7 = lazyLayoutItemAnimator.b();
                                        if (!IntSize.a(b7, 0L)) {
                                            g4 = ConstraintsKt.g(Math.max(g4, (int) (b7 >> 32)), i40);
                                            int f13 = ConstraintsKt.f(Math.max(f12, (int) (b7 & 4294967295L)), i40);
                                            if (f13 != f12) {
                                                int size6 = arrayList.size();
                                                for (int i99 = 0; i99 < size6; i99++) {
                                                    LazyListMeasuredItem lazyListMeasuredItem11 = (LazyListMeasuredItem) arrayList.get(i99);
                                                    lazyListMeasuredItem11.s = f13;
                                                    lazyListMeasuredItem11.u = lazyListMeasuredItem11.f + f13;
                                                }
                                            }
                                            i30 = f13;
                                            int i1002 = g4;
                                            lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.f();
                                            if (lazyListMeasuredItem3 == null) {
                                                i31 = lazyListMeasuredItem3.a;
                                            } else {
                                                i31 = 0;
                                            }
                                            lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.i();
                                            if (lazyListMeasuredItem4 == null) {
                                                i32 = lazyListMeasuredItem4.a;
                                            } else {
                                                i32 = 0;
                                            }
                                            ((LazyListItemProviderImpl) lazyListItemProvider).b.getClass();
                                            ArrayList arrayList32 = arrayList;
                                            List a52 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$122, i31, i32, arrayList32, IntListKt.a, i19, i1002, i30, new defpackage.c(28, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1));
                                            if (!z9) {
                                                LazyListMeasuredItem lazyListMeasuredItem12 = (LazyListMeasuredItem) CollectionsKt.t(arrayList32);
                                                if (lazyListMeasuredItem12 != null) {
                                                    valueOf = Integer.valueOf(lazyListMeasuredItem12.a);
                                                    if (!z9) {
                                                        LazyListMeasuredItem lazyListMeasuredItem13 = (LazyListMeasuredItem) CollectionsKt.A(arrayList32);
                                                        if (lazyListMeasuredItem13 != null) {
                                                            valueOf2 = Integer.valueOf(lazyListMeasuredItem13.a);
                                                            i33 = i28;
                                                            if (i72 < i33 && i59 <= g2) {
                                                                num = valueOf2;
                                                                z11 = false;
                                                            } else {
                                                                num = valueOf2;
                                                                z11 = true;
                                                            }
                                                            ha haVar222 = new ha(mutableState, arrayList32, a52, f0, 1);
                                                            int g5222 = ConstraintsKt.g(i1002 + i38, j);
                                                            int f14222 = ConstraintsKt.f(i30 + y04, j);
                                                            map = EmptyMap.j;
                                                            MeasureResult B222 = subcomposeMeasureScope2.B(g5222, f14222, map, haVar222);
                                                            if (valueOf == null) {
                                                                i34 = valueOf.intValue();
                                                            } else {
                                                                i34 = 0;
                                                            }
                                                            if (num == null) {
                                                                i35 = num.intValue();
                                                            } else {
                                                                i35 = 0;
                                                            }
                                                            List a6222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList32, a52);
                                                            float f15222 = f6;
                                                            Orientation orientation2222 = Orientation.j;
                                                            size = a52.size();
                                                            int i101222 = 0;
                                                            for (i36 = 0; i36 < size; i36++) {
                                                                i101222 += ((LazyListMeasuredItem) a52.get(i36)).n;
                                                            }
                                                            subcomposeMeasureScope = subcomposeMeasureScope2;
                                                            lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                            lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f15222, B222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i101222, a6222, i48, i56, i33, orientation2222, i39, y05);
                                                        }
                                                        valueOf2 = null;
                                                        i33 = i28;
                                                        if (i72 < i33) {
                                                        }
                                                        num = valueOf2;
                                                        z11 = true;
                                                        ha haVar2222 = new ha(mutableState, arrayList32, a52, f0, 1);
                                                        int g52222 = ConstraintsKt.g(i1002 + i38, j);
                                                        int f142222 = ConstraintsKt.f(i30 + y04, j);
                                                        map = EmptyMap.j;
                                                        MeasureResult B2222 = subcomposeMeasureScope2.B(g52222, f142222, map, haVar2222);
                                                        if (valueOf == null) {
                                                        }
                                                        if (num == null) {
                                                        }
                                                        List a62222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList32, a52);
                                                        float f152222 = f6;
                                                        Orientation orientation22222 = Orientation.j;
                                                        size = a52.size();
                                                        int i1012222 = 0;
                                                        while (i36 < size) {
                                                        }
                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f152222, B2222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i1012222, a62222, i48, i56, i33, orientation22222, i39, y05);
                                                    } else {
                                                        LazyListMeasuredItem lazyListMeasuredItem14 = (LazyListMeasuredItem) arrayDeque.i();
                                                        if (lazyListMeasuredItem14 != null) {
                                                            valueOf2 = Integer.valueOf(lazyListMeasuredItem14.a);
                                                            i33 = i28;
                                                            if (i72 < i33) {
                                                            }
                                                            num = valueOf2;
                                                            z11 = true;
                                                            ha haVar22222 = new ha(mutableState, arrayList32, a52, f0, 1);
                                                            int g522222 = ConstraintsKt.g(i1002 + i38, j);
                                                            int f1422222 = ConstraintsKt.f(i30 + y04, j);
                                                            map = EmptyMap.j;
                                                            MeasureResult B22222 = subcomposeMeasureScope2.B(g522222, f1422222, map, haVar22222);
                                                            if (valueOf == null) {
                                                            }
                                                            if (num == null) {
                                                            }
                                                            List a622222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList32, a52);
                                                            float f1522222 = f6;
                                                            Orientation orientation222222 = Orientation.j;
                                                            size = a52.size();
                                                            int i10122222 = 0;
                                                            while (i36 < size) {
                                                            }
                                                            subcomposeMeasureScope = subcomposeMeasureScope2;
                                                            lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                            lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f1522222, B22222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i10122222, a622222, i48, i56, i33, orientation222222, i39, y05);
                                                        }
                                                        valueOf2 = null;
                                                        i33 = i28;
                                                        if (i72 < i33) {
                                                        }
                                                        num = valueOf2;
                                                        z11 = true;
                                                        ha haVar222222 = new ha(mutableState, arrayList32, a52, f0, 1);
                                                        int g5222222 = ConstraintsKt.g(i1002 + i38, j);
                                                        int f14222222 = ConstraintsKt.f(i30 + y04, j);
                                                        map = EmptyMap.j;
                                                        MeasureResult B222222 = subcomposeMeasureScope2.B(g5222222, f14222222, map, haVar222222);
                                                        if (valueOf == null) {
                                                        }
                                                        if (num == null) {
                                                        }
                                                        List a6222222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList32, a52);
                                                        float f15222222 = f6;
                                                        Orientation orientation2222222 = Orientation.j;
                                                        size = a52.size();
                                                        int i101222222 = 0;
                                                        while (i36 < size) {
                                                        }
                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f15222222, B222222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i101222222, a6222222, i48, i56, i33, orientation2222222, i39, y05);
                                                    }
                                                }
                                                valueOf = null;
                                                if (!z9) {
                                                }
                                            } else {
                                                LazyListMeasuredItem lazyListMeasuredItem15 = (LazyListMeasuredItem) arrayDeque.f();
                                                if (lazyListMeasuredItem15 != null) {
                                                    valueOf = Integer.valueOf(lazyListMeasuredItem15.a);
                                                    if (!z9) {
                                                    }
                                                }
                                                valueOf = null;
                                                if (!z9) {
                                                }
                                            }
                                        }
                                    }
                                    i30 = f12;
                                    int i10022 = g4;
                                    lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.f();
                                    if (lazyListMeasuredItem3 == null) {
                                    }
                                    lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.i();
                                    if (lazyListMeasuredItem4 == null) {
                                    }
                                    ((LazyListItemProviderImpl) lazyListItemProvider).b.getClass();
                                    ArrayList arrayList322 = arrayList;
                                    List a522 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$122, i31, i32, arrayList322, IntListKt.a, i19, i10022, i30, new defpackage.c(28, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1));
                                    if (!z9) {
                                    }
                                }
                                LazyListMeasureResult lazyListMeasureResult2 = lazyListMeasureResult;
                                LazyListState lazyListState6 = lazyListState4;
                                lazyListState6.g(lazyListMeasureResult2, subcomposeMeasureScope.f0(), false);
                                Object obj5 = lazyListState6.a;
                                if (obj5 instanceof CacheWindowLogic) {
                                    cacheWindowLogic = (CacheWindowLogic) obj5;
                                }
                                CacheWindowLogic cacheWindowLogic2 = cacheWindowLogic;
                                if (cacheWindowLogic2 != null) {
                                    List list8 = lazyListMeasureResult2.l;
                                    Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                                    try {
                                        if (cacheWindowLogic2.b() && !list8.isEmpty()) {
                                            int i102 = ((LazyListMeasuredItem) CollectionsKt.s(list8)).a;
                                            int i103 = ((LazyListMeasuredItem) CollectionsKt.z(list8)).a;
                                            int i104 = cacheWindowLogic2.h;
                                            LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$14 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12;
                                            while (true) {
                                                lazyLayoutMeasureScopeImpl2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$14.c;
                                                if (i104 >= i102) {
                                                    break;
                                                }
                                                if (i104 >= 0 && i104 < ((LazyListItemProviderImpl) lazyListItemProvider).b.e().b) {
                                                    lazyLayoutMeasureScopeImpl2.a(i104);
                                                }
                                                i104++;
                                            }
                                            int i105 = i103 + 1;
                                            int i106 = cacheWindowLogic2.i;
                                            if (i105 <= i106) {
                                                while (true) {
                                                    if (i105 >= 0) {
                                                        if (i105 < ((LazyListItemProviderImpl) lazyListItemProvider).b.e().b) {
                                                            lazyLayoutMeasureScopeImpl2.a(i105);
                                                        }
                                                    }
                                                    if (i105 == i106) {
                                                        break;
                                                    }
                                                    i105++;
                                                }
                                            }
                                        }
                                        return lazyListMeasureResult2;
                                    } finally {
                                        Trace.endSection();
                                    }
                                }
                                return lazyListMeasureResult2;
                            } catch (Throwable th) {
                                Snapshot.Companion.e(a, b, function12);
                                throw th;
                            }
                        }
                        throw q.C("null verticalArrangement when isVertical == true");
                    }
                };
                kProperty0 = kProperty02;
                gapComposer2.g0(obj2);
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) obj2;
                Orientation orientation2 = Orientation.j;
                if (z) {
                }
                if (i7 == 32) {
                }
                K = gapComposer2.K();
                if (!z4) {
                }
                K = new ka(lazyListState3, 1);
                gapComposer2.g0(K);
                lazyListState2 = lazyListState3;
                gapComposer = gapComposer2;
                LazyLayoutKt.a(kProperty0, ScrollableAreaKt.a(LazyLayoutItemAnimatorModifierKt.a(LazyLayoutSemanticsKt.a(modifier.l(lazyListState3.m).l(lazyListState3.n), kProperty0, lazyLayoutSemanticState, orientation2, z).l(modifier2), lazyListState3.o), lazyListState3, orientation2, overscrollEffect, z, flingBehavior, lazyListState3.g, LazyLayoutBringIntoViewSpecKt.a((Function0) K, gapComposer2, i13 & 126)), lazyListState2.q, lazyLayoutMeasurePolicy2, gapComposer, 0);
            }
            z2 = true;
            boolean d22 = z7 | z2 | gapComposer2.d(0) | ((((i17 & 3670016) ^ 1572864) <= 1048576 && gapComposer2.f(horizontal)) || (i17 & 1572864) == 1048576);
            if (((i17 & 29360128) ^ 12582912) <= 8388608) {
            }
            z3 = false;
            f = (((i17 & 234881024) ^ 100663296) <= 67108864 && gapComposer2.f(obj)) | d22 | z3 | ((((i17 & 1879048192) ^ 805306368) <= 536870912 && gapComposer2.f(vertical)) || (i17 & 805306368) == 536870912) | gapComposer2.f(graphicsContext) | gapComposer2.f(stickyItemsPlacement$Companion$StickToTopPlacement$1);
            Object K522 = gapComposer2.K();
            if (f) {
            }
            final StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$1222 = stickyItemsPlacement$Companion$StickToTopPlacement$1;
            lazyListState3 = lazyListState;
            lazyLayoutSemanticState = lazyLayoutSemanticState2;
            i7 = i15;
            z4 = false;
            obj2 = new LazyLayoutMeasurePolicy() { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1
                /* JADX WARN: Removed duplicated region for block: B:252:0x0645  */
                /* JADX WARN: Removed duplicated region for block: B:255:0x0654  */
                /* JADX WARN: Removed duplicated region for block: B:258:0x0681  */
                /* JADX WARN: Removed duplicated region for block: B:262:0x06a3  */
                /* JADX WARN: Removed duplicated region for block: B:267:0x06ca A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:271:0x06fe  */
                /* JADX WARN: Removed duplicated region for block: B:273:0x0706  */
                /* JADX WARN: Removed duplicated region for block: B:276:0x071e A[LOOP:15: B:275:0x071c->B:276:0x071e, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:279:0x070b  */
                /* JADX WARN: Removed duplicated region for block: B:280:0x0703  */
                /* JADX WARN: Removed duplicated region for block: B:283:0x06b9  */
                /* JADX WARN: Removed duplicated region for block: B:287:0x0693  */
                /* JADX WARN: Removed duplicated region for block: B:290:0x0659  */
                /* JADX WARN: Removed duplicated region for block: B:291:0x064a  */
                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                    boolean z8;
                    Function1 function12;
                    float f2;
                    LazyListState lazyListState4;
                    LazyListItemProvider lazyListItemProvider;
                    int i18;
                    long j2;
                    int i19;
                    int i20;
                    int i21;
                    int i22;
                    int i23;
                    int i24;
                    int i25;
                    float f3;
                    float f4;
                    int i26;
                    int i27;
                    LazyListMeasuredItem lazyListMeasuredItem;
                    int i28;
                    List list;
                    int i29;
                    float f5;
                    List list2;
                    List list3;
                    boolean z9;
                    boolean z10;
                    LazyListMeasuredItem lazyListMeasuredItem2;
                    LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                    ArrayList arrayList;
                    LazyLayoutItemAnimator lazyLayoutItemAnimator;
                    float f6;
                    int i30;
                    LazyListMeasuredItem lazyListMeasuredItem3;
                    int i31;
                    LazyListMeasuredItem lazyListMeasuredItem4;
                    int i32;
                    Integer valueOf;
                    Integer valueOf2;
                    int i33;
                    Integer num;
                    boolean z11;
                    Map map;
                    int i34;
                    int i35;
                    int size;
                    int i36;
                    SubcomposeMeasureScope subcomposeMeasureScope;
                    LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12;
                    LazyListMeasureResult lazyListMeasureResult;
                    int i37;
                    LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl2;
                    Map map2;
                    SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.k;
                    LazyListState lazyListState5 = LazyListState.this;
                    lazyListState5.t.getValue();
                    if (!lazyListState5.b && !subcomposeMeasureScope2.f0()) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    Orientation orientation22 = Orientation.j;
                    CheckScrollableContainerConstraintsKt.a(j, orientation22);
                    LayoutDirection layoutDirection = subcomposeMeasureScope2.getLayoutDirection();
                    PaddingValuesImpl paddingValuesImpl2 = paddingValuesImpl;
                    int y0 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b(layoutDirection));
                    int y02 = subcomposeMeasureScope2.y0(paddingValuesImpl2.c(subcomposeMeasureScope2.getLayoutDirection()));
                    int y03 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b);
                    int y04 = subcomposeMeasureScope2.y0(paddingValuesImpl2.d) + y03;
                    int i38 = y02 + y0;
                    int i39 = y04 - y03;
                    long i40 = ConstraintsKt.i(-i38, -y04, j);
                    LazyListItemProvider lazyListItemProvider2 = (LazyListItemProvider) kProperty02.a();
                    LazyItemScopeImpl lazyItemScopeImpl = ((LazyListItemProviderImpl) lazyListItemProvider2).c;
                    int h = Constraints.h(i40);
                    int g = Constraints.g(i40);
                    ((SnapshotMutableIntStateImpl) lazyItemScopeImpl.a).k(h);
                    ((SnapshotMutableIntStateImpl) lazyItemScopeImpl.b).k(g);
                    Arrangement.Vertical vertical2 = vertical;
                    if (vertical2 != null) {
                        int y05 = subcomposeMeasureScope2.y0(vertical2.a());
                        int i41 = ((LazyListItemProviderImpl) lazyListItemProvider2).b.e().b;
                        int g2 = Constraints.g(j) - y04;
                        int i42 = y03;
                        int i43 = i41;
                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13 = new LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1(i40, lazyListItemProvider2, lazyLayoutMeasureScopeImpl, i43, y05, horizontal, i42, i39, (y0 << 32) | (y03 & 4294967295L), LazyListState.this);
                        Snapshot a = Snapshot.Companion.a();
                        CacheWindowLogic cacheWindowLogic = null;
                        if (a != null) {
                            function12 = a.e();
                        } else {
                            function12 = null;
                        }
                        Snapshot b = Snapshot.Companion.b(a);
                        try {
                            LazyListScrollPosition lazyListScrollPosition = lazyListState5.e;
                            int a2 = lazyListScrollPosition.a();
                            int a3 = LazyLayoutItemProviderKt.a(a2, lazyListItemProvider2, lazyListScrollPosition.d);
                            if (a2 != a3) {
                                ((SnapshotMutableIntStateImpl) lazyListScrollPosition.a).k(a3);
                                lazyListScrollPosition.e.b(a2);
                            }
                            int b2 = lazyListScrollPosition.b();
                            Snapshot.Companion.e(a, b, function12);
                            MutableIntList a4 = LazyLayoutBeyondBoundsStateKt.a(lazyListItemProvider2, lazyListState5.s, lazyListState5.p);
                            if (!subcomposeMeasureScope2.f0() && z8) {
                                f2 = ((Number) ((SnapshotMutableStateImpl) lazyListState5.x.b.k).getValue()).floatValue();
                            } else {
                                f2 = lazyListState5.h;
                            }
                            LazyLayoutItemAnimator lazyLayoutItemAnimator2 = lazyListState5.o;
                            boolean f0 = subcomposeMeasureScope2.f0();
                            MutableState mutableState = lazyListState5.w;
                            boolean z12 = lazyListState5.i;
                            if (i42 < 0) {
                                InlineClassHelperKt.a("invalid beforeContentPadding");
                            }
                            if (i39 < 0) {
                                InlineClassHelperKt.a("invalid afterContentPadding");
                            }
                            LazyListItemProvider lazyListItemProvider3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.b;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            GraphicsContext graphicsContext2 = graphicsContext;
                            List list4 = EmptyList.j;
                            if (i43 <= 0) {
                                int j3 = Constraints.j(i40);
                                int i44 = Constraints.i(i40);
                                lazyLayoutItemAnimator2.d(0, j3, i44, new ArrayList(), ((LazyListItemProviderImpl) lazyListItemProvider3).d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13, f0, 1, z8, 0, 0, coroutineScope2, graphicsContext2);
                                if (!f0) {
                                    long b3 = lazyLayoutItemAnimator2.b();
                                    if (!IntSize.a(b3, 0L)) {
                                        j3 = ConstraintsKt.g((int) (b3 >> 32), i40);
                                        i44 = ConstraintsKt.f((int) (b3 & 4294967295L), i40);
                                    }
                                }
                                a7 a7Var = new a7(15);
                                int g3 = ConstraintsKt.g(j3 + i38, j);
                                int f7 = ConstraintsKt.f(i44 + y04, j);
                                map2 = EmptyMap.j;
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyListState4 = lazyListState5;
                                lazyListItemProvider = lazyListItemProvider3;
                                lazyListMeasureResult = new LazyListMeasureResult(null, 0, false, 0.0f, subcomposeMeasureScope2.B(g3, f7, map2, a7Var), 0.0f, false, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.d, 0, list4, -i42, g2 + i39, 0, orientation22, i39, y05);
                                lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                            } else {
                                lazyListState4 = lazyListState5;
                                int i45 = a3;
                                lazyListItemProvider = lazyListItemProvider3;
                                if (i45 >= i43) {
                                    i45 = i43 - 1;
                                    b2 = 0;
                                }
                                int round = Math.round(f2);
                                int i46 = b2 - round;
                                if (i45 == 0 && i46 < 0) {
                                    round += i46;
                                    i46 = 0;
                                }
                                float f8 = f2;
                                ArrayDeque arrayDeque = new ArrayDeque();
                                int i47 = i45;
                                int i48 = -i42;
                                if (y05 < 0) {
                                    i18 = y05;
                                } else {
                                    i18 = 0;
                                }
                                int i49 = i48 + i18;
                                int i50 = i46 + i49;
                                int i51 = 0;
                                while (true) {
                                    j2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.d;
                                    if (i50 >= 0 || i47 <= 0) {
                                        break;
                                    }
                                    int i52 = i47 - 1;
                                    LazyListMeasuredItem c = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i52, j2);
                                    arrayDeque.add(0, c);
                                    i51 = Math.max(i51, c.q);
                                    i50 += c.j();
                                    i47 = i52;
                                }
                                int i53 = 0;
                                if (i50 < i49) {
                                    round -= i49 - i50;
                                    i50 = i49;
                                }
                                int i54 = round;
                                int i55 = i50 - i49;
                                int i56 = g2 + i39;
                                if (i56 >= 0) {
                                    i53 = i56;
                                }
                                int i57 = i51;
                                int i58 = i55;
                                int i59 = -i55;
                                int i60 = i47;
                                int i61 = 0;
                                boolean z13 = false;
                                while (i61 < arrayDeque.l) {
                                    if (i59 >= i53) {
                                        arrayDeque.c(i61);
                                        z13 = true;
                                    } else {
                                        i60++;
                                        int j4 = ((LazyListMeasuredItem) arrayDeque.get(i61)).j() + i59;
                                        i61++;
                                        i59 = j4;
                                    }
                                }
                                int i62 = i57;
                                boolean z14 = z13;
                                int i63 = i60;
                                while (i63 < i43 && (i59 < i53 || i59 <= 0 || arrayDeque.isEmpty())) {
                                    int i64 = i53;
                                    LazyListMeasuredItem c2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i63, j2);
                                    i59 = c2.j() + i59;
                                    if (i59 <= i49) {
                                        i37 = i49;
                                        if (i63 != i43 - 1) {
                                            i58 -= c2.j();
                                            i47 = i63 + 1;
                                            z14 = true;
                                            i63++;
                                            i53 = i64;
                                            i49 = i37;
                                        }
                                    } else {
                                        i37 = i49;
                                    }
                                    int max = Math.max(i62, c2.q);
                                    arrayDeque.addLast(c2);
                                    i62 = max;
                                    i63++;
                                    i53 = i64;
                                    i49 = i37;
                                }
                                if (i59 < g2) {
                                    int i65 = g2 - i59;
                                    i59 += i65;
                                    i21 = i62;
                                    i23 = i58 - i65;
                                    while (i23 < i42 && i47 > 0) {
                                        int i66 = i65;
                                        int i67 = i47 - 1;
                                        int i68 = i42;
                                        LazyListMeasuredItem c3 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i67, j2);
                                        i47 = i67;
                                        arrayDeque.add(0, c3);
                                        i21 = Math.max(i21, c3.q);
                                        i23 += c3.j();
                                        i65 = i66;
                                        i42 = i68;
                                    }
                                    int i69 = i65;
                                    i19 = i42;
                                    i20 = i54;
                                    int i70 = i20 + i69;
                                    if (i23 < 0) {
                                        i59 += i23;
                                        i22 = i47;
                                        i24 = i70 + i23;
                                        i23 = 0;
                                    } else {
                                        i22 = i47;
                                        i24 = i70;
                                    }
                                } else {
                                    i19 = i42;
                                    i20 = i54;
                                    i21 = i62;
                                    i22 = i47;
                                    i23 = i58;
                                    i24 = i20;
                                }
                                int i71 = i21;
                                int i72 = i63;
                                if (Integer.signum(Math.round(f8)) == Integer.signum(i24) && Math.abs(Math.round(f8)) >= Math.abs(i24)) {
                                    i25 = i24;
                                    f3 = i25;
                                } else {
                                    i25 = i24;
                                    f3 = f8;
                                }
                                float f9 = f8 - f3;
                                float f10 = 0.0f;
                                if (f0 && i25 > i20 && f9 <= 0.0f) {
                                    f10 = (i25 - i20) + f9;
                                }
                                float f11 = f10;
                                if (i23 < 0) {
                                    InlineClassHelperKt.a("negative currentFirstItemScrollOffset");
                                }
                                int i73 = -i23;
                                LazyListMeasuredItem lazyListMeasuredItem5 = (LazyListMeasuredItem) arrayDeque.first();
                                if (i19 > 0 || y05 < 0) {
                                    f4 = f11;
                                    int b4 = arrayDeque.b();
                                    LazyListMeasuredItem lazyListMeasuredItem6 = lazyListMeasuredItem5;
                                    i26 = i73;
                                    int i74 = i23;
                                    int i75 = 0;
                                    while (i75 < b4) {
                                        int i76 = b4;
                                        int j5 = ((LazyListMeasuredItem) arrayDeque.get(i75)).j();
                                        if (i74 == 0 || j5 > i74 || i75 == arrayDeque.b() - 1) {
                                            break;
                                        }
                                        i74 -= j5;
                                        i75++;
                                        lazyListMeasuredItem6 = (LazyListMeasuredItem) arrayDeque.get(i75);
                                        b4 = i76;
                                    }
                                    i27 = i74;
                                    lazyListMeasuredItem = lazyListMeasuredItem6;
                                } else {
                                    f4 = f11;
                                    i27 = i23;
                                    lazyListMeasuredItem = lazyListMeasuredItem5;
                                    i26 = i73;
                                }
                                int max2 = Math.max(0, i22);
                                int i77 = i22 - 1;
                                if (max2 <= i77) {
                                    List list5 = null;
                                    while (true) {
                                        if (list5 == null) {
                                            list5 = new ArrayList();
                                        }
                                        i28 = i43;
                                        list = list5;
                                        list.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i77, j2));
                                        if (i77 == max2) {
                                            break;
                                        }
                                        i77--;
                                        list5 = list;
                                        i43 = i28;
                                    }
                                } else {
                                    i28 = i43;
                                    list = null;
                                }
                                int[] iArr = a4.a;
                                for (int i78 = a4.b - 1; -1 < i78; i78--) {
                                    int i79 = iArr[i78];
                                    if (i79 < max2) {
                                        if (list == null) {
                                            list = new ArrayList();
                                        }
                                        list.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i79, j2));
                                    }
                                }
                                if (list == null) {
                                    list = list4;
                                }
                                int i80 = i71;
                                int i81 = 0;
                                for (int size2 = list.size(); i81 < size2; size2 = size2) {
                                    i80 = Math.max(i80, ((LazyListMeasuredItem) list.get(i81)).q);
                                    i81++;
                                }
                                int min = Math.min(((LazyListMeasuredItem) CollectionsKt.z(arrayDeque)).a, i28 - 1);
                                int i82 = ((LazyListMeasuredItem) CollectionsKt.z(arrayDeque)).a + 1;
                                if (i82 <= min) {
                                    List list6 = null;
                                    while (true) {
                                        if (list6 == null) {
                                            list6 = new ArrayList();
                                        }
                                        i29 = i80;
                                        f5 = f3;
                                        list2 = list6;
                                        list2.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i82, j2));
                                        if (i82 == min) {
                                            break;
                                        }
                                        i82++;
                                        list6 = list2;
                                        i80 = i29;
                                        f3 = f5;
                                    }
                                } else {
                                    i29 = i80;
                                    f5 = f3;
                                    list2 = null;
                                }
                                if (list2 != null && ((LazyListMeasuredItem) CollectionsKt.z(list2)).a > min) {
                                    min = ((LazyListMeasuredItem) CollectionsKt.z(list2)).a;
                                }
                                int[] iArr2 = a4.a;
                                int i83 = a4.b;
                                List list7 = list2;
                                int i84 = 0;
                                while (i84 < i83) {
                                    int i85 = i83;
                                    int i86 = iArr2[i84];
                                    if (i86 > min) {
                                        if (list7 == null) {
                                            list7 = new ArrayList();
                                        }
                                        list7.add(lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13.c(i86, j2));
                                    }
                                    i84++;
                                    i83 = i85;
                                }
                                if (list7 == null) {
                                    list3 = list4;
                                } else {
                                    list3 = list7;
                                }
                                int size3 = list3.size();
                                int i87 = i29;
                                for (int i88 = 0; i88 < size3; i88++) {
                                    i87 = Math.max(i87, ((LazyListMeasuredItem) list3.get(i88)).q);
                                }
                                if (Intrinsics.a(lazyListMeasuredItem, arrayDeque.first()) && list.isEmpty() && list3.isEmpty()) {
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                int g4 = ConstraintsKt.g(i87, i40);
                                int f12 = ConstraintsKt.f(i59, i40);
                                if (i59 < Math.min(f12, g2)) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                if (z10 && i26 != 0) {
                                    InlineClassHelperKt.c("non-zero itemsScrollOffset");
                                }
                                ArrayList arrayList2 = new ArrayList(list3.size() + list.size() + arrayDeque.b());
                                if (z10) {
                                    if (!list.isEmpty() || !list3.isEmpty()) {
                                        InlineClassHelperKt.a("no extra items");
                                    }
                                    int b5 = arrayDeque.b();
                                    int[] iArr3 = new int[b5];
                                    for (int i89 = 0; i89 < b5; i89++) {
                                        iArr3[i89] = ((LazyListMeasuredItem) arrayDeque.get(i89)).n;
                                    }
                                    int[] iArr4 = new int[b5];
                                    if (vertical2 != null) {
                                        vertical2.b(f12, lazyLayoutMeasureScopeImpl, iArr3, iArr4);
                                        IntRange r = ArraysKt.r(iArr4);
                                        int i90 = r.k;
                                        int i91 = r.l;
                                        if ((i91 > 0 && i90 >= 0) || (i91 < 0 && i90 <= 0)) {
                                            lazyListMeasuredItem2 = lazyListMeasuredItem;
                                            int i92 = 0;
                                            while (true) {
                                                int i93 = iArr4[i92];
                                                LazyListMeasuredItem lazyListMeasuredItem7 = (LazyListMeasuredItem) arrayDeque.get(i92);
                                                lazyListMeasuredItem7.l(i93, g4, f12);
                                                arrayList2.add(lazyListMeasuredItem7);
                                                if (i92 == i90) {
                                                    break;
                                                }
                                                i92 += i91;
                                            }
                                        } else {
                                            lazyListMeasuredItem2 = lazyListMeasuredItem;
                                        }
                                    } else {
                                        throw q.C("null verticalArrangement when isVertical == true");
                                    }
                                } else {
                                    lazyListMeasuredItem2 = lazyListMeasuredItem;
                                    int size4 = list.size();
                                    int i94 = i26;
                                    for (int i95 = 0; i95 < size4; i95++) {
                                        LazyListMeasuredItem lazyListMeasuredItem8 = (LazyListMeasuredItem) list.get(i95);
                                        i94 -= lazyListMeasuredItem8.j();
                                        lazyListMeasuredItem8.l(i94, g4, f12);
                                        arrayList2.add(lazyListMeasuredItem8);
                                    }
                                    int b6 = arrayDeque.b();
                                    int i96 = i26;
                                    for (int i97 = 0; i97 < b6; i97++) {
                                        LazyListMeasuredItem lazyListMeasuredItem9 = (LazyListMeasuredItem) arrayDeque.get(i97);
                                        lazyListMeasuredItem9.l(i96, g4, f12);
                                        arrayList2.add(lazyListMeasuredItem9);
                                        i96 += lazyListMeasuredItem9.j();
                                    }
                                    int size5 = list3.size();
                                    for (int i98 = 0; i98 < size5; i98++) {
                                        LazyListMeasuredItem lazyListMeasuredItem10 = (LazyListMeasuredItem) list3.get(i98);
                                        lazyListMeasuredItem10.l(i96, g4, f12);
                                        arrayList2.add(lazyListMeasuredItem10);
                                        i96 += lazyListMeasuredItem10.j();
                                    }
                                }
                                if (!z12) {
                                    f6 = f5;
                                    lazyLayoutItemAnimator = lazyLayoutItemAnimator2;
                                    lazyLayoutItemAnimator.d((int) f6, g4, f12, arrayList2, ((LazyListItemProviderImpl) lazyListItemProvider).d, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13, f0, 1, z8, i27, i59, coroutineScope2, graphicsContext2);
                                    arrayList = arrayList2;
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                } else {
                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$13;
                                    arrayList = arrayList2;
                                    lazyLayoutItemAnimator = lazyLayoutItemAnimator2;
                                    f6 = f5;
                                }
                                if (!f0) {
                                    long b7 = lazyLayoutItemAnimator.b();
                                    if (!IntSize.a(b7, 0L)) {
                                        g4 = ConstraintsKt.g(Math.max(g4, (int) (b7 >> 32)), i40);
                                        int f13 = ConstraintsKt.f(Math.max(f12, (int) (b7 & 4294967295L)), i40);
                                        if (f13 != f12) {
                                            int size6 = arrayList.size();
                                            for (int i99 = 0; i99 < size6; i99++) {
                                                LazyListMeasuredItem lazyListMeasuredItem11 = (LazyListMeasuredItem) arrayList.get(i99);
                                                lazyListMeasuredItem11.s = f13;
                                                lazyListMeasuredItem11.u = lazyListMeasuredItem11.f + f13;
                                            }
                                        }
                                        i30 = f13;
                                        int i10022 = g4;
                                        lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.f();
                                        if (lazyListMeasuredItem3 == null) {
                                            i31 = lazyListMeasuredItem3.a;
                                        } else {
                                            i31 = 0;
                                        }
                                        lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.i();
                                        if (lazyListMeasuredItem4 == null) {
                                            i32 = lazyListMeasuredItem4.a;
                                        } else {
                                            i32 = 0;
                                        }
                                        ((LazyListItemProviderImpl) lazyListItemProvider).b.getClass();
                                        ArrayList arrayList322 = arrayList;
                                        List a522 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1222, i31, i32, arrayList322, IntListKt.a, i19, i10022, i30, new defpackage.c(28, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1));
                                        if (!z9) {
                                            LazyListMeasuredItem lazyListMeasuredItem12 = (LazyListMeasuredItem) CollectionsKt.t(arrayList322);
                                            if (lazyListMeasuredItem12 != null) {
                                                valueOf = Integer.valueOf(lazyListMeasuredItem12.a);
                                                if (!z9) {
                                                    LazyListMeasuredItem lazyListMeasuredItem13 = (LazyListMeasuredItem) CollectionsKt.A(arrayList322);
                                                    if (lazyListMeasuredItem13 != null) {
                                                        valueOf2 = Integer.valueOf(lazyListMeasuredItem13.a);
                                                        i33 = i28;
                                                        if (i72 < i33 && i59 <= g2) {
                                                            num = valueOf2;
                                                            z11 = false;
                                                        } else {
                                                            num = valueOf2;
                                                            z11 = true;
                                                        }
                                                        ha haVar222222 = new ha(mutableState, arrayList322, a522, f0, 1);
                                                        int g5222222 = ConstraintsKt.g(i10022 + i38, j);
                                                        int f14222222 = ConstraintsKt.f(i30 + y04, j);
                                                        map = EmptyMap.j;
                                                        MeasureResult B222222 = subcomposeMeasureScope2.B(g5222222, f14222222, map, haVar222222);
                                                        if (valueOf == null) {
                                                            i34 = valueOf.intValue();
                                                        } else {
                                                            i34 = 0;
                                                        }
                                                        if (num == null) {
                                                            i35 = num.intValue();
                                                        } else {
                                                            i35 = 0;
                                                        }
                                                        List a6222222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList322, a522);
                                                        float f15222222 = f6;
                                                        Orientation orientation2222222 = Orientation.j;
                                                        size = a522.size();
                                                        int i101222222 = 0;
                                                        for (i36 = 0; i36 < size; i36++) {
                                                            i101222222 += ((LazyListMeasuredItem) a522.get(i36)).n;
                                                        }
                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f15222222, B222222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i101222222, a6222222, i48, i56, i33, orientation2222222, i39, y05);
                                                    }
                                                    valueOf2 = null;
                                                    i33 = i28;
                                                    if (i72 < i33) {
                                                    }
                                                    num = valueOf2;
                                                    z11 = true;
                                                    ha haVar2222222 = new ha(mutableState, arrayList322, a522, f0, 1);
                                                    int g52222222 = ConstraintsKt.g(i10022 + i38, j);
                                                    int f142222222 = ConstraintsKt.f(i30 + y04, j);
                                                    map = EmptyMap.j;
                                                    MeasureResult B2222222 = subcomposeMeasureScope2.B(g52222222, f142222222, map, haVar2222222);
                                                    if (valueOf == null) {
                                                    }
                                                    if (num == null) {
                                                    }
                                                    List a62222222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList322, a522);
                                                    float f152222222 = f6;
                                                    Orientation orientation22222222 = Orientation.j;
                                                    size = a522.size();
                                                    int i1012222222 = 0;
                                                    while (i36 < size) {
                                                    }
                                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f152222222, B2222222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i1012222222, a62222222, i48, i56, i33, orientation22222222, i39, y05);
                                                } else {
                                                    LazyListMeasuredItem lazyListMeasuredItem14 = (LazyListMeasuredItem) arrayDeque.i();
                                                    if (lazyListMeasuredItem14 != null) {
                                                        valueOf2 = Integer.valueOf(lazyListMeasuredItem14.a);
                                                        i33 = i28;
                                                        if (i72 < i33) {
                                                        }
                                                        num = valueOf2;
                                                        z11 = true;
                                                        ha haVar22222222 = new ha(mutableState, arrayList322, a522, f0, 1);
                                                        int g522222222 = ConstraintsKt.g(i10022 + i38, j);
                                                        int f1422222222 = ConstraintsKt.f(i30 + y04, j);
                                                        map = EmptyMap.j;
                                                        MeasureResult B22222222 = subcomposeMeasureScope2.B(g522222222, f1422222222, map, haVar22222222);
                                                        if (valueOf == null) {
                                                        }
                                                        if (num == null) {
                                                        }
                                                        List a622222222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList322, a522);
                                                        float f1522222222 = f6;
                                                        Orientation orientation222222222 = Orientation.j;
                                                        size = a522.size();
                                                        int i10122222222 = 0;
                                                        while (i36 < size) {
                                                        }
                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                        lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                        lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f1522222222, B22222222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i10122222222, a622222222, i48, i56, i33, orientation222222222, i39, y05);
                                                    }
                                                    valueOf2 = null;
                                                    i33 = i28;
                                                    if (i72 < i33) {
                                                    }
                                                    num = valueOf2;
                                                    z11 = true;
                                                    ha haVar222222222 = new ha(mutableState, arrayList322, a522, f0, 1);
                                                    int g5222222222 = ConstraintsKt.g(i10022 + i38, j);
                                                    int f14222222222 = ConstraintsKt.f(i30 + y04, j);
                                                    map = EmptyMap.j;
                                                    MeasureResult B222222222 = subcomposeMeasureScope2.B(g5222222222, f14222222222, map, haVar222222222);
                                                    if (valueOf == null) {
                                                    }
                                                    if (num == null) {
                                                    }
                                                    List a6222222222 = LazyLayoutMeasuredItemKt.a(i34, i35, arrayList322, a522);
                                                    float f15222222222 = f6;
                                                    Orientation orientation2222222222 = Orientation.j;
                                                    size = a522.size();
                                                    int i101222222222 = 0;
                                                    while (i36 < size) {
                                                    }
                                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                                    lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;
                                                    lazyListMeasureResult = new LazyListMeasureResult(lazyListMeasuredItem2, i27, z11, f15222222222, B222222222, f4, z14, coroutineScope2, lazyLayoutMeasureScopeImpl, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1.d, i101222222222, a6222222222, i48, i56, i33, orientation2222222222, i39, y05);
                                                }
                                            }
                                            valueOf = null;
                                            if (!z9) {
                                            }
                                        } else {
                                            LazyListMeasuredItem lazyListMeasuredItem15 = (LazyListMeasuredItem) arrayDeque.f();
                                            if (lazyListMeasuredItem15 != null) {
                                                valueOf = Integer.valueOf(lazyListMeasuredItem15.a);
                                                if (!z9) {
                                                }
                                            }
                                            valueOf = null;
                                            if (!z9) {
                                            }
                                        }
                                    }
                                }
                                i30 = f12;
                                int i100222 = g4;
                                lazyListMeasuredItem3 = (LazyListMeasuredItem) arrayDeque.f();
                                if (lazyListMeasuredItem3 == null) {
                                }
                                lazyListMeasuredItem4 = (LazyListMeasuredItem) arrayDeque.i();
                                if (lazyListMeasuredItem4 == null) {
                                }
                                ((LazyListItemProviderImpl) lazyListItemProvider).b.getClass();
                                ArrayList arrayList3222 = arrayList;
                                List a5222 = LazyLayoutStickyItemsKt.a(stickyItemsPlacement$Companion$StickToTopPlacement$1222, i31, i32, arrayList3222, IntListKt.a, i19, i100222, i30, new defpackage.c(28, lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1));
                                if (!z9) {
                                }
                            }
                            LazyListMeasureResult lazyListMeasureResult2 = lazyListMeasureResult;
                            LazyListState lazyListState6 = lazyListState4;
                            lazyListState6.g(lazyListMeasureResult2, subcomposeMeasureScope.f0(), false);
                            Object obj5 = lazyListState6.a;
                            if (obj5 instanceof CacheWindowLogic) {
                                cacheWindowLogic = (CacheWindowLogic) obj5;
                            }
                            CacheWindowLogic cacheWindowLogic2 = cacheWindowLogic;
                            if (cacheWindowLogic2 != null) {
                                List list8 = lazyListMeasureResult2.l;
                                Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                                try {
                                    if (cacheWindowLogic2.b() && !list8.isEmpty()) {
                                        int i102 = ((LazyListMeasuredItem) CollectionsKt.s(list8)).a;
                                        int i103 = ((LazyListMeasuredItem) CollectionsKt.z(list8)).a;
                                        int i104 = cacheWindowLogic2.h;
                                        LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1 lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$14 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$12;
                                        while (true) {
                                            lazyLayoutMeasureScopeImpl2 = lazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$14.c;
                                            if (i104 >= i102) {
                                                break;
                                            }
                                            if (i104 >= 0 && i104 < ((LazyListItemProviderImpl) lazyListItemProvider).b.e().b) {
                                                lazyLayoutMeasureScopeImpl2.a(i104);
                                            }
                                            i104++;
                                        }
                                        int i105 = i103 + 1;
                                        int i106 = cacheWindowLogic2.i;
                                        if (i105 <= i106) {
                                            while (true) {
                                                if (i105 >= 0) {
                                                    if (i105 < ((LazyListItemProviderImpl) lazyListItemProvider).b.e().b) {
                                                        lazyLayoutMeasureScopeImpl2.a(i105);
                                                    }
                                                }
                                                if (i105 == i106) {
                                                    break;
                                                }
                                                i105++;
                                            }
                                        }
                                    }
                                    return lazyListMeasureResult2;
                                } finally {
                                    Trace.endSection();
                                }
                            }
                            return lazyListMeasureResult2;
                        } catch (Throwable th) {
                            Snapshot.Companion.e(a, b, function12);
                            throw th;
                        }
                    }
                    throw q.C("null verticalArrangement when isVertical == true");
                }
            };
            kProperty0 = kProperty02;
            gapComposer2.g0(obj2);
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy22 = (LazyLayoutMeasurePolicy) obj2;
            Orientation orientation22 = Orientation.j;
            if (z) {
            }
            if (i7 == 32) {
            }
            K = gapComposer2.K();
            if (!z4) {
            }
            K = new ka(lazyListState3, 1);
            gapComposer2.g0(K);
            lazyListState2 = lazyListState3;
            gapComposer = gapComposer2;
            LazyLayoutKt.a(kProperty0, ScrollableAreaKt.a(LazyLayoutItemAnimatorModifierKt.a(LazyLayoutSemanticsKt.a(modifier.l(lazyListState3.m).l(lazyListState3.n), kProperty0, lazyLayoutSemanticState, orientation22, z).l(modifier2), lazyListState3.o), lazyListState3, orientation22, overscrollEffect, z, flingBehavior, lazyListState3.g, LazyLayoutBringIntoViewSpecKt.a((Function0) K, gapComposer2, i13 & 126)), lazyListState2.q, lazyLayoutMeasurePolicy22, gapComposer, 0);
        } else {
            lazyListState2 = lazyListState;
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new ca(modifier, lazyListState2, paddingValuesImpl, flingBehavior, z, overscrollEffect, horizontal, vertical, function1, i, i2);
        }
    }
}
