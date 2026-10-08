package net.blip.shared;

import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.ma;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import net.blip.shared.SelectableLazyListScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectableLazyListScope implements LazyListScope {
    public final LazyListScope a;
    public final ma b;
    public final HashMap c;
    public int d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SelectableItemInfo {
        public final int a;
        public final MutableStateFlow b;
        public final SharedFlowImpl c;

        public SelectableItemInfo(int i, MutableStateFlow mutableStateFlow, SharedFlowImpl sharedFlowImpl) {
            this.a = i;
            this.b = mutableStateFlow;
            this.c = sharedFlowImpl;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof SelectableItemInfo) {
                SelectableItemInfo selectableItemInfo = (SelectableItemInfo) obj;
                if (this.a == selectableItemInfo.a && this.b == selectableItemInfo.b && this.c == selectableItemInfo.c) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return this.c.hashCode() + ((this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31);
        }

        public final String toString() {
            return "SelectableItemInfo(itemIndex=" + this.a + ", isHighlighted=" + this.b + ", onSelected=" + this.c + ")";
        }
    }

    public SelectableLazyListScope(LazyListScope lazyListScope, ma maVar) {
        lazyListScope.getClass();
        this.a = lazyListScope;
        this.b = maVar;
        this.c = new HashMap();
    }

    public final void a(int i, SelectionListKt$items$3 selectionListKt$items$3, SelectionListKt$items$4 selectionListKt$items$4, final ComposableLambdaImpl composableLambdaImpl) {
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        IntRange j = RangesKt.j(0, i);
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = j.iterator();
        while (((IntProgressionIterator) it).l) {
            Object next = ((IntIterator) it).next();
            if (((Boolean) selectionListKt$items$4.b(Integer.valueOf(((Number) next).intValue()))).booleanValue()) {
                arrayList.add(next);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            int intValue = ((Number) it2.next()).intValue();
            SelectableItemInfo selectableItemInfo = new SelectableItemInfo(this.d + intValue, StateFlowKt.a(Boolean.FALSE), SharedFlowKt.a(1, 5, null));
            HashMap hashMap = this.c;
            int size = hashMap.size();
            hashMap.put(Integer.valueOf(size), selectableItemInfo);
            linkedHashMap.put(Integer.valueOf(intValue), Integer.valueOf(size));
        }
        b(i, null, selectionListKt$items$3, new ComposableLambdaImpl(288183226, true, new Function4() { // from class: net.blip.shared.e
            @Override // kotlin.jvm.functions.Function4
            public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
                int i2;
                boolean z;
                SelectableLazyListScope.SelectableItemInfo selectableItemInfo2;
                MutableStateFlow a;
                SharedFlowImpl a2;
                int i3;
                int i4;
                LazyItemScope lazyItemScope = (LazyItemScope) obj;
                Integer num = (Integer) obj2;
                int intValue2 = num.intValue();
                Composer composer = (Composer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                lazyItemScope.getClass();
                if ((intValue3 & 6) == 0) {
                    if (((GapComposer) composer).f(lazyItemScope)) {
                        i4 = 4;
                    } else {
                        i4 = 2;
                    }
                    i2 = i4 | intValue3;
                } else {
                    i2 = intValue3;
                }
                if ((intValue3 & 48) == 0) {
                    if (((GapComposer) composer).d(intValue2)) {
                        i3 = 32;
                    } else {
                        i3 = 16;
                    }
                    i2 |= i3;
                }
                if ((i2 & 147) != 146) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(i2 & 1, z)) {
                    Integer num2 = (Integer) linkedHashMap.get(num);
                    SelectableLazyListScope selectableLazyListScope = this;
                    if (num2 != null) {
                        selectableItemInfo2 = (SelectableLazyListScope.SelectableItemInfo) selectableLazyListScope.c.get(Integer.valueOf(num2.intValue()));
                    } else {
                        selectableItemInfo2 = null;
                    }
                    if (selectableItemInfo2 != null) {
                        a = selectableItemInfo2.b;
                    } else {
                        a = StateFlowKt.a(Boolean.FALSE);
                    }
                    if (selectableItemInfo2 != null) {
                        a2 = selectableItemInfo2.c;
                    } else {
                        a2 = SharedFlowKt.a(0, 7, null);
                    }
                    SelectableLazyItemScope selectableLazyItemScope = new SelectableLazyItemScope(a, a2, lazyItemScope);
                    boolean f = gapComposer.f(selectableLazyItemScope) | gapComposer.f(num2) | gapComposer.h(selectableLazyListScope);
                    Object K = gapComposer.K();
                    if (f || K == Composer.Companion.a) {
                        K = new SelectableLazyListScope$items$4$1$1$1(selectableLazyItemScope, num2, selectableLazyListScope, null);
                        gapComposer.g0(K);
                    }
                    EffectsKt.e(gapComposer, a2, (Function2) K);
                    composableLambdaImpl.j(selectableLazyItemScope, num, gapComposer, Integer.valueOf(i2 & 112));
                } else {
                    gapComposer.Q();
                }
                return Unit.a;
            }
        }));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void b(int i, Function1 function1, Function1 function12, ComposableLambdaImpl composableLambdaImpl) {
        this.d += i;
        this.a.b(i, function1, function12, composableLambdaImpl);
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public final void c(ComposableLambdaImpl composableLambdaImpl) {
        this.d++;
        this.a.c(composableLambdaImpl);
    }

    public final void d(Integer num) {
        boolean z;
        for (Map.Entry entry : this.c.entrySet()) {
            int intValue = ((Number) entry.getKey()).intValue();
            SelectableItemInfo selectableItemInfo = (SelectableItemInfo) entry.getValue();
            if (num != null && intValue == num.intValue()) {
                z = true;
            } else {
                z = false;
            }
            selectableItemInfo.b.setValue(Boolean.valueOf(z));
        }
    }
}
