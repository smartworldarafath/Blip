package androidx.compose.foundation.lazy.grid;

import android.os.Trace;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.ScrollableAreaKt;
import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.grid.LazyGridKt;
import androidx.compose.foundation.lazy.grid.LazyGridSpanLayoutProvider;
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
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
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
import defpackage.fe;
import defpackage.ha;
import defpackage.o1;
import defpackage.r1;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.PropertyReference;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridKt {
    /* JADX WARN: Code restructure failed: missing block: B:143:0x026c, code lost:
    
        if (r14.g(false) != false) goto L177;
     */
    /* JADX WARN: Removed duplicated region for block: B:166:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Modifier modifier, final LazyGridState lazyGridState, final LazyGridSlotsProvider lazyGridSlotsProvider, final PaddingValuesImpl paddingValuesImpl, final FlingBehavior flingBehavior, final boolean z, final OverscrollEffect overscrollEffect, final Arrangement.Vertical vertical, final Arrangement.Horizontal horizontal, final Function1 function1, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        LazyGridState lazyGridState2;
        GapComposer gapComposer;
        boolean z2;
        boolean f;
        Object obj;
        final LazyGridState lazyGridState3;
        LazySemanticsKt$rememberLazyGridSemanticState$1$1 lazySemanticsKt$rememberLazyGridSemanticState$1$1;
        int i5;
        boolean z3;
        KProperty0 kProperty0;
        boolean z4;
        Object K;
        Modifier modifier2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(708740370);
        if ((i & 6) == 0) {
            i3 = (gapComposer2.f(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer2.f(lazyGridState) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= (i & 512) == 0 ? gapComposer2.f(lazyGridSlotsProvider) : gapComposer2.h(lazyGridSlotsProvider) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer2.f(paddingValuesImpl) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer2.g(false) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i3 |= gapComposer2.g(true) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= gapComposer2.f(flingBehavior) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer2.g(z) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer2.f(overscrollEffect) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i3 |= gapComposer2.f(vertical) ? 536870912 : 268435456;
        }
        int i6 = i3;
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer2.f(horizontal) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer2.h(function1) ? 32 : 16;
        }
        if (gapComposer2.N(i6 & 1, ((i6 & 306783379) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            gapComposer2.S();
            if ((i & 1) != 0 && !gapComposer2.x()) {
                gapComposer2.Q();
            }
            gapComposer2.q();
            int i7 = i6 >> 3;
            int i8 = i7 & 14;
            int i9 = i8 | (i4 & 112);
            MutableState k = SnapshotStateKt.k(function1, gapComposer2);
            int i10 = i4;
            boolean z5 = (((i9 & 14) ^ 6) > 4 && gapComposer2.f(lazyGridState)) || (i9 & 6) == 4;
            Object K2 = gapComposer2.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z5 || K2 == composer$Companion$Empty$1) {
                final State d = SnapshotStateKt.d(SnapshotStateKt.j(), new o1(k, 18));
                K2 = new PropertyReference(SnapshotStateKt.d(SnapshotStateKt.j(), new Function0() { // from class: androidx.compose.foundation.lazy.grid.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) State.this.getValue();
                        LazyGridState lazyGridState4 = lazyGridState;
                        return new LazyGridItemProviderImpl(lazyGridState4, lazyGridIntervalContent, new NearestRangeKeyIndexMap((IntRange) lazyGridState4.d.e.getValue(), lazyGridIntervalContent));
                    }
                }), State.class, "value", "getValue()Ljava/lang/Object;", 0);
                gapComposer2.g0(K2);
            }
            final KProperty0 kProperty02 = (KProperty0) K2;
            int i11 = i8 | ((i6 >> 9) & 112);
            boolean z6 = ((((i11 & 14) ^ 6) > 4 && gapComposer2.f(lazyGridState)) || (i11 & 6) == 4) | ((((i11 & 112) ^ 48) > 32 && gapComposer2.g(false)) || (i11 & 48) == 32);
            Object K3 = gapComposer2.K();
            if (z6 || K3 == composer$Companion$Empty$1) {
                K3 = new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.lazy.grid.LazySemanticsKt$rememberLazyGridSemanticState$1$1
                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int a() {
                        long i12;
                        LazyGridState lazyGridState4 = LazyGridState.this;
                        if (((LazyGridMeasureResult) lazyGridState4.g()).r == Orientation.j) {
                            i12 = ((LazyGridMeasureResult) lazyGridState4.g()).i() & 4294967295L;
                        } else {
                            i12 = ((LazyGridMeasureResult) lazyGridState4.g()).i() >> 32;
                        }
                        return (int) i12;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float b() {
                        LazyGridState lazyGridState4 = LazyGridState.this;
                        return (lazyGridState4.d.a() * 500) + lazyGridState4.d.b();
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final int c() {
                        LazyGridState lazyGridState4 = LazyGridState.this;
                        return (-((LazyGridMeasureResult) lazyGridState4.g()).o) + ((LazyGridMeasureResult) lazyGridState4.g()).s;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final float d() {
                        LazyGridState lazyGridState4 = LazyGridState.this;
                        int a = lazyGridState4.d.a();
                        int b = lazyGridState4.d.b();
                        if (lazyGridState4.d()) {
                            return (a * 500) + b + 100.0f;
                        }
                        return (a * 500) + b;
                    }

                    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
                    public final Object e(int i12, Continuation continuation) {
                        SaverKt$Saver$1 saverKt$Saver$1 = LazyGridState.w;
                        LazyGridState lazyGridState4 = LazyGridState.this;
                        lazyGridState4.getClass();
                        Object c = lazyGridState4.c(MutatePriority.j, new LazyGridState$scrollToItem$2(lazyGridState4, i12, null), (ContinuationImpl) continuation);
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
                        return new CollectionInfo(-1, -1);
                    }
                };
                gapComposer2.g0(K3);
            }
            LazySemanticsKt$rememberLazyGridSemanticState$1$1 lazySemanticsKt$rememberLazyGridSemanticState$1$12 = (LazySemanticsKt$rememberLazyGridSemanticState$1$1) K3;
            Object K4 = gapComposer2.K();
            if (K4 == composer$Companion$Empty$1) {
                K4 = EffectsKt.h(gapComposer2);
                gapComposer2.g0(K4);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) K4;
            final GraphicsContext graphicsContext = (GraphicsContext) gapComposer2.j(CompositionLocalsKt.g);
            int i12 = i6 & 112;
            final StickyItemsPlacement$Companion$StickToTopPlacement$1 stickyItemsPlacement$Companion$StickToTopPlacement$1 = !((Boolean) gapComposer2.j(CompositionLocalsKt.x)).booleanValue() ? StickyItemsPlacement.Companion.a : null;
            int i13 = (i6 & 524272) | ((i10 << 18) & 3670016) | ((i6 >> 6) & 29360128);
            boolean z7 = ((((i13 & 896) ^ 384) > 256 && gapComposer2.f(lazyGridSlotsProvider)) || (i13 & 384) == 256) | ((((i13 & 112) ^ 48) > 32 && gapComposer2.f(lazyGridState)) || (i13 & 48) == 32) | ((((i13 & 7168) ^ 3072) > 2048 && gapComposer2.f(paddingValuesImpl)) || (i13 & 3072) == 2048);
            if (((57344 & i13) ^ 24576) <= 16384) {
            }
            if ((i13 & 24576) != 16384) {
                z2 = false;
                f = ((((i13 & 29360128) ^ 12582912) <= 8388608 && gapComposer2.f(vertical)) || (i13 & 12582912) == 8388608) | z7 | z2 | ((((458752 & i13) ^ 196608) <= 131072 && gapComposer2.g(true)) || (i13 & 196608) == 131072) | ((((i13 & 3670016) ^ 1572864) <= 1048576 && gapComposer2.f(horizontal)) || (i13 & 1572864) == 1048576) | gapComposer2.f(graphicsContext);
                Object K5 = gapComposer2.K();
                if (!f || K5 == composer$Companion$Empty$1) {
                    lazyGridState3 = lazyGridState;
                    lazySemanticsKt$rememberLazyGridSemanticState$1$1 = lazySemanticsKt$rememberLazyGridSemanticState$1$12;
                    i5 = 32;
                    z3 = true;
                    obj = new LazyLayoutMeasurePolicy(paddingValuesImpl, kProperty02, lazyGridSlotsProvider, vertical, horizontal, coroutineScope, graphicsContext, stickyItemsPlacement$Companion$StickToTopPlacement$1) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1
                        public final /* synthetic */ PaddingValuesImpl b;
                        public final /* synthetic */ Function0 c;
                        public final /* synthetic */ LazyGridSlotsProvider d;
                        public final /* synthetic */ Arrangement.Vertical e;
                        public final /* synthetic */ CoroutineScope f;
                        public final /* synthetic */ GraphicsContext g;
                        public final /* synthetic */ StickyItemsPlacement h;

                        {
                            this.f = coroutineScope;
                            this.g = graphicsContext;
                            this.h = stickyItemsPlacement$Companion$StickToTopPlacement$1;
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:192:0x0497, code lost:
                        
                            r8 = (androidx.compose.foundation.lazy.grid.LazyGridItemInfo) r5.get(r8);
                         */
                        /* JADX WARN: Removed duplicated region for block: B:163:0x041f  */
                        /* JADX WARN: Removed duplicated region for block: B:175:0x045d A[EDGE_INSN: B:175:0x045d->B:176:0x045d BREAK  A[LOOP:6: B:161:0x041b->B:171:0x0456], SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:178:0x0461  */
                        /* JADX WARN: Removed duplicated region for block: B:183:0x0472  */
                        /* JADX WARN: Removed duplicated region for block: B:214:0x052e  */
                        /* JADX WARN: Removed duplicated region for block: B:217:0x0539  */
                        /* JADX WARN: Removed duplicated region for block: B:244:0x05ab  */
                        /* JADX WARN: Removed duplicated region for block: B:246:0x05af A[ADDED_TO_REGION] */
                        /* JADX WARN: Removed duplicated region for block: B:250:0x05f4  */
                        /* JADX WARN: Removed duplicated region for block: B:253:0x05fe  */
                        /* JADX WARN: Removed duplicated region for block: B:255:0x0604 A[ADDED_TO_REGION] */
                        /* JADX WARN: Removed duplicated region for block: B:259:0x0618 A[LOOP:14: B:258:0x0616->B:259:0x0618, LOOP_END] */
                        /* JADX WARN: Removed duplicated region for block: B:263:0x0630  */
                        /* JADX WARN: Removed duplicated region for block: B:285:0x073e  */
                        /* JADX WARN: Removed duplicated region for block: B:297:0x07c0 A[ADDED_TO_REGION] */
                        /* JADX WARN: Removed duplicated region for block: B:301:0x07fe A[LOOP:19: B:300:0x07fc->B:301:0x07fe, LOOP_END] */
                        /* JADX WARN: Removed duplicated region for block: B:307:0x078a  */
                        /* JADX WARN: Removed duplicated region for block: B:312:0x06a1  */
                        /* JADX WARN: Removed duplicated region for block: B:332:0x0601  */
                        /* JADX WARN: Removed duplicated region for block: B:335:0x05c2  */
                        /* JADX WARN: Removed duplicated region for block: B:365:0x0464  */
                        /* JADX WARN: Removed duplicated region for block: B:36:0x01c3  */
                        /* JADX WARN: Removed duplicated region for block: B:38:0x01cb  */
                        /* JADX WARN: Removed duplicated region for block: B:41:0x01e4  */
                        /* JADX WARN: Removed duplicated region for block: B:49:0x083b  */
                        /* JADX WARN: Removed duplicated region for block: B:52:0x0843  */
                        /* JADX WARN: Removed duplicated region for block: B:84:0x08a3 A[RETURN] */
                        /* JADX WARN: Removed duplicated region for block: B:85:0x0273  */
                        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                        */
                        public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                            boolean z8;
                            LazyGridSlots lazyGridSlots;
                            Orientation orientation;
                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
                            Function1 function12;
                            int i14;
                            int c;
                            int b;
                            float f2;
                            LazyGridState lazyGridState4;
                            int i15;
                            boolean z9;
                            int i16;
                            int i17;
                            int i18;
                            float f3;
                            int i19;
                            int i20;
                            List list;
                            int i21;
                            LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider;
                            List list2;
                            int i22;
                            float f4;
                            List list3;
                            int i23;
                            List list4;
                            int i24;
                            int b2;
                            LazyGridMeasuredLine lazyGridMeasuredLine;
                            int i25;
                            int i26;
                            int f5;
                            boolean z10;
                            int size;
                            boolean z11;
                            int i27;
                            int i28;
                            float f6;
                            int i29;
                            float f7;
                            int i30;
                            int i31;
                            boolean z12;
                            Map map;
                            int size2;
                            int i32;
                            SubcomposeMeasureScope subcomposeMeasureScope;
                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12;
                            LazyGridMeasureResult lazyGridMeasureResult;
                            int[] iArr;
                            int i33;
                            List list5;
                            LazyGridItemInfo lazyGridItemInfo;
                            int i34;
                            int i35;
                            List list6;
                            LazyGridMeasuredItem lazyGridMeasuredItem;
                            LazyGridMeasuredItem lazyGridMeasuredItem2;
                            Object obj2;
                            CacheWindowLogic cacheWindowLogic;
                            int i36;
                            int i37;
                            Map map2;
                            SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.k;
                            LazyGridState lazyGridState5 = LazyGridState.this;
                            lazyGridState5.s.getValue();
                            if (!lazyGridState5.b && !subcomposeMeasureScope2.f0()) {
                                z8 = false;
                            } else {
                                z8 = true;
                            }
                            Orientation orientation2 = Orientation.j;
                            CheckScrollableContainerConstraintsKt.a(j, orientation2);
                            LayoutDirection layoutDirection = subcomposeMeasureScope2.getLayoutDirection();
                            PaddingValuesImpl paddingValuesImpl2 = this.b;
                            int y0 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b(layoutDirection));
                            int y02 = subcomposeMeasureScope2.y0(paddingValuesImpl2.c(subcomposeMeasureScope2.getLayoutDirection()));
                            int y03 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b);
                            int y04 = subcomposeMeasureScope2.y0(paddingValuesImpl2.d) + y03;
                            int i38 = y02 + y0;
                            int i39 = y04 - y03;
                            long i40 = ConstraintsKt.i(-i38, -y04, j);
                            LazyGridItemProvider lazyGridItemProvider = (LazyGridItemProvider) this.c.a();
                            LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider2 = ((LazyGridItemProviderImpl) lazyGridItemProvider).b.a;
                            GridSlotCache gridSlotCache = (GridSlotCache) this.d;
                            if (gridSlotCache.d != null && Constraints.b(gridSlotCache.b, i40) && gridSlotCache.c == subcomposeMeasureScope2.getDensity()) {
                                lazyGridSlots = gridSlotCache.d;
                                lazyGridSlots.getClass();
                            } else {
                                gridSlotCache.b = i40;
                                gridSlotCache.c = subcomposeMeasureScope2.getDensity();
                                lazyGridSlots = (LazyGridSlots) gridSlotCache.a.n(lazyLayoutMeasureScopeImpl, new Constraints(i40));
                                gridSlotCache.d = lazyGridSlots;
                            }
                            LazyGridSlots lazyGridSlots2 = lazyGridSlots;
                            int length = lazyGridSlots2.a.length;
                            if (length != lazyGridSpanLayoutProvider2.i) {
                                lazyGridSpanLayoutProvider2.i = length;
                                ArrayList arrayList = lazyGridSpanLayoutProvider2.b;
                                arrayList.clear();
                                orientation = orientation2;
                                arrayList.add(new LazyGridSpanLayoutProvider.Bucket(0, 0));
                                lazyGridSpanLayoutProvider2.c = 0;
                                lazyGridSpanLayoutProvider2.d = 0;
                                lazyGridSpanLayoutProvider2.e = 0;
                                lazyGridSpanLayoutProvider2.f = -1;
                                lazyGridSpanLayoutProvider2.g.clear();
                            } else {
                                orientation = orientation2;
                            }
                            Arrangement.Vertical vertical2 = this.e;
                            int y05 = subcomposeMeasureScope2.y0(vertical2.a());
                            int i41 = ((LazyGridItemProviderImpl) lazyGridItemProvider).b.e().b;
                            int g = Constraints.g(j) - y04;
                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = new LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1(lazyGridItemProvider, lazyLayoutMeasureScopeImpl, y05, LazyGridState.this, y03, i39, (y0 << 32) | (y03 & 4294967295L));
                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13 = new LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1(lazyGridSlots2, i41, y05, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, lazyGridSpanLayoutProvider2);
                            defpackage.b bVar = new defpackage.b(21, lazyGridSpanLayoutProvider2, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13);
                            defpackage.c cVar = new defpackage.c(26, lazyGridSpanLayoutProvider2);
                            Snapshot a = Snapshot.Companion.a();
                            CacheWindowLogic cacheWindowLogic2 = null;
                            if (a != null) {
                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13;
                                function12 = a.e();
                            } else {
                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13;
                                function12 = null;
                            }
                            Snapshot b3 = Snapshot.Companion.b(a);
                            try {
                                LazyGridScrollPosition lazyGridScrollPosition = lazyGridState5.d;
                                int a2 = lazyGridScrollPosition.a();
                                int a3 = LazyLayoutItemProviderKt.a(a2, lazyGridItemProvider, lazyGridScrollPosition.d);
                                if (a2 != a3) {
                                    i14 = y03;
                                    ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.a).k(a3);
                                    lazyGridScrollPosition.e.b(a2);
                                } else {
                                    i14 = y03;
                                }
                                if (a3 >= i41 && i41 > 0) {
                                    c = lazyGridSpanLayoutProvider2.c(i41 - 1);
                                    b = 0;
                                    Snapshot.Companion.e(a, b3, function12);
                                    MutableIntList a4 = LazyLayoutBeyondBoundsStateKt.a(lazyGridItemProvider, lazyGridState5.q, lazyGridState5.n);
                                    if (subcomposeMeasureScope2.f0() && z8) {
                                        f2 = ((Number) ((SnapshotMutableStateImpl) lazyGridState5.v.b.k).getValue()).floatValue();
                                    } else {
                                        f2 = lazyGridState5.g;
                                    }
                                    LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyGridState5.m;
                                    boolean f0 = subcomposeMeasureScope2.f0();
                                    LazyGridMeasureResult lazyGridMeasureResult2 = lazyGridState5.c;
                                    MutableState mutableState = lazyGridState5.r;
                                    if (i14 < 0) {
                                        InlineClassHelperKt.a("negative beforeContentPadding");
                                    }
                                    if (i39 < 0) {
                                        InlineClassHelperKt.a("negative afterContentPadding");
                                    }
                                    LazyGridItemProvider lazyGridItemProvider2 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.b;
                                    CoroutineScope coroutineScope2 = this.f;
                                    int i42 = c;
                                    GraphicsContext graphicsContext2 = this.g;
                                    float f8 = f2;
                                    List list7 = EmptyList.j;
                                    if (i41 > 0) {
                                        int j2 = Constraints.j(i40);
                                        int i43 = Constraints.i(i40);
                                        lazyLayoutItemAnimator.d(0, j2, i43, new ArrayList(), ((LazyGridItemProviderImpl) lazyGridItemProvider2).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f0, length, z8, 0, 0, coroutineScope2, graphicsContext2);
                                        if (!f0) {
                                            long b4 = lazyLayoutItemAnimator.b();
                                            if (!IntSize.a(b4, 0L)) {
                                                j2 = ConstraintsKt.g((int) (b4 >> 32), i40);
                                                i43 = ConstraintsKt.f((int) (b4 & 4294967295L), i40);
                                            }
                                        }
                                        a7 a7Var = new a7(15);
                                        int g2 = ConstraintsKt.g(j2 + i38, j);
                                        int f9 = ConstraintsKt.f(i43 + y04, j);
                                        map2 = EmptyMap.j;
                                        lazyGridState4 = lazyGridState5;
                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                        lazyGridMeasureResult = new LazyGridMeasureResult(null, 0, false, 0.0f, subcomposeMeasureScope2.B(g2, f9, map2, a7Var), 0.0f, false, coroutineScope2, lazyLayoutMeasureScopeImpl, length, bVar, cVar, 0, list7, -i14, g + i39, 0, orientation, i39, y05);
                                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
                                    } else {
                                        lazyGridState4 = lazyGridState5;
                                        List list8 = list7;
                                        int i44 = y05;
                                        LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
                                        int i45 = i14;
                                        int round = Math.round(f8);
                                        int i46 = b - round;
                                        if (i42 == 0 && i46 < 0) {
                                            round += i46;
                                            i46 = 0;
                                        }
                                        ArrayDeque arrayDeque = new ArrayDeque();
                                        defpackage.b bVar2 = bVar;
                                        int i47 = -i45;
                                        if (i44 < 0) {
                                            i15 = i44;
                                        } else {
                                            i15 = 0;
                                        }
                                        int i48 = i47 + i15;
                                        int i49 = i46 + i48;
                                        while (i49 < 0 && i42 > 0) {
                                            defpackage.b bVar3 = bVar2;
                                            int i50 = i42 - 1;
                                            List list9 = list8;
                                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$15 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14;
                                            int i51 = i44;
                                            LazyGridMeasuredLine b5 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$15.b(i50);
                                            i42 = i50;
                                            arrayDeque.add(0, b5);
                                            i49 += b5.g;
                                            bVar2 = bVar3;
                                            i44 = i51;
                                            lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$15;
                                            list8 = list9;
                                        }
                                        defpackage.b bVar4 = bVar2;
                                        List list10 = list8;
                                        LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14;
                                        int i52 = 0;
                                        int i53 = i44;
                                        if (i49 < i48) {
                                            round -= i48 - i49;
                                            i49 = i48;
                                        }
                                        int i54 = round;
                                        int i55 = i49 - i48;
                                        int i56 = g + i39;
                                        if (i56 >= 0) {
                                            i52 = i56;
                                        }
                                        int i57 = i55;
                                        int i58 = -i55;
                                        int i59 = i42;
                                        int i60 = 0;
                                        boolean z13 = false;
                                        while (i60 < arrayDeque.l) {
                                            if (i58 >= i52) {
                                                arrayDeque.c(i60);
                                                z13 = true;
                                            } else {
                                                i59++;
                                                i58 += ((LazyGridMeasuredLine) arrayDeque.get(i60)).g;
                                                i60++;
                                            }
                                        }
                                        boolean z14 = z13;
                                        int i61 = i59;
                                        while (i61 < i41 && (i58 < i52 || i58 <= 0 || arrayDeque.isEmpty())) {
                                            LazyGridMeasuredLine b6 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.b(i61);
                                            int i62 = i52;
                                            int i63 = b6.g;
                                            LazyGridMeasuredItem[] lazyGridMeasuredItemArr = b6.b;
                                            z9 = z14;
                                            if (lazyGridMeasuredItemArr.length == 0) {
                                                break;
                                            }
                                            i58 += i63;
                                            if (i58 <= i48) {
                                                if (lazyGridMeasuredItemArr.length != 0) {
                                                    if (lazyGridMeasuredItemArr[lazyGridMeasuredItemArr.length - 1].a != i41 - 1) {
                                                        i57 -= i63;
                                                        i42 = i61 + 1;
                                                        z14 = true;
                                                        i61++;
                                                        i52 = i62;
                                                    }
                                                } else {
                                                    fe.o("Array is empty.");
                                                    return null;
                                                }
                                            }
                                            arrayDeque.addLast(b6);
                                            z14 = z9;
                                            i61++;
                                            i52 = i62;
                                        }
                                        z9 = z14;
                                        if (i58 < g) {
                                            int i64 = g - i58;
                                            i58 += i64;
                                            int i65 = i57 - i64;
                                            while (i65 < i45 && i42 > 0) {
                                                int i66 = i42 - 1;
                                                LazyGridMeasuredLine b7 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.b(i66);
                                                arrayDeque.add(0, b7);
                                                i65 += b7.g;
                                                i42 = i66;
                                            }
                                            int i67 = i65;
                                            i16 = i64 + i54;
                                            if (i67 < 0) {
                                                i16 += i67;
                                                i58 += i67;
                                                i17 = 0;
                                            } else {
                                                i17 = i67;
                                            }
                                        } else {
                                            i16 = i54;
                                            i17 = i57;
                                        }
                                        float f10 = (Integer.signum(Math.round(f8)) == Integer.signum(i16) && Math.abs(Math.round(f8)) >= Math.abs(i16)) ? i16 : f8;
                                        float f11 = f8 - f10;
                                        float f12 = 0.0f;
                                        if (f0 && i16 > i54 && f11 <= 0.0f) {
                                            f12 = (i16 - i54) + f11;
                                        }
                                        float f13 = f12;
                                        if (i17 < 0) {
                                            InlineClassHelperKt.a("negative initial offset");
                                        }
                                        int i68 = -i17;
                                        LazyGridMeasuredLine lazyGridMeasuredLine2 = (LazyGridMeasuredLine) arrayDeque.f();
                                        int i69 = i17;
                                        if (lazyGridMeasuredLine2 != null && (lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ArraysKt.q(lazyGridMeasuredLine2.b)) != null) {
                                            i18 = lazyGridMeasuredItem2.a;
                                        } else {
                                            i18 = 0;
                                        }
                                        LazyGridMeasuredLine lazyGridMeasuredLine3 = (LazyGridMeasuredLine) arrayDeque.i();
                                        if (lazyGridMeasuredLine3 != null) {
                                            LazyGridMeasuredItem[] lazyGridMeasuredItemArr2 = lazyGridMeasuredLine3.b;
                                            f3 = f13;
                                            if (lazyGridMeasuredItemArr2.length == 0) {
                                                lazyGridMeasuredItem = null;
                                            } else {
                                                lazyGridMeasuredItem = lazyGridMeasuredItemArr2[lazyGridMeasuredItemArr2.length - 1];
                                            }
                                            if (lazyGridMeasuredItem != null) {
                                                i19 = lazyGridMeasuredItem.a;
                                                int[] iArr2 = a4.a;
                                                i20 = a4.b;
                                                list = null;
                                                i21 = 0;
                                                while (true) {
                                                    lazyGridSpanLayoutProvider = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.e;
                                                    if (i21 < i20) {
                                                        break;
                                                    }
                                                    int i70 = i20;
                                                    int i71 = iArr2[i21];
                                                    if (i71 >= 0 && i71 < i18) {
                                                        i35 = i18;
                                                        int i72 = lazyGridSpanLayoutProvider.i;
                                                        int e = lazyGridSpanLayoutProvider.e(i71);
                                                        LazyGridMeasuredItem c2 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.c(i71, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.a(0, e), 0, e, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d);
                                                        if (list == null) {
                                                            list6 = new ArrayList();
                                                        } else {
                                                            list6 = list;
                                                        }
                                                        list6.add(c2);
                                                        list = list6;
                                                    } else {
                                                        i35 = i18;
                                                    }
                                                    i21++;
                                                    i20 = i70;
                                                    i18 = i35;
                                                }
                                                int i73 = i18;
                                                if (list != null) {
                                                    list2 = list10;
                                                } else {
                                                    list2 = list;
                                                }
                                                if (f0 && lazyGridMeasureResult2 != null) {
                                                    list5 = lazyGridMeasureResult2.n;
                                                    if (!list5.isEmpty()) {
                                                        int size3 = list5.size();
                                                        while (true) {
                                                            size3--;
                                                            if (-1 < size3) {
                                                                if (((LazyGridMeasuredItem) ((LazyGridItemInfo) list5.get(size3))).a <= i19 || (size3 != 0 && ((LazyGridMeasuredItem) ((LazyGridItemInfo) list5.get(size3 - 1))).a > i19)) {
                                                                }
                                                            } else {
                                                                lazyGridItemInfo = null;
                                                                break;
                                                            }
                                                        }
                                                        LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) CollectionsKt.z(list5);
                                                        LazyGridMeasuredLine lazyGridMeasuredLine4 = (LazyGridMeasuredLine) CollectionsKt.A(arrayDeque);
                                                        if (lazyGridMeasuredLine4 != null) {
                                                            i34 = lazyGridMeasuredLine4.a + 1;
                                                        } else {
                                                            i34 = 0;
                                                        }
                                                        if (lazyGridItemInfo != null) {
                                                            int i74 = ((LazyGridMeasuredItem) lazyGridItemInfo).a;
                                                            i22 = i19;
                                                            int min = Math.min(((LazyGridMeasuredItem) lazyGridItemInfo2).a, i41 - 1);
                                                            if (i74 <= min) {
                                                                list3 = null;
                                                                while (true) {
                                                                    if (list3 != null) {
                                                                        int size4 = list3.size();
                                                                        f4 = f10;
                                                                        int i75 = 0;
                                                                        while (i75 < size4) {
                                                                            int i76 = size4;
                                                                            LazyGridMeasuredItem[] lazyGridMeasuredItemArr3 = ((LazyGridMeasuredLine) list3.get(i75)).b;
                                                                            List list11 = list3;
                                                                            int length2 = lazyGridMeasuredItemArr3.length;
                                                                            int i77 = 0;
                                                                            while (i77 < length2) {
                                                                                int i78 = i77;
                                                                                if (lazyGridMeasuredItemArr3[i78].a == i74) {
                                                                                    list3 = list11;
                                                                                    break;
                                                                                }
                                                                                i77 = i78 + 1;
                                                                            }
                                                                            i75++;
                                                                            list3 = list11;
                                                                            size4 = i76;
                                                                        }
                                                                    } else {
                                                                        f4 = f10;
                                                                    }
                                                                    List list12 = list3;
                                                                    if (list12 == null) {
                                                                        list3 = new ArrayList();
                                                                    } else {
                                                                        list3 = list12;
                                                                    }
                                                                    LazyGridMeasuredLine b8 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.b(i34);
                                                                    i34++;
                                                                    list3.add(b8);
                                                                    if (i74 == min) {
                                                                        break;
                                                                    }
                                                                    i74++;
                                                                    f10 = f4;
                                                                }
                                                                if (list3 == null) {
                                                                    list3 = list10;
                                                                }
                                                                int[] iArr3 = a4.a;
                                                                i23 = a4.b;
                                                                list4 = null;
                                                                i24 = 0;
                                                                while (i24 < i23) {
                                                                    int i79 = iArr3[i24];
                                                                    if (i22 + 1 <= i79 && i79 < i41) {
                                                                        if (f0) {
                                                                            int size5 = list3.size();
                                                                            iArr = iArr3;
                                                                            int i80 = 0;
                                                                            while (i80 < size5) {
                                                                                int i81 = i80;
                                                                                LazyGridMeasuredItem[] lazyGridMeasuredItemArr4 = ((LazyGridMeasuredLine) list3.get(i80)).b;
                                                                                i33 = i23;
                                                                                int length3 = lazyGridMeasuredItemArr4.length;
                                                                                int i82 = 0;
                                                                                while (i82 < length3) {
                                                                                    int i83 = i82;
                                                                                    if (lazyGridMeasuredItemArr4[i83].a == i79) {
                                                                                        break;
                                                                                    }
                                                                                    i82 = i83 + 1;
                                                                                }
                                                                                i80 = i81 + 1;
                                                                                i23 = i33;
                                                                            }
                                                                        } else {
                                                                            iArr = iArr3;
                                                                        }
                                                                        i33 = i23;
                                                                        int i84 = lazyGridSpanLayoutProvider.i;
                                                                        int e2 = lazyGridSpanLayoutProvider.e(i79);
                                                                        LazyGridMeasuredItem c3 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.c(i79, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.a(0, e2), 0, e2, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d);
                                                                        if (list4 == null) {
                                                                            list4 = new ArrayList();
                                                                        }
                                                                        list4.add(c3);
                                                                    } else {
                                                                        iArr = iArr3;
                                                                        i33 = i23;
                                                                    }
                                                                    i24++;
                                                                    iArr3 = iArr;
                                                                    i23 = i33;
                                                                }
                                                                if (list4 == null) {
                                                                    list4 = list10;
                                                                }
                                                                if (i45 > 0 && i53 >= 0) {
                                                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                                    i26 = i69;
                                                                } else {
                                                                    b2 = arrayDeque.b();
                                                                    int i85 = i69;
                                                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                                    i25 = 0;
                                                                    while (i25 < b2) {
                                                                        int i86 = ((LazyGridMeasuredLine) arrayDeque.get(i25)).g;
                                                                        if (i85 == 0 || i86 > i85 || i25 == arrayDeque.b() - 1) {
                                                                            break;
                                                                        }
                                                                        i85 -= i86;
                                                                        i25++;
                                                                        lazyGridMeasuredLine = (LazyGridMeasuredLine) arrayDeque.get(i25);
                                                                    }
                                                                    i26 = i85;
                                                                }
                                                                int h = Constraints.h(i40);
                                                                f5 = ConstraintsKt.f(i58, i40);
                                                                List list13 = arrayDeque;
                                                                if (!list3.isEmpty()) {
                                                                    list13 = CollectionsKt.F(arrayDeque, list3);
                                                                }
                                                                if (i58 >= Math.min(f5, g)) {
                                                                    z10 = true;
                                                                } else {
                                                                    z10 = false;
                                                                }
                                                                if (z10 && i68 != 0) {
                                                                    InlineClassHelperKt.c("non-zero firstLineScrollOffset");
                                                                }
                                                                size = list13.size();
                                                                z11 = z10;
                                                                int i87 = 0;
                                                                for (i27 = 0; i27 < size; i27++) {
                                                                    i87 += ((LazyGridMeasuredLine) list13.get(i27)).b.length;
                                                                }
                                                                ArrayList arrayList2 = new ArrayList(i87);
                                                                if (!z11) {
                                                                    if (!list2.isEmpty() || !list4.isEmpty()) {
                                                                        InlineClassHelperKt.a("no items");
                                                                    }
                                                                    int size6 = list13.size();
                                                                    int[] iArr4 = new int[size6];
                                                                    for (int i88 = 0; i88 < size6; i88++) {
                                                                        iArr4[i88] = ((LazyGridMeasuredLine) list13.get(i88)).f;
                                                                    }
                                                                    int[] iArr5 = new int[size6];
                                                                    vertical2.b(f5, lazyLayoutMeasureScopeImpl, iArr4, iArr5);
                                                                    IntRange r = ArraysKt.r(iArr5);
                                                                    int i89 = r.j;
                                                                    int i90 = r.k;
                                                                    int i91 = r.l;
                                                                    if ((i91 > 0 && i89 <= i90) || (i91 < 0 && i90 <= i89)) {
                                                                        while (true) {
                                                                            i28 = i58;
                                                                            LazyGridMeasuredItem[] a5 = ((LazyGridMeasuredLine) list13.get(i89)).a(iArr5[i89], h, f5);
                                                                            int length4 = a5.length;
                                                                            int i92 = 0;
                                                                            while (i92 < length4) {
                                                                                int i93 = i92;
                                                                                arrayList2.add(a5[i93]);
                                                                                i92 = i93 + 1;
                                                                            }
                                                                            if (i89 == i90) {
                                                                                break;
                                                                            }
                                                                            i89 += i91;
                                                                            i58 = i28;
                                                                        }
                                                                    } else {
                                                                        i28 = i58;
                                                                    }
                                                                    f6 = f4;
                                                                } else {
                                                                    i28 = i58;
                                                                    int size7 = list2.size() - 1;
                                                                    if (size7 >= 0) {
                                                                        int i94 = i68;
                                                                        while (true) {
                                                                            int i95 = size7 - 1;
                                                                            LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list2.get(size7);
                                                                            i94 -= lazyGridMeasuredItem3.j();
                                                                            lazyGridMeasuredItem3.i(i94, 0, h, f5);
                                                                            arrayList2.add(lazyGridMeasuredItem3);
                                                                            if (i95 < 0) {
                                                                                break;
                                                                            }
                                                                            size7 = i95;
                                                                        }
                                                                    }
                                                                    int size8 = list13.size();
                                                                    int i96 = i68;
                                                                    int i97 = 0;
                                                                    List list14 = list13;
                                                                    while (i97 < size8) {
                                                                        LazyGridMeasuredLine lazyGridMeasuredLine5 = (LazyGridMeasuredLine) list14.get(i97);
                                                                        List list15 = list14;
                                                                        LazyGridMeasuredItem[] a6 = lazyGridMeasuredLine5.a(i96, h, f5);
                                                                        int i98 = size8;
                                                                        int length5 = a6.length;
                                                                        int i99 = 0;
                                                                        while (i99 < length5) {
                                                                            int i100 = i99;
                                                                            arrayList2.add(a6[i100]);
                                                                            i99 = i100 + 1;
                                                                        }
                                                                        i96 += lazyGridMeasuredLine5.g;
                                                                        i97++;
                                                                        list14 = list15;
                                                                        size8 = i98;
                                                                    }
                                                                    int size9 = list4.size();
                                                                    for (int i101 = 0; i101 < size9; i101++) {
                                                                        LazyGridMeasuredItem lazyGridMeasuredItem4 = (LazyGridMeasuredItem) list4.get(i101);
                                                                        lazyGridMeasuredItem4.i(i96, 0, h, f5);
                                                                        arrayList2.add(lazyGridMeasuredItem4);
                                                                        i96 += lazyGridMeasuredItem4.j();
                                                                    }
                                                                    f6 = f4;
                                                                }
                                                                lazyLayoutItemAnimator.d((int) f6, h, f5, arrayList2, ((LazyGridItemProviderImpl) lazyGridItemProvider2).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f0, length, z8, i26, i28, coroutineScope2, graphicsContext2);
                                                                ArrayList arrayList3 = arrayList2;
                                                                int i102 = i28;
                                                                if (f0) {
                                                                    long b9 = lazyLayoutItemAnimator.b();
                                                                    i29 = length;
                                                                    f7 = f6;
                                                                    if (!IntSize.a(b9, 0L)) {
                                                                        h = ConstraintsKt.g(Math.max(h, (int) (b9 >> 32)), i40);
                                                                        int f14 = ConstraintsKt.f(Math.max(f5, (int) (b9 & 4294967295L)), i40);
                                                                        if (f14 != f5) {
                                                                            int size10 = arrayList3.size();
                                                                            for (int i103 = 0; i103 < size10; i103++) {
                                                                                LazyGridMeasuredItem lazyGridMeasuredItem5 = (LazyGridMeasuredItem) arrayList3.get(i103);
                                                                                lazyGridMeasuredItem5.q = f14;
                                                                                lazyGridMeasuredItem5.s = lazyGridMeasuredItem5.f + f14;
                                                                            }
                                                                        }
                                                                        arrayList3 = arrayList3;
                                                                        i30 = f14;
                                                                        int i104 = h;
                                                                        ((LazyGridItemProviderImpl) lazyGridItemProvider2).b.getClass();
                                                                        i31 = i22;
                                                                        List a7 = LazyLayoutStickyItemsKt.a(this.h, i73, i31, arrayList3, IntListKt.a, i45, i104, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                                        if (i31 != i41 - 1 && i102 <= g) {
                                                                            z12 = false;
                                                                        } else {
                                                                            z12 = true;
                                                                        }
                                                                        ha haVar = new ha(mutableState, arrayList3, a7, f0, 0);
                                                                        int g3 = ConstraintsKt.g(i104 + i38, j);
                                                                        int f15 = ConstraintsKt.f(i30 + y04, j);
                                                                        map = EmptyMap.j;
                                                                        MeasureResult B = subcomposeMeasureScope2.B(g3, f15, map, haVar);
                                                                        List a8 = LazyLayoutMeasuredItemKt.a(i73, i31, arrayList3, a7);
                                                                        Orientation orientation3 = Orientation.j;
                                                                        size2 = a7.size();
                                                                        int i105 = 0;
                                                                        for (i32 = 0; i32 < size2; i32++) {
                                                                            i105 += ((LazyGridMeasuredItem) a7.get(i32)).n;
                                                                        }
                                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                                        lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B, f3, z9, coroutineScope2, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i105, a8, i47, i56, i41, orientation3, i39, i53);
                                                                    } else {
                                                                        arrayList3 = arrayList3;
                                                                    }
                                                                } else {
                                                                    i29 = length;
                                                                    f7 = f6;
                                                                }
                                                                i30 = f5;
                                                                int i1042 = h;
                                                                ((LazyGridItemProviderImpl) lazyGridItemProvider2).b.getClass();
                                                                i31 = i22;
                                                                List a72 = LazyLayoutStickyItemsKt.a(this.h, i73, i31, arrayList3, IntListKt.a, i45, i1042, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                                if (i31 != i41 - 1) {
                                                                }
                                                                z12 = true;
                                                                ha haVar2 = new ha(mutableState, arrayList3, a72, f0, 0);
                                                                int g32 = ConstraintsKt.g(i1042 + i38, j);
                                                                int f152 = ConstraintsKt.f(i30 + y04, j);
                                                                map = EmptyMap.j;
                                                                MeasureResult B2 = subcomposeMeasureScope2.B(g32, f152, map, haVar2);
                                                                List a82 = LazyLayoutMeasuredItemKt.a(i73, i31, arrayList3, a72);
                                                                Orientation orientation32 = Orientation.j;
                                                                size2 = a72.size();
                                                                int i1052 = 0;
                                                                while (i32 < size2) {
                                                                }
                                                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                                lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B2, f3, z9, coroutineScope2, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i1052, a82, i47, i56, i41, orientation32, i39, i53);
                                                            }
                                                            f4 = f10;
                                                            list3 = null;
                                                            if (list3 == null) {
                                                            }
                                                            int[] iArr32 = a4.a;
                                                            i23 = a4.b;
                                                            list4 = null;
                                                            i24 = 0;
                                                            while (i24 < i23) {
                                                            }
                                                            if (list4 == null) {
                                                            }
                                                            if (i45 > 0) {
                                                            }
                                                            b2 = arrayDeque.b();
                                                            int i852 = i69;
                                                            lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                            i25 = 0;
                                                            while (i25 < b2) {
                                                            }
                                                            i26 = i852;
                                                            int h2 = Constraints.h(i40);
                                                            f5 = ConstraintsKt.f(i58, i40);
                                                            List list132 = arrayDeque;
                                                            if (!list3.isEmpty()) {
                                                            }
                                                            if (i58 >= Math.min(f5, g)) {
                                                            }
                                                            if (z10) {
                                                                InlineClassHelperKt.c("non-zero firstLineScrollOffset");
                                                            }
                                                            size = list132.size();
                                                            z11 = z10;
                                                            int i872 = 0;
                                                            while (i27 < size) {
                                                            }
                                                            ArrayList arrayList22 = new ArrayList(i872);
                                                            if (!z11) {
                                                            }
                                                            lazyLayoutItemAnimator.d((int) f6, h2, f5, arrayList22, ((LazyGridItemProviderImpl) lazyGridItemProvider2).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f0, length, z8, i26, i28, coroutineScope2, graphicsContext2);
                                                            ArrayList arrayList32 = arrayList22;
                                                            int i1022 = i28;
                                                            if (f0) {
                                                            }
                                                            i30 = f5;
                                                            int i10422 = h2;
                                                            ((LazyGridItemProviderImpl) lazyGridItemProvider2).b.getClass();
                                                            i31 = i22;
                                                            List a722 = LazyLayoutStickyItemsKt.a(this.h, i73, i31, arrayList32, IntListKt.a, i45, i10422, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                            if (i31 != i41 - 1) {
                                                            }
                                                            z12 = true;
                                                            ha haVar22 = new ha(mutableState, arrayList32, a722, f0, 0);
                                                            int g322 = ConstraintsKt.g(i10422 + i38, j);
                                                            int f1522 = ConstraintsKt.f(i30 + y04, j);
                                                            map = EmptyMap.j;
                                                            MeasureResult B22 = subcomposeMeasureScope2.B(g322, f1522, map, haVar22);
                                                            List a822 = LazyLayoutMeasuredItemKt.a(i73, i31, arrayList32, a722);
                                                            Orientation orientation322 = Orientation.j;
                                                            size2 = a722.size();
                                                            int i10522 = 0;
                                                            while (i32 < size2) {
                                                            }
                                                            subcomposeMeasureScope = subcomposeMeasureScope2;
                                                            lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                            lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B22, f3, z9, coroutineScope2, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i10522, a822, i47, i56, i41, orientation322, i39, i53);
                                                        }
                                                    }
                                                }
                                                i22 = i19;
                                                f4 = f10;
                                                list3 = null;
                                                if (list3 == null) {
                                                }
                                                int[] iArr322 = a4.a;
                                                i23 = a4.b;
                                                list4 = null;
                                                i24 = 0;
                                                while (i24 < i23) {
                                                }
                                                if (list4 == null) {
                                                }
                                                if (i45 > 0) {
                                                }
                                                b2 = arrayDeque.b();
                                                int i8522 = i69;
                                                lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                i25 = 0;
                                                while (i25 < b2) {
                                                }
                                                i26 = i8522;
                                                int h22 = Constraints.h(i40);
                                                f5 = ConstraintsKt.f(i58, i40);
                                                List list1322 = arrayDeque;
                                                if (!list3.isEmpty()) {
                                                }
                                                if (i58 >= Math.min(f5, g)) {
                                                }
                                                if (z10) {
                                                }
                                                size = list1322.size();
                                                z11 = z10;
                                                int i8722 = 0;
                                                while (i27 < size) {
                                                }
                                                ArrayList arrayList222 = new ArrayList(i8722);
                                                if (!z11) {
                                                }
                                                lazyLayoutItemAnimator.d((int) f6, h22, f5, arrayList222, ((LazyGridItemProviderImpl) lazyGridItemProvider2).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f0, length, z8, i26, i28, coroutineScope2, graphicsContext2);
                                                ArrayList arrayList322 = arrayList222;
                                                int i10222 = i28;
                                                if (f0) {
                                                }
                                                i30 = f5;
                                                int i104222 = h22;
                                                ((LazyGridItemProviderImpl) lazyGridItemProvider2).b.getClass();
                                                i31 = i22;
                                                List a7222 = LazyLayoutStickyItemsKt.a(this.h, i73, i31, arrayList322, IntListKt.a, i45, i104222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                if (i31 != i41 - 1) {
                                                }
                                                z12 = true;
                                                ha haVar222 = new ha(mutableState, arrayList322, a7222, f0, 0);
                                                int g3222 = ConstraintsKt.g(i104222 + i38, j);
                                                int f15222 = ConstraintsKt.f(i30 + y04, j);
                                                map = EmptyMap.j;
                                                MeasureResult B222 = subcomposeMeasureScope2.B(g3222, f15222, map, haVar222);
                                                List a8222 = LazyLayoutMeasuredItemKt.a(i73, i31, arrayList322, a7222);
                                                Orientation orientation3222 = Orientation.j;
                                                size2 = a7222.size();
                                                int i105222 = 0;
                                                while (i32 < size2) {
                                                }
                                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B222, f3, z9, coroutineScope2, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i105222, a8222, i47, i56, i41, orientation3222, i39, i53);
                                            }
                                        } else {
                                            f3 = f13;
                                        }
                                        i19 = 0;
                                        int[] iArr22 = a4.a;
                                        i20 = a4.b;
                                        list = null;
                                        i21 = 0;
                                        while (true) {
                                            lazyGridSpanLayoutProvider = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.e;
                                            if (i21 < i20) {
                                            }
                                            i21++;
                                            i20 = i70;
                                            i18 = i35;
                                        }
                                        int i732 = i18;
                                        if (list != null) {
                                        }
                                        if (f0) {
                                            list5 = lazyGridMeasureResult2.n;
                                            if (!list5.isEmpty()) {
                                            }
                                        }
                                        i22 = i19;
                                        f4 = f10;
                                        list3 = null;
                                        if (list3 == null) {
                                        }
                                        int[] iArr3222 = a4.a;
                                        i23 = a4.b;
                                        list4 = null;
                                        i24 = 0;
                                        while (i24 < i23) {
                                        }
                                        if (list4 == null) {
                                        }
                                        if (i45 > 0) {
                                        }
                                        b2 = arrayDeque.b();
                                        int i85222 = i69;
                                        lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                        i25 = 0;
                                        while (i25 < b2) {
                                        }
                                        i26 = i85222;
                                        int h222 = Constraints.h(i40);
                                        f5 = ConstraintsKt.f(i58, i40);
                                        List list13222 = arrayDeque;
                                        if (!list3.isEmpty()) {
                                        }
                                        if (i58 >= Math.min(f5, g)) {
                                        }
                                        if (z10) {
                                        }
                                        size = list13222.size();
                                        z11 = z10;
                                        int i87222 = 0;
                                        while (i27 < size) {
                                        }
                                        ArrayList arrayList2222 = new ArrayList(i87222);
                                        if (!z11) {
                                        }
                                        lazyLayoutItemAnimator.d((int) f6, h222, f5, arrayList2222, ((LazyGridItemProviderImpl) lazyGridItemProvider2).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f0, length, z8, i26, i28, coroutineScope2, graphicsContext2);
                                        ArrayList arrayList3222 = arrayList2222;
                                        int i102222 = i28;
                                        if (f0) {
                                        }
                                        i30 = f5;
                                        int i1042222 = h222;
                                        ((LazyGridItemProviderImpl) lazyGridItemProvider2).b.getClass();
                                        i31 = i22;
                                        List a72222 = LazyLayoutStickyItemsKt.a(this.h, i732, i31, arrayList3222, IntListKt.a, i45, i1042222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                        if (i31 != i41 - 1) {
                                        }
                                        z12 = true;
                                        ha haVar2222 = new ha(mutableState, arrayList3222, a72222, f0, 0);
                                        int g32222 = ConstraintsKt.g(i1042222 + i38, j);
                                        int f152222 = ConstraintsKt.f(i30 + y04, j);
                                        map = EmptyMap.j;
                                        MeasureResult B2222 = subcomposeMeasureScope2.B(g32222, f152222, map, haVar2222);
                                        List a82222 = LazyLayoutMeasuredItemKt.a(i732, i31, arrayList3222, a72222);
                                        Orientation orientation32222 = Orientation.j;
                                        size2 = a72222.size();
                                        int i1052222 = 0;
                                        while (i32 < size2) {
                                        }
                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                        lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B2222, f3, z9, coroutineScope2, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i1052222, a82222, i47, i56, i41, orientation32222, i39, i53);
                                    }
                                    LazyGridState lazyGridState6 = lazyGridState4;
                                    lazyGridState6.f(lazyGridMeasureResult, subcomposeMeasureScope.f0(), false);
                                    obj2 = lazyGridState6.a;
                                    if (obj2 instanceof CacheWindowLogic) {
                                        cacheWindowLogic2 = (CacheWindowLogic) obj2;
                                    }
                                    cacheWindowLogic = cacheWindowLogic2;
                                    if (cacheWindowLogic == null) {
                                        List list16 = lazyGridMeasureResult.n;
                                        Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                                        try {
                                            if (cacheWindowLogic.b() && !list16.isEmpty()) {
                                                LazyGridItemInfo lazyGridItemInfo3 = (LazyGridItemInfo) CollectionsKt.s(list16);
                                                Orientation orientation4 = Orientation.j;
                                                Orientation orientation5 = lazyGridMeasureResult.r;
                                                if (orientation5 == orientation4) {
                                                    i36 = ((LazyGridMeasuredItem) lazyGridItemInfo3).v;
                                                } else {
                                                    i36 = ((LazyGridMeasuredItem) lazyGridItemInfo3).w;
                                                }
                                                LazyGridItemInfo lazyGridItemInfo4 = (LazyGridItemInfo) CollectionsKt.z(list16);
                                                if (orientation5 == orientation4) {
                                                    i37 = ((LazyGridMeasuredItem) lazyGridItemInfo4).v;
                                                } else {
                                                    i37 = ((LazyGridMeasuredItem) lazyGridItemInfo4).w;
                                                }
                                                int i106 = cacheWindowLogic.h;
                                                while (i106 < i36) {
                                                    LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$17 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12;
                                                    lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$17.b(i106);
                                                    i106++;
                                                    lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$17;
                                                }
                                                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$18 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12;
                                                int i107 = i37 + 1;
                                                int i108 = cacheWindowLogic.i;
                                                if (i107 <= i108) {
                                                    while (true) {
                                                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$18.b(i107);
                                                        if (i107 == i108) {
                                                            break;
                                                        }
                                                        i107++;
                                                    }
                                                }
                                            }
                                            return lazyGridMeasureResult;
                                        } finally {
                                            Trace.endSection();
                                        }
                                    }
                                    return lazyGridMeasureResult;
                                }
                                c = lazyGridSpanLayoutProvider2.c(a3);
                                b = lazyGridScrollPosition.b();
                                Snapshot.Companion.e(a, b3, function12);
                                MutableIntList a42 = LazyLayoutBeyondBoundsStateKt.a(lazyGridItemProvider, lazyGridState5.q, lazyGridState5.n);
                                if (subcomposeMeasureScope2.f0()) {
                                }
                                f2 = lazyGridState5.g;
                                LazyLayoutItemAnimator lazyLayoutItemAnimator2 = lazyGridState5.m;
                                boolean f02 = subcomposeMeasureScope2.f0();
                                LazyGridMeasureResult lazyGridMeasureResult22 = lazyGridState5.c;
                                MutableState mutableState2 = lazyGridState5.r;
                                if (i14 < 0) {
                                }
                                if (i39 < 0) {
                                }
                                LazyGridItemProvider lazyGridItemProvider22 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.b;
                                CoroutineScope coroutineScope22 = this.f;
                                int i422 = c;
                                GraphicsContext graphicsContext22 = this.g;
                                float f82 = f2;
                                List list72 = EmptyList.j;
                                if (i41 > 0) {
                                }
                                LazyGridState lazyGridState62 = lazyGridState4;
                                lazyGridState62.f(lazyGridMeasureResult, subcomposeMeasureScope.f0(), false);
                                obj2 = lazyGridState62.a;
                                if (obj2 instanceof CacheWindowLogic) {
                                }
                                cacheWindowLogic = cacheWindowLogic2;
                                if (cacheWindowLogic == null) {
                                }
                            } finally {
                                Snapshot.Companion.e(a, b3, function12);
                            }
                        }
                    };
                    kProperty0 = kProperty02;
                    gapComposer2.g0(obj);
                } else {
                    obj = K5;
                    lazySemanticsKt$rememberLazyGridSemanticState$1$1 = lazySemanticsKt$rememberLazyGridSemanticState$1$12;
                    kProperty0 = kProperty02;
                    i5 = 32;
                    z3 = true;
                    lazyGridState3 = lazyGridState;
                }
                LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy = (LazyLayoutMeasurePolicy) obj;
                z4 = i12 != i5 ? z3 : false;
                K = gapComposer2.K();
                if (!z4 || K == composer$Companion$Empty$1) {
                    K = new r1(26, lazyGridState3);
                    gapComposer2.g0(K);
                }
                BringIntoViewSpec a = LazyLayoutBringIntoViewSpecKt.a((Function0) K, gapComposer2, (i6 >> 12) & 126);
                Orientation orientation = Orientation.j;
                if (!z) {
                    gapComposer2.W(27471107);
                    if (((i8 ^ 6) <= 4 || !gapComposer2.f(lazyGridState3)) && (i7 & 6) != 4) {
                        z3 = false;
                    }
                    Object K6 = gapComposer2.K();
                    if (z3 || K6 == composer$Companion$Empty$1) {
                        K6 = new LazyGridBeyondBoundsState(lazyGridState3);
                        gapComposer2.g0(K6);
                    }
                    modifier2 = LazyLayoutBeyondBoundsModifierLocalKt.a((LazyGridBeyondBoundsState) K6, lazyGridState3.n, orientation);
                    gapComposer2.p(false);
                } else {
                    gapComposer2.W(27767312);
                    gapComposer2.p(false);
                    modifier2 = Modifier.Companion.b;
                }
                lazyGridState2 = lazyGridState3;
                gapComposer = gapComposer2;
                LazyLayoutKt.a(kProperty0, ScrollableAreaKt.a(LazyLayoutItemAnimatorModifierKt.a(LazyLayoutSemanticsKt.a(modifier.l(lazyGridState3.k).l(lazyGridState3.l), kProperty0, lazySemanticsKt$rememberLazyGridSemanticState$1$1, orientation, z).l(modifier2), lazyGridState3.m), lazyGridState3, orientation, overscrollEffect, z, flingBehavior, lazyGridState3.f, a), lazyGridState2.o, lazyLayoutMeasurePolicy, gapComposer, 0);
            }
            z2 = true;
            f = ((((i13 & 29360128) ^ 12582912) <= 8388608 && gapComposer2.f(vertical)) || (i13 & 12582912) == 8388608) | z7 | z2 | ((((458752 & i13) ^ 196608) <= 131072 && gapComposer2.g(true)) || (i13 & 196608) == 131072) | ((((i13 & 3670016) ^ 1572864) <= 1048576 && gapComposer2.f(horizontal)) || (i13 & 1572864) == 1048576) | gapComposer2.f(graphicsContext);
            Object K52 = gapComposer2.K();
            if (f) {
            }
            lazyGridState3 = lazyGridState;
            lazySemanticsKt$rememberLazyGridSemanticState$1$1 = lazySemanticsKt$rememberLazyGridSemanticState$1$12;
            i5 = 32;
            z3 = true;
            obj = new LazyLayoutMeasurePolicy(paddingValuesImpl, kProperty02, lazyGridSlotsProvider, vertical, horizontal, coroutineScope, graphicsContext, stickyItemsPlacement$Companion$StickToTopPlacement$1) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1
                public final /* synthetic */ PaddingValuesImpl b;
                public final /* synthetic */ Function0 c;
                public final /* synthetic */ LazyGridSlotsProvider d;
                public final /* synthetic */ Arrangement.Vertical e;
                public final /* synthetic */ CoroutineScope f;
                public final /* synthetic */ GraphicsContext g;
                public final /* synthetic */ StickyItemsPlacement h;

                {
                    this.f = coroutineScope;
                    this.g = graphicsContext;
                    this.h = stickyItemsPlacement$Companion$StickToTopPlacement$1;
                }

                /* JADX WARN: Code restructure failed: missing block: B:192:0x0497, code lost:
                
                    r8 = (androidx.compose.foundation.lazy.grid.LazyGridItemInfo) r5.get(r8);
                 */
                /* JADX WARN: Removed duplicated region for block: B:163:0x041f  */
                /* JADX WARN: Removed duplicated region for block: B:175:0x045d A[EDGE_INSN: B:175:0x045d->B:176:0x045d BREAK  A[LOOP:6: B:161:0x041b->B:171:0x0456], SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:178:0x0461  */
                /* JADX WARN: Removed duplicated region for block: B:183:0x0472  */
                /* JADX WARN: Removed duplicated region for block: B:214:0x052e  */
                /* JADX WARN: Removed duplicated region for block: B:217:0x0539  */
                /* JADX WARN: Removed duplicated region for block: B:244:0x05ab  */
                /* JADX WARN: Removed duplicated region for block: B:246:0x05af A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:250:0x05f4  */
                /* JADX WARN: Removed duplicated region for block: B:253:0x05fe  */
                /* JADX WARN: Removed duplicated region for block: B:255:0x0604 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:259:0x0618 A[LOOP:14: B:258:0x0616->B:259:0x0618, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:263:0x0630  */
                /* JADX WARN: Removed duplicated region for block: B:285:0x073e  */
                /* JADX WARN: Removed duplicated region for block: B:297:0x07c0 A[ADDED_TO_REGION] */
                /* JADX WARN: Removed duplicated region for block: B:301:0x07fe A[LOOP:19: B:300:0x07fc->B:301:0x07fe, LOOP_END] */
                /* JADX WARN: Removed duplicated region for block: B:307:0x078a  */
                /* JADX WARN: Removed duplicated region for block: B:312:0x06a1  */
                /* JADX WARN: Removed duplicated region for block: B:332:0x0601  */
                /* JADX WARN: Removed duplicated region for block: B:335:0x05c2  */
                /* JADX WARN: Removed duplicated region for block: B:365:0x0464  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x01c3  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x01cb  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x01e4  */
                /* JADX WARN: Removed duplicated region for block: B:49:0x083b  */
                /* JADX WARN: Removed duplicated region for block: B:52:0x0843  */
                /* JADX WARN: Removed duplicated region for block: B:84:0x08a3 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:85:0x0273  */
                @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final MeasureResult a(LazyLayoutMeasureScopeImpl lazyLayoutMeasureScopeImpl, long j) {
                    boolean z8;
                    LazyGridSlots lazyGridSlots;
                    Orientation orientation2;
                    LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
                    Function1 function12;
                    int i14;
                    int c;
                    int b;
                    float f2;
                    LazyGridState lazyGridState4;
                    int i15;
                    boolean z9;
                    int i16;
                    int i17;
                    int i18;
                    float f3;
                    int i19;
                    int i20;
                    List list;
                    int i21;
                    LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider;
                    List list2;
                    int i22;
                    float f4;
                    List list3;
                    int i23;
                    List list4;
                    int i24;
                    int b2;
                    LazyGridMeasuredLine lazyGridMeasuredLine;
                    int i25;
                    int i26;
                    int f5;
                    boolean z10;
                    int size;
                    boolean z11;
                    int i27;
                    int i28;
                    float f6;
                    int i29;
                    float f7;
                    int i30;
                    int i31;
                    boolean z12;
                    Map map;
                    int size2;
                    int i32;
                    SubcomposeMeasureScope subcomposeMeasureScope;
                    LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12;
                    LazyGridMeasureResult lazyGridMeasureResult;
                    int[] iArr;
                    int i33;
                    List list5;
                    LazyGridItemInfo lazyGridItemInfo;
                    int i34;
                    int i35;
                    List list6;
                    LazyGridMeasuredItem lazyGridMeasuredItem;
                    LazyGridMeasuredItem lazyGridMeasuredItem2;
                    Object obj2;
                    CacheWindowLogic cacheWindowLogic;
                    int i36;
                    int i37;
                    Map map2;
                    SubcomposeMeasureScope subcomposeMeasureScope2 = lazyLayoutMeasureScopeImpl.k;
                    LazyGridState lazyGridState5 = LazyGridState.this;
                    lazyGridState5.s.getValue();
                    if (!lazyGridState5.b && !subcomposeMeasureScope2.f0()) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    Orientation orientation22 = Orientation.j;
                    CheckScrollableContainerConstraintsKt.a(j, orientation22);
                    LayoutDirection layoutDirection = subcomposeMeasureScope2.getLayoutDirection();
                    PaddingValuesImpl paddingValuesImpl2 = this.b;
                    int y0 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b(layoutDirection));
                    int y02 = subcomposeMeasureScope2.y0(paddingValuesImpl2.c(subcomposeMeasureScope2.getLayoutDirection()));
                    int y03 = subcomposeMeasureScope2.y0(paddingValuesImpl2.b);
                    int y04 = subcomposeMeasureScope2.y0(paddingValuesImpl2.d) + y03;
                    int i38 = y02 + y0;
                    int i39 = y04 - y03;
                    long i40 = ConstraintsKt.i(-i38, -y04, j);
                    LazyGridItemProvider lazyGridItemProvider = (LazyGridItemProvider) this.c.a();
                    LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider2 = ((LazyGridItemProviderImpl) lazyGridItemProvider).b.a;
                    GridSlotCache gridSlotCache = (GridSlotCache) this.d;
                    if (gridSlotCache.d != null && Constraints.b(gridSlotCache.b, i40) && gridSlotCache.c == subcomposeMeasureScope2.getDensity()) {
                        lazyGridSlots = gridSlotCache.d;
                        lazyGridSlots.getClass();
                    } else {
                        gridSlotCache.b = i40;
                        gridSlotCache.c = subcomposeMeasureScope2.getDensity();
                        lazyGridSlots = (LazyGridSlots) gridSlotCache.a.n(lazyLayoutMeasureScopeImpl, new Constraints(i40));
                        gridSlotCache.d = lazyGridSlots;
                    }
                    LazyGridSlots lazyGridSlots2 = lazyGridSlots;
                    int length = lazyGridSlots2.a.length;
                    if (length != lazyGridSpanLayoutProvider2.i) {
                        lazyGridSpanLayoutProvider2.i = length;
                        ArrayList arrayList = lazyGridSpanLayoutProvider2.b;
                        arrayList.clear();
                        orientation2 = orientation22;
                        arrayList.add(new LazyGridSpanLayoutProvider.Bucket(0, 0));
                        lazyGridSpanLayoutProvider2.c = 0;
                        lazyGridSpanLayoutProvider2.d = 0;
                        lazyGridSpanLayoutProvider2.e = 0;
                        lazyGridSpanLayoutProvider2.f = -1;
                        lazyGridSpanLayoutProvider2.g.clear();
                    } else {
                        orientation2 = orientation22;
                    }
                    Arrangement.Vertical vertical2 = this.e;
                    int y05 = subcomposeMeasureScope2.y0(vertical2.a());
                    int i41 = ((LazyGridItemProviderImpl) lazyGridItemProvider).b.e().b;
                    int g = Constraints.g(j) - y04;
                    LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = new LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1(lazyGridItemProvider, lazyLayoutMeasureScopeImpl, y05, LazyGridState.this, y03, i39, (y0 << 32) | (y03 & 4294967295L));
                    LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13 = new LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1(lazyGridSlots2, i41, y05, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, lazyGridSpanLayoutProvider2);
                    defpackage.b bVar = new defpackage.b(21, lazyGridSpanLayoutProvider2, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13);
                    defpackage.c cVar = new defpackage.c(26, lazyGridSpanLayoutProvider2);
                    Snapshot a2 = Snapshot.Companion.a();
                    CacheWindowLogic cacheWindowLogic2 = null;
                    if (a2 != null) {
                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13;
                        function12 = a2.e();
                    } else {
                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$13;
                        function12 = null;
                    }
                    Snapshot b3 = Snapshot.Companion.b(a2);
                    try {
                        LazyGridScrollPosition lazyGridScrollPosition = lazyGridState5.d;
                        int a22 = lazyGridScrollPosition.a();
                        int a3 = LazyLayoutItemProviderKt.a(a22, lazyGridItemProvider, lazyGridScrollPosition.d);
                        if (a22 != a3) {
                            i14 = y03;
                            ((SnapshotMutableIntStateImpl) lazyGridScrollPosition.a).k(a3);
                            lazyGridScrollPosition.e.b(a22);
                        } else {
                            i14 = y03;
                        }
                        if (a3 >= i41 && i41 > 0) {
                            c = lazyGridSpanLayoutProvider2.c(i41 - 1);
                            b = 0;
                            Snapshot.Companion.e(a2, b3, function12);
                            MutableIntList a42 = LazyLayoutBeyondBoundsStateKt.a(lazyGridItemProvider, lazyGridState5.q, lazyGridState5.n);
                            if (subcomposeMeasureScope2.f0() && z8) {
                                f2 = ((Number) ((SnapshotMutableStateImpl) lazyGridState5.v.b.k).getValue()).floatValue();
                            } else {
                                f2 = lazyGridState5.g;
                            }
                            LazyLayoutItemAnimator lazyLayoutItemAnimator2 = lazyGridState5.m;
                            boolean f02 = subcomposeMeasureScope2.f0();
                            LazyGridMeasureResult lazyGridMeasureResult22 = lazyGridState5.c;
                            MutableState mutableState2 = lazyGridState5.r;
                            if (i14 < 0) {
                                InlineClassHelperKt.a("negative beforeContentPadding");
                            }
                            if (i39 < 0) {
                                InlineClassHelperKt.a("negative afterContentPadding");
                            }
                            LazyGridItemProvider lazyGridItemProvider22 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.b;
                            CoroutineScope coroutineScope22 = this.f;
                            int i422 = c;
                            GraphicsContext graphicsContext22 = this.g;
                            float f82 = f2;
                            List list72 = EmptyList.j;
                            if (i41 > 0) {
                                int j2 = Constraints.j(i40);
                                int i43 = Constraints.i(i40);
                                lazyLayoutItemAnimator2.d(0, j2, i43, new ArrayList(), ((LazyGridItemProviderImpl) lazyGridItemProvider22).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f02, length, z8, 0, 0, coroutineScope22, graphicsContext22);
                                if (!f02) {
                                    long b4 = lazyLayoutItemAnimator2.b();
                                    if (!IntSize.a(b4, 0L)) {
                                        j2 = ConstraintsKt.g((int) (b4 >> 32), i40);
                                        i43 = ConstraintsKt.f((int) (b4 & 4294967295L), i40);
                                    }
                                }
                                a7 a7Var = new a7(15);
                                int g2 = ConstraintsKt.g(j2 + i38, j);
                                int f9 = ConstraintsKt.f(i43 + y04, j);
                                map2 = EmptyMap.j;
                                lazyGridState4 = lazyGridState5;
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyGridMeasureResult = new LazyGridMeasureResult(null, 0, false, 0.0f, subcomposeMeasureScope2.B(g2, f9, map2, a7Var), 0.0f, false, coroutineScope22, lazyLayoutMeasureScopeImpl, length, bVar, cVar, 0, list72, -i14, g + i39, 0, orientation2, i39, y05);
                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
                            } else {
                                lazyGridState4 = lazyGridState5;
                                List list8 = list72;
                                int i44 = y05;
                                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;
                                int i45 = i14;
                                int round = Math.round(f82);
                                int i46 = b - round;
                                if (i422 == 0 && i46 < 0) {
                                    round += i46;
                                    i46 = 0;
                                }
                                ArrayDeque arrayDeque = new ArrayDeque();
                                defpackage.b bVar2 = bVar;
                                int i47 = -i45;
                                if (i44 < 0) {
                                    i15 = i44;
                                } else {
                                    i15 = 0;
                                }
                                int i48 = i47 + i15;
                                int i49 = i46 + i48;
                                while (i49 < 0 && i422 > 0) {
                                    defpackage.b bVar3 = bVar2;
                                    int i50 = i422 - 1;
                                    List list9 = list8;
                                    LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$15 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14;
                                    int i51 = i44;
                                    LazyGridMeasuredLine b5 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$15.b(i50);
                                    i422 = i50;
                                    arrayDeque.add(0, b5);
                                    i49 += b5.g;
                                    bVar2 = bVar3;
                                    i44 = i51;
                                    lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$15;
                                    list8 = list9;
                                }
                                defpackage.b bVar4 = bVar2;
                                List list10 = list8;
                                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$14;
                                int i52 = 0;
                                int i53 = i44;
                                if (i49 < i48) {
                                    round -= i48 - i49;
                                    i49 = i48;
                                }
                                int i54 = round;
                                int i55 = i49 - i48;
                                int i56 = g + i39;
                                if (i56 >= 0) {
                                    i52 = i56;
                                }
                                int i57 = i55;
                                int i58 = -i55;
                                int i59 = i422;
                                int i60 = 0;
                                boolean z13 = false;
                                while (i60 < arrayDeque.l) {
                                    if (i58 >= i52) {
                                        arrayDeque.c(i60);
                                        z13 = true;
                                    } else {
                                        i59++;
                                        i58 += ((LazyGridMeasuredLine) arrayDeque.get(i60)).g;
                                        i60++;
                                    }
                                }
                                boolean z14 = z13;
                                int i61 = i59;
                                while (i61 < i41 && (i58 < i52 || i58 <= 0 || arrayDeque.isEmpty())) {
                                    LazyGridMeasuredLine b6 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.b(i61);
                                    int i62 = i52;
                                    int i63 = b6.g;
                                    LazyGridMeasuredItem[] lazyGridMeasuredItemArr = b6.b;
                                    z9 = z14;
                                    if (lazyGridMeasuredItemArr.length == 0) {
                                        break;
                                    }
                                    i58 += i63;
                                    if (i58 <= i48) {
                                        if (lazyGridMeasuredItemArr.length != 0) {
                                            if (lazyGridMeasuredItemArr[lazyGridMeasuredItemArr.length - 1].a != i41 - 1) {
                                                i57 -= i63;
                                                i422 = i61 + 1;
                                                z14 = true;
                                                i61++;
                                                i52 = i62;
                                            }
                                        } else {
                                            fe.o("Array is empty.");
                                            return null;
                                        }
                                    }
                                    arrayDeque.addLast(b6);
                                    z14 = z9;
                                    i61++;
                                    i52 = i62;
                                }
                                z9 = z14;
                                if (i58 < g) {
                                    int i64 = g - i58;
                                    i58 += i64;
                                    int i65 = i57 - i64;
                                    while (i65 < i45 && i422 > 0) {
                                        int i66 = i422 - 1;
                                        LazyGridMeasuredLine b7 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.b(i66);
                                        arrayDeque.add(0, b7);
                                        i65 += b7.g;
                                        i422 = i66;
                                    }
                                    int i67 = i65;
                                    i16 = i64 + i54;
                                    if (i67 < 0) {
                                        i16 += i67;
                                        i58 += i67;
                                        i17 = 0;
                                    } else {
                                        i17 = i67;
                                    }
                                } else {
                                    i16 = i54;
                                    i17 = i57;
                                }
                                float f10 = (Integer.signum(Math.round(f82)) == Integer.signum(i16) && Math.abs(Math.round(f82)) >= Math.abs(i16)) ? i16 : f82;
                                float f11 = f82 - f10;
                                float f12 = 0.0f;
                                if (f02 && i16 > i54 && f11 <= 0.0f) {
                                    f12 = (i16 - i54) + f11;
                                }
                                float f13 = f12;
                                if (i17 < 0) {
                                    InlineClassHelperKt.a("negative initial offset");
                                }
                                int i68 = -i17;
                                LazyGridMeasuredLine lazyGridMeasuredLine2 = (LazyGridMeasuredLine) arrayDeque.f();
                                int i69 = i17;
                                if (lazyGridMeasuredLine2 != null && (lazyGridMeasuredItem2 = (LazyGridMeasuredItem) ArraysKt.q(lazyGridMeasuredLine2.b)) != null) {
                                    i18 = lazyGridMeasuredItem2.a;
                                } else {
                                    i18 = 0;
                                }
                                LazyGridMeasuredLine lazyGridMeasuredLine3 = (LazyGridMeasuredLine) arrayDeque.i();
                                if (lazyGridMeasuredLine3 != null) {
                                    LazyGridMeasuredItem[] lazyGridMeasuredItemArr2 = lazyGridMeasuredLine3.b;
                                    f3 = f13;
                                    if (lazyGridMeasuredItemArr2.length == 0) {
                                        lazyGridMeasuredItem = null;
                                    } else {
                                        lazyGridMeasuredItem = lazyGridMeasuredItemArr2[lazyGridMeasuredItemArr2.length - 1];
                                    }
                                    if (lazyGridMeasuredItem != null) {
                                        i19 = lazyGridMeasuredItem.a;
                                        int[] iArr22 = a42.a;
                                        i20 = a42.b;
                                        list = null;
                                        i21 = 0;
                                        while (true) {
                                            lazyGridSpanLayoutProvider = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.e;
                                            if (i21 < i20) {
                                                break;
                                            }
                                            int i70 = i20;
                                            int i71 = iArr22[i21];
                                            if (i71 >= 0 && i71 < i18) {
                                                i35 = i18;
                                                int i72 = lazyGridSpanLayoutProvider.i;
                                                int e = lazyGridSpanLayoutProvider.e(i71);
                                                LazyGridMeasuredItem c2 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.c(i71, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.a(0, e), 0, e, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d);
                                                if (list == null) {
                                                    list6 = new ArrayList();
                                                } else {
                                                    list6 = list;
                                                }
                                                list6.add(c2);
                                                list = list6;
                                            } else {
                                                i35 = i18;
                                            }
                                            i21++;
                                            i20 = i70;
                                            i18 = i35;
                                        }
                                        int i732 = i18;
                                        if (list != null) {
                                            list2 = list10;
                                        } else {
                                            list2 = list;
                                        }
                                        if (f02 && lazyGridMeasureResult22 != null) {
                                            list5 = lazyGridMeasureResult22.n;
                                            if (!list5.isEmpty()) {
                                                int size3 = list5.size();
                                                while (true) {
                                                    size3--;
                                                    if (-1 < size3) {
                                                        if (((LazyGridMeasuredItem) ((LazyGridItemInfo) list5.get(size3))).a <= i19 || (size3 != 0 && ((LazyGridMeasuredItem) ((LazyGridItemInfo) list5.get(size3 - 1))).a > i19)) {
                                                        }
                                                    } else {
                                                        lazyGridItemInfo = null;
                                                        break;
                                                    }
                                                }
                                                LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) CollectionsKt.z(list5);
                                                LazyGridMeasuredLine lazyGridMeasuredLine4 = (LazyGridMeasuredLine) CollectionsKt.A(arrayDeque);
                                                if (lazyGridMeasuredLine4 != null) {
                                                    i34 = lazyGridMeasuredLine4.a + 1;
                                                } else {
                                                    i34 = 0;
                                                }
                                                if (lazyGridItemInfo != null) {
                                                    int i74 = ((LazyGridMeasuredItem) lazyGridItemInfo).a;
                                                    i22 = i19;
                                                    int min = Math.min(((LazyGridMeasuredItem) lazyGridItemInfo2).a, i41 - 1);
                                                    if (i74 <= min) {
                                                        list3 = null;
                                                        while (true) {
                                                            if (list3 != null) {
                                                                int size4 = list3.size();
                                                                f4 = f10;
                                                                int i75 = 0;
                                                                while (i75 < size4) {
                                                                    int i76 = size4;
                                                                    LazyGridMeasuredItem[] lazyGridMeasuredItemArr3 = ((LazyGridMeasuredLine) list3.get(i75)).b;
                                                                    List list11 = list3;
                                                                    int length2 = lazyGridMeasuredItemArr3.length;
                                                                    int i77 = 0;
                                                                    while (i77 < length2) {
                                                                        int i78 = i77;
                                                                        if (lazyGridMeasuredItemArr3[i78].a == i74) {
                                                                            list3 = list11;
                                                                            break;
                                                                        }
                                                                        i77 = i78 + 1;
                                                                    }
                                                                    i75++;
                                                                    list3 = list11;
                                                                    size4 = i76;
                                                                }
                                                            } else {
                                                                f4 = f10;
                                                            }
                                                            List list12 = list3;
                                                            if (list12 == null) {
                                                                list3 = new ArrayList();
                                                            } else {
                                                                list3 = list12;
                                                            }
                                                            LazyGridMeasuredLine b8 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.b(i34);
                                                            i34++;
                                                            list3.add(b8);
                                                            if (i74 == min) {
                                                                break;
                                                            }
                                                            i74++;
                                                            f10 = f4;
                                                        }
                                                        if (list3 == null) {
                                                            list3 = list10;
                                                        }
                                                        int[] iArr3222 = a42.a;
                                                        i23 = a42.b;
                                                        list4 = null;
                                                        i24 = 0;
                                                        while (i24 < i23) {
                                                            int i79 = iArr3222[i24];
                                                            if (i22 + 1 <= i79 && i79 < i41) {
                                                                if (f02) {
                                                                    int size5 = list3.size();
                                                                    iArr = iArr3222;
                                                                    int i80 = 0;
                                                                    while (i80 < size5) {
                                                                        int i81 = i80;
                                                                        LazyGridMeasuredItem[] lazyGridMeasuredItemArr4 = ((LazyGridMeasuredLine) list3.get(i80)).b;
                                                                        i33 = i23;
                                                                        int length3 = lazyGridMeasuredItemArr4.length;
                                                                        int i82 = 0;
                                                                        while (i82 < length3) {
                                                                            int i83 = i82;
                                                                            if (lazyGridMeasuredItemArr4[i83].a == i79) {
                                                                                break;
                                                                            }
                                                                            i82 = i83 + 1;
                                                                        }
                                                                        i80 = i81 + 1;
                                                                        i23 = i33;
                                                                    }
                                                                } else {
                                                                    iArr = iArr3222;
                                                                }
                                                                i33 = i23;
                                                                int i84 = lazyGridSpanLayoutProvider.i;
                                                                int e2 = lazyGridSpanLayoutProvider.e(i79);
                                                                LazyGridMeasuredItem c3 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.c(i79, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.a(0, e2), 0, e2, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.d);
                                                                if (list4 == null) {
                                                                    list4 = new ArrayList();
                                                                }
                                                                list4.add(c3);
                                                            } else {
                                                                iArr = iArr3222;
                                                                i33 = i23;
                                                            }
                                                            i24++;
                                                            iArr3222 = iArr;
                                                            i23 = i33;
                                                        }
                                                        if (list4 == null) {
                                                            list4 = list10;
                                                        }
                                                        if (i45 > 0 && i53 >= 0) {
                                                            lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                            i26 = i69;
                                                        } else {
                                                            b2 = arrayDeque.b();
                                                            int i85222 = i69;
                                                            lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                            i25 = 0;
                                                            while (i25 < b2) {
                                                                int i86 = ((LazyGridMeasuredLine) arrayDeque.get(i25)).g;
                                                                if (i85222 == 0 || i86 > i85222 || i25 == arrayDeque.b() - 1) {
                                                                    break;
                                                                }
                                                                i85222 -= i86;
                                                                i25++;
                                                                lazyGridMeasuredLine = (LazyGridMeasuredLine) arrayDeque.get(i25);
                                                            }
                                                            i26 = i85222;
                                                        }
                                                        int h222 = Constraints.h(i40);
                                                        f5 = ConstraintsKt.f(i58, i40);
                                                        List list13222 = arrayDeque;
                                                        if (!list3.isEmpty()) {
                                                            list13222 = CollectionsKt.F(arrayDeque, list3);
                                                        }
                                                        if (i58 >= Math.min(f5, g)) {
                                                            z10 = true;
                                                        } else {
                                                            z10 = false;
                                                        }
                                                        if (z10 && i68 != 0) {
                                                            InlineClassHelperKt.c("non-zero firstLineScrollOffset");
                                                        }
                                                        size = list13222.size();
                                                        z11 = z10;
                                                        int i87222 = 0;
                                                        for (i27 = 0; i27 < size; i27++) {
                                                            i87222 += ((LazyGridMeasuredLine) list13222.get(i27)).b.length;
                                                        }
                                                        ArrayList arrayList2222 = new ArrayList(i87222);
                                                        if (!z11) {
                                                            if (!list2.isEmpty() || !list4.isEmpty()) {
                                                                InlineClassHelperKt.a("no items");
                                                            }
                                                            int size6 = list13222.size();
                                                            int[] iArr4 = new int[size6];
                                                            for (int i88 = 0; i88 < size6; i88++) {
                                                                iArr4[i88] = ((LazyGridMeasuredLine) list13222.get(i88)).f;
                                                            }
                                                            int[] iArr5 = new int[size6];
                                                            vertical2.b(f5, lazyLayoutMeasureScopeImpl, iArr4, iArr5);
                                                            IntRange r = ArraysKt.r(iArr5);
                                                            int i89 = r.j;
                                                            int i90 = r.k;
                                                            int i91 = r.l;
                                                            if ((i91 > 0 && i89 <= i90) || (i91 < 0 && i90 <= i89)) {
                                                                while (true) {
                                                                    i28 = i58;
                                                                    LazyGridMeasuredItem[] a5 = ((LazyGridMeasuredLine) list13222.get(i89)).a(iArr5[i89], h222, f5);
                                                                    int length4 = a5.length;
                                                                    int i92 = 0;
                                                                    while (i92 < length4) {
                                                                        int i93 = i92;
                                                                        arrayList2222.add(a5[i93]);
                                                                        i92 = i93 + 1;
                                                                    }
                                                                    if (i89 == i90) {
                                                                        break;
                                                                    }
                                                                    i89 += i91;
                                                                    i58 = i28;
                                                                }
                                                            } else {
                                                                i28 = i58;
                                                            }
                                                            f6 = f4;
                                                        } else {
                                                            i28 = i58;
                                                            int size7 = list2.size() - 1;
                                                            if (size7 >= 0) {
                                                                int i94 = i68;
                                                                while (true) {
                                                                    int i95 = size7 - 1;
                                                                    LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list2.get(size7);
                                                                    i94 -= lazyGridMeasuredItem3.j();
                                                                    lazyGridMeasuredItem3.i(i94, 0, h222, f5);
                                                                    arrayList2222.add(lazyGridMeasuredItem3);
                                                                    if (i95 < 0) {
                                                                        break;
                                                                    }
                                                                    size7 = i95;
                                                                }
                                                            }
                                                            int size8 = list13222.size();
                                                            int i96 = i68;
                                                            int i97 = 0;
                                                            List list14 = list13222;
                                                            while (i97 < size8) {
                                                                LazyGridMeasuredLine lazyGridMeasuredLine5 = (LazyGridMeasuredLine) list14.get(i97);
                                                                List list15 = list14;
                                                                LazyGridMeasuredItem[] a6 = lazyGridMeasuredLine5.a(i96, h222, f5);
                                                                int i98 = size8;
                                                                int length5 = a6.length;
                                                                int i99 = 0;
                                                                while (i99 < length5) {
                                                                    int i100 = i99;
                                                                    arrayList2222.add(a6[i100]);
                                                                    i99 = i100 + 1;
                                                                }
                                                                i96 += lazyGridMeasuredLine5.g;
                                                                i97++;
                                                                list14 = list15;
                                                                size8 = i98;
                                                            }
                                                            int size9 = list4.size();
                                                            for (int i101 = 0; i101 < size9; i101++) {
                                                                LazyGridMeasuredItem lazyGridMeasuredItem4 = (LazyGridMeasuredItem) list4.get(i101);
                                                                lazyGridMeasuredItem4.i(i96, 0, h222, f5);
                                                                arrayList2222.add(lazyGridMeasuredItem4);
                                                                i96 += lazyGridMeasuredItem4.j();
                                                            }
                                                            f6 = f4;
                                                        }
                                                        lazyLayoutItemAnimator2.d((int) f6, h222, f5, arrayList2222, ((LazyGridItemProviderImpl) lazyGridItemProvider22).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f02, length, z8, i26, i28, coroutineScope22, graphicsContext22);
                                                        ArrayList arrayList3222 = arrayList2222;
                                                        int i102222 = i28;
                                                        if (f02) {
                                                            long b9 = lazyLayoutItemAnimator2.b();
                                                            i29 = length;
                                                            f7 = f6;
                                                            if (!IntSize.a(b9, 0L)) {
                                                                h222 = ConstraintsKt.g(Math.max(h222, (int) (b9 >> 32)), i40);
                                                                int f14 = ConstraintsKt.f(Math.max(f5, (int) (b9 & 4294967295L)), i40);
                                                                if (f14 != f5) {
                                                                    int size10 = arrayList3222.size();
                                                                    for (int i103 = 0; i103 < size10; i103++) {
                                                                        LazyGridMeasuredItem lazyGridMeasuredItem5 = (LazyGridMeasuredItem) arrayList3222.get(i103);
                                                                        lazyGridMeasuredItem5.q = f14;
                                                                        lazyGridMeasuredItem5.s = lazyGridMeasuredItem5.f + f14;
                                                                    }
                                                                }
                                                                arrayList3222 = arrayList3222;
                                                                i30 = f14;
                                                                int i1042222 = h222;
                                                                ((LazyGridItemProviderImpl) lazyGridItemProvider22).b.getClass();
                                                                i31 = i22;
                                                                List a72222 = LazyLayoutStickyItemsKt.a(this.h, i732, i31, arrayList3222, IntListKt.a, i45, i1042222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                                if (i31 != i41 - 1 && i102222 <= g) {
                                                                    z12 = false;
                                                                } else {
                                                                    z12 = true;
                                                                }
                                                                ha haVar2222 = new ha(mutableState2, arrayList3222, a72222, f02, 0);
                                                                int g32222 = ConstraintsKt.g(i1042222 + i38, j);
                                                                int f152222 = ConstraintsKt.f(i30 + y04, j);
                                                                map = EmptyMap.j;
                                                                MeasureResult B2222 = subcomposeMeasureScope2.B(g32222, f152222, map, haVar2222);
                                                                List a82222 = LazyLayoutMeasuredItemKt.a(i732, i31, arrayList3222, a72222);
                                                                Orientation orientation32222 = Orientation.j;
                                                                size2 = a72222.size();
                                                                int i1052222 = 0;
                                                                for (i32 = 0; i32 < size2; i32++) {
                                                                    i1052222 += ((LazyGridMeasuredItem) a72222.get(i32)).n;
                                                                }
                                                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                                lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B2222, f3, z9, coroutineScope22, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i1052222, a82222, i47, i56, i41, orientation32222, i39, i53);
                                                            } else {
                                                                arrayList3222 = arrayList3222;
                                                            }
                                                        } else {
                                                            i29 = length;
                                                            f7 = f6;
                                                        }
                                                        i30 = f5;
                                                        int i10422222 = h222;
                                                        ((LazyGridItemProviderImpl) lazyGridItemProvider22).b.getClass();
                                                        i31 = i22;
                                                        List a722222 = LazyLayoutStickyItemsKt.a(this.h, i732, i31, arrayList3222, IntListKt.a, i45, i10422222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                        if (i31 != i41 - 1) {
                                                        }
                                                        z12 = true;
                                                        ha haVar22222 = new ha(mutableState2, arrayList3222, a722222, f02, 0);
                                                        int g322222 = ConstraintsKt.g(i10422222 + i38, j);
                                                        int f1522222 = ConstraintsKt.f(i30 + y04, j);
                                                        map = EmptyMap.j;
                                                        MeasureResult B22222 = subcomposeMeasureScope2.B(g322222, f1522222, map, haVar22222);
                                                        List a822222 = LazyLayoutMeasuredItemKt.a(i732, i31, arrayList3222, a722222);
                                                        Orientation orientation322222 = Orientation.j;
                                                        size2 = a722222.size();
                                                        int i10522222 = 0;
                                                        while (i32 < size2) {
                                                        }
                                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                        lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B22222, f3, z9, coroutineScope22, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i10522222, a822222, i47, i56, i41, orientation322222, i39, i53);
                                                    }
                                                    f4 = f10;
                                                    list3 = null;
                                                    if (list3 == null) {
                                                    }
                                                    int[] iArr32222 = a42.a;
                                                    i23 = a42.b;
                                                    list4 = null;
                                                    i24 = 0;
                                                    while (i24 < i23) {
                                                    }
                                                    if (list4 == null) {
                                                    }
                                                    if (i45 > 0) {
                                                    }
                                                    b2 = arrayDeque.b();
                                                    int i852222 = i69;
                                                    lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                                    i25 = 0;
                                                    while (i25 < b2) {
                                                    }
                                                    i26 = i852222;
                                                    int h2222 = Constraints.h(i40);
                                                    f5 = ConstraintsKt.f(i58, i40);
                                                    List list132222 = arrayDeque;
                                                    if (!list3.isEmpty()) {
                                                    }
                                                    if (i58 >= Math.min(f5, g)) {
                                                    }
                                                    if (z10) {
                                                        InlineClassHelperKt.c("non-zero firstLineScrollOffset");
                                                    }
                                                    size = list132222.size();
                                                    z11 = z10;
                                                    int i872222 = 0;
                                                    while (i27 < size) {
                                                    }
                                                    ArrayList arrayList22222 = new ArrayList(i872222);
                                                    if (!z11) {
                                                    }
                                                    lazyLayoutItemAnimator2.d((int) f6, h2222, f5, arrayList22222, ((LazyGridItemProviderImpl) lazyGridItemProvider22).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f02, length, z8, i26, i28, coroutineScope22, graphicsContext22);
                                                    ArrayList arrayList32222 = arrayList22222;
                                                    int i1022222 = i28;
                                                    if (f02) {
                                                    }
                                                    i30 = f5;
                                                    int i104222222 = h2222;
                                                    ((LazyGridItemProviderImpl) lazyGridItemProvider22).b.getClass();
                                                    i31 = i22;
                                                    List a7222222 = LazyLayoutStickyItemsKt.a(this.h, i732, i31, arrayList32222, IntListKt.a, i45, i104222222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                                    if (i31 != i41 - 1) {
                                                    }
                                                    z12 = true;
                                                    ha haVar222222 = new ha(mutableState2, arrayList32222, a7222222, f02, 0);
                                                    int g3222222 = ConstraintsKt.g(i104222222 + i38, j);
                                                    int f15222222 = ConstraintsKt.f(i30 + y04, j);
                                                    map = EmptyMap.j;
                                                    MeasureResult B222222 = subcomposeMeasureScope2.B(g3222222, f15222222, map, haVar222222);
                                                    List a8222222 = LazyLayoutMeasuredItemKt.a(i732, i31, arrayList32222, a7222222);
                                                    Orientation orientation3222222 = Orientation.j;
                                                    size2 = a7222222.size();
                                                    int i105222222 = 0;
                                                    while (i32 < size2) {
                                                    }
                                                    subcomposeMeasureScope = subcomposeMeasureScope2;
                                                    lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                                    lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B222222, f3, z9, coroutineScope22, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i105222222, a8222222, i47, i56, i41, orientation3222222, i39, i53);
                                                }
                                            }
                                        }
                                        i22 = i19;
                                        f4 = f10;
                                        list3 = null;
                                        if (list3 == null) {
                                        }
                                        int[] iArr322222 = a42.a;
                                        i23 = a42.b;
                                        list4 = null;
                                        i24 = 0;
                                        while (i24 < i23) {
                                        }
                                        if (list4 == null) {
                                        }
                                        if (i45 > 0) {
                                        }
                                        b2 = arrayDeque.b();
                                        int i8522222 = i69;
                                        lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                        i25 = 0;
                                        while (i25 < b2) {
                                        }
                                        i26 = i8522222;
                                        int h22222 = Constraints.h(i40);
                                        f5 = ConstraintsKt.f(i58, i40);
                                        List list1322222 = arrayDeque;
                                        if (!list3.isEmpty()) {
                                        }
                                        if (i58 >= Math.min(f5, g)) {
                                        }
                                        if (z10) {
                                        }
                                        size = list1322222.size();
                                        z11 = z10;
                                        int i8722222 = 0;
                                        while (i27 < size) {
                                        }
                                        ArrayList arrayList222222 = new ArrayList(i8722222);
                                        if (!z11) {
                                        }
                                        lazyLayoutItemAnimator2.d((int) f6, h22222, f5, arrayList222222, ((LazyGridItemProviderImpl) lazyGridItemProvider22).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f02, length, z8, i26, i28, coroutineScope22, graphicsContext22);
                                        ArrayList arrayList322222 = arrayList222222;
                                        int i10222222 = i28;
                                        if (f02) {
                                        }
                                        i30 = f5;
                                        int i1042222222 = h22222;
                                        ((LazyGridItemProviderImpl) lazyGridItemProvider22).b.getClass();
                                        i31 = i22;
                                        List a72222222 = LazyLayoutStickyItemsKt.a(this.h, i732, i31, arrayList322222, IntListKt.a, i45, i1042222222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                        if (i31 != i41 - 1) {
                                        }
                                        z12 = true;
                                        ha haVar2222222 = new ha(mutableState2, arrayList322222, a72222222, f02, 0);
                                        int g32222222 = ConstraintsKt.g(i1042222222 + i38, j);
                                        int f152222222 = ConstraintsKt.f(i30 + y04, j);
                                        map = EmptyMap.j;
                                        MeasureResult B2222222 = subcomposeMeasureScope2.B(g32222222, f152222222, map, haVar2222222);
                                        List a82222222 = LazyLayoutMeasuredItemKt.a(i732, i31, arrayList322222, a72222222);
                                        Orientation orientation32222222 = Orientation.j;
                                        size2 = a72222222.size();
                                        int i1052222222 = 0;
                                        while (i32 < size2) {
                                        }
                                        subcomposeMeasureScope = subcomposeMeasureScope2;
                                        lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                        lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B2222222, f3, z9, coroutineScope22, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i1052222222, a82222222, i47, i56, i41, orientation32222222, i39, i53);
                                    }
                                } else {
                                    f3 = f13;
                                }
                                i19 = 0;
                                int[] iArr222 = a42.a;
                                i20 = a42.b;
                                list = null;
                                i21 = 0;
                                while (true) {
                                    lazyGridSpanLayoutProvider = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16.e;
                                    if (i21 < i20) {
                                    }
                                    i21++;
                                    i20 = i70;
                                    i18 = i35;
                                }
                                int i7322 = i18;
                                if (list != null) {
                                }
                                if (f02) {
                                    list5 = lazyGridMeasureResult22.n;
                                    if (!list5.isEmpty()) {
                                    }
                                }
                                i22 = i19;
                                f4 = f10;
                                list3 = null;
                                if (list3 == null) {
                                }
                                int[] iArr3222222 = a42.a;
                                i23 = a42.b;
                                list4 = null;
                                i24 = 0;
                                while (i24 < i23) {
                                }
                                if (list4 == null) {
                                }
                                if (i45 > 0) {
                                }
                                b2 = arrayDeque.b();
                                int i85222222 = i69;
                                lazyGridMeasuredLine = lazyGridMeasuredLine2;
                                i25 = 0;
                                while (i25 < b2) {
                                }
                                i26 = i85222222;
                                int h222222 = Constraints.h(i40);
                                f5 = ConstraintsKt.f(i58, i40);
                                List list13222222 = arrayDeque;
                                if (!list3.isEmpty()) {
                                }
                                if (i58 >= Math.min(f5, g)) {
                                }
                                if (z10) {
                                }
                                size = list13222222.size();
                                z11 = z10;
                                int i87222222 = 0;
                                while (i27 < size) {
                                }
                                ArrayList arrayList2222222 = new ArrayList(i87222222);
                                if (!z11) {
                                }
                                lazyLayoutItemAnimator2.d((int) f6, h222222, f5, arrayList2222222, ((LazyGridItemProviderImpl) lazyGridItemProvider22).c, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, f02, length, z8, i26, i28, coroutineScope22, graphicsContext22);
                                ArrayList arrayList3222222 = arrayList2222222;
                                int i102222222 = i28;
                                if (f02) {
                                }
                                i30 = f5;
                                int i10422222222 = h222222;
                                ((LazyGridItemProviderImpl) lazyGridItemProvider22).b.getClass();
                                i31 = i22;
                                List a722222222 = LazyLayoutStickyItemsKt.a(this.h, i7322, i31, arrayList3222222, IntListKt.a, i45, i10422222222, i30, new defpackage.b(22, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1));
                                if (i31 != i41 - 1) {
                                }
                                z12 = true;
                                ha haVar22222222 = new ha(mutableState2, arrayList3222222, a722222222, f02, 0);
                                int g322222222 = ConstraintsKt.g(i10422222222 + i38, j);
                                int f1522222222 = ConstraintsKt.f(i30 + y04, j);
                                map = EmptyMap.j;
                                MeasureResult B22222222 = subcomposeMeasureScope2.B(g322222222, f1522222222, map, haVar22222222);
                                List a822222222 = LazyLayoutMeasuredItemKt.a(i7322, i31, arrayList3222222, a722222222);
                                Orientation orientation322222222 = Orientation.j;
                                size2 = a722222222.size();
                                int i10522222222 = 0;
                                while (i32 < size2) {
                                }
                                subcomposeMeasureScope = subcomposeMeasureScope2;
                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$16;
                                lazyGridMeasureResult = new LazyGridMeasureResult(lazyGridMeasuredLine, i26, z12, f7, B22222222, f3, z9, coroutineScope22, lazyLayoutMeasureScopeImpl, i29, bVar4, cVar, i10522222222, a822222222, i47, i56, i41, orientation322222222, i39, i53);
                            }
                            LazyGridState lazyGridState62 = lazyGridState4;
                            lazyGridState62.f(lazyGridMeasureResult, subcomposeMeasureScope.f0(), false);
                            obj2 = lazyGridState62.a;
                            if (obj2 instanceof CacheWindowLogic) {
                                cacheWindowLogic2 = (CacheWindowLogic) obj2;
                            }
                            cacheWindowLogic = cacheWindowLogic2;
                            if (cacheWindowLogic == null) {
                                List list16 = lazyGridMeasureResult.n;
                                Trace.beginSection("compose:lazy:cache_window:keepAroundItems");
                                try {
                                    if (cacheWindowLogic.b() && !list16.isEmpty()) {
                                        LazyGridItemInfo lazyGridItemInfo3 = (LazyGridItemInfo) CollectionsKt.s(list16);
                                        Orientation orientation4 = Orientation.j;
                                        Orientation orientation5 = lazyGridMeasureResult.r;
                                        if (orientation5 == orientation4) {
                                            i36 = ((LazyGridMeasuredItem) lazyGridItemInfo3).v;
                                        } else {
                                            i36 = ((LazyGridMeasuredItem) lazyGridItemInfo3).w;
                                        }
                                        LazyGridItemInfo lazyGridItemInfo4 = (LazyGridItemInfo) CollectionsKt.z(list16);
                                        if (orientation5 == orientation4) {
                                            i37 = ((LazyGridMeasuredItem) lazyGridItemInfo4).v;
                                        } else {
                                            i37 = ((LazyGridMeasuredItem) lazyGridItemInfo4).w;
                                        }
                                        int i106 = cacheWindowLogic.h;
                                        while (i106 < i36) {
                                            LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$17 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12;
                                            lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$17.b(i106);
                                            i106++;
                                            lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$17;
                                        }
                                        LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$18 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$12;
                                        int i107 = i37 + 1;
                                        int i108 = cacheWindowLogic.i;
                                        if (i107 <= i108) {
                                            while (true) {
                                                lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$18.b(i107);
                                                if (i107 == i108) {
                                                    break;
                                                }
                                                i107++;
                                            }
                                        }
                                    }
                                    return lazyGridMeasureResult;
                                } finally {
                                    Trace.endSection();
                                }
                            }
                            return lazyGridMeasureResult;
                        }
                        c = lazyGridSpanLayoutProvider2.c(a3);
                        b = lazyGridScrollPosition.b();
                        Snapshot.Companion.e(a2, b3, function12);
                        MutableIntList a422 = LazyLayoutBeyondBoundsStateKt.a(lazyGridItemProvider, lazyGridState5.q, lazyGridState5.n);
                        if (subcomposeMeasureScope2.f0()) {
                        }
                        f2 = lazyGridState5.g;
                        LazyLayoutItemAnimator lazyLayoutItemAnimator22 = lazyGridState5.m;
                        boolean f022 = subcomposeMeasureScope2.f0();
                        LazyGridMeasureResult lazyGridMeasureResult222 = lazyGridState5.c;
                        MutableState mutableState22 = lazyGridState5.r;
                        if (i14 < 0) {
                        }
                        if (i39 < 0) {
                        }
                        LazyGridItemProvider lazyGridItemProvider222 = lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.b;
                        CoroutineScope coroutineScope222 = this.f;
                        int i4222 = c;
                        GraphicsContext graphicsContext222 = this.g;
                        float f822 = f2;
                        List list722 = EmptyList.j;
                        if (i41 > 0) {
                        }
                        LazyGridState lazyGridState622 = lazyGridState4;
                        lazyGridState622.f(lazyGridMeasureResult, subcomposeMeasureScope.f0(), false);
                        obj2 = lazyGridState622.a;
                        if (obj2 instanceof CacheWindowLogic) {
                        }
                        cacheWindowLogic = cacheWindowLogic2;
                        if (cacheWindowLogic == null) {
                        }
                    } finally {
                        Snapshot.Companion.e(a2, b3, function12);
                    }
                }
            };
            kProperty0 = kProperty02;
            gapComposer2.g0(obj);
            LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = (LazyLayoutMeasurePolicy) obj;
            if (i12 != i5) {
            }
            K = gapComposer2.K();
            if (!z4) {
            }
            K = new r1(26, lazyGridState3);
            gapComposer2.g0(K);
            BringIntoViewSpec a2 = LazyLayoutBringIntoViewSpecKt.a((Function0) K, gapComposer2, (i6 >> 12) & 126);
            Orientation orientation2 = Orientation.j;
            if (!z) {
            }
            lazyGridState2 = lazyGridState3;
            gapComposer = gapComposer2;
            LazyLayoutKt.a(kProperty0, ScrollableAreaKt.a(LazyLayoutItemAnimatorModifierKt.a(LazyLayoutSemanticsKt.a(modifier.l(lazyGridState3.k).l(lazyGridState3.l), kProperty0, lazySemanticsKt$rememberLazyGridSemanticState$1$1, orientation2, z).l(modifier2), lazyGridState3.m), lazyGridState3, orientation2, overscrollEffect, z, flingBehavior, lazyGridState3.f, a2), lazyGridState2.o, lazyLayoutMeasurePolicy2, gapComposer, 0);
        } else {
            lazyGridState2 = lazyGridState;
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final LazyGridState lazyGridState4 = lazyGridState2;
            r.d = new Function2() { // from class: ga
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    LazyGridKt.a(Modifier.this, lazyGridState4, lazyGridSlotsProvider, paddingValuesImpl, flingBehavior, z, overscrollEffect, vertical, horizontal, function1, (Composer) obj2, RecomposeScopeImplKt.a(i | 1), RecomposeScopeImplKt.a(i2));
                    return Unit.a;
                }
            };
        }
    }
}
