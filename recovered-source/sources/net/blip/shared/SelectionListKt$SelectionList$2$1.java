package net.blip.shared;

import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.Density;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.fe;
import defpackage.k8;
import defpackage.u2;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import net.blip.shared.ItemVisibility;
import net.blip.shared.SelectableLazyListScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.shared.SelectionListKt$SelectionList$2$1", f = "SelectionList.kt", l = {72, 78, 126, 133}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class SelectionListKt$SelectionList$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SelectionListState o;
    public final /* synthetic */ LazyListState p;
    public final /* synthetic */ Density q;
    public final /* synthetic */ MutableState r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionListKt$SelectionList$2$1(SelectionListState selectionListState, LazyListState lazyListState, Density density, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.o = selectionListState;
        this.p = lazyListState;
        this.q = density;
        this.r = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SelectionListKt$SelectionList$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SelectionListKt$SelectionList$2$1(this.o, this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x01b6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e8  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Integer num;
        ItemVisibility.InsideViewport insideViewport;
        Object obj2;
        Object obj3;
        Boolean bool;
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            ResultKt.b(obj);
                            return unit;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                    return unit;
                }
                ResultKt.b(obj);
                return unit;
            }
            ResultKt.b(obj);
            return unit;
        }
        ResultKt.b(obj);
        Integer num2 = (Integer) ((SnapshotMutableStateImpl) this.o.a).getValue();
        SelectableLazyListScope selectableLazyListScope = (SelectableLazyListScope) this.r.getValue();
        if (selectableLazyListScope != null) {
            HashMap hashMap = selectableLazyListScope.c;
            if (num2 == null) {
                selectableLazyListScope.d(null);
                return unit;
            }
            selectableLazyListScope.d(num2);
            int intValue = num2.intValue();
            LazyListState lazyListState = this.p;
            if (intValue <= 0) {
                this.n = 1;
                if (lazyListState.f(0, 0, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else if (num2.intValue() >= hashMap.size() - 1) {
                int size = hashMap.size();
                this.n = 2;
                if (lazyListState.f(size, 0, this) == coroutineSingletons) {
                }
            } else {
                SelectableLazyListScope.SelectableItemInfo selectableItemInfo = (SelectableLazyListScope.SelectableItemInfo) hashMap.get(num2);
                if (selectableItemInfo != null) {
                    num = Integer.valueOf(selectableItemInfo.a);
                } else {
                    num = null;
                }
                if (num != null) {
                    int intValue2 = num.intValue();
                    LazyListLayoutInfo h = lazyListState.h();
                    LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.t(((LazyListMeasureResult) h).l);
                    if (lazyListItemInfo != null) {
                        LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) h;
                        LazyListItemInfo lazyListItemInfo2 = (LazyListItemInfo) CollectionsKt.A(lazyListMeasureResult.l);
                        if (lazyListItemInfo2 != null) {
                            LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) lazyListItemInfo;
                            int i2 = lazyListMeasuredItem.a;
                            ItemVisibility.InsideViewport insideViewport2 = ItemVisibility.InsideViewport.a;
                            Object obj4 = ItemVisibility.AboveViewport.a;
                            Object obj5 = ItemVisibility.BelowViewport.a;
                            if (i2 <= intValue2) {
                                LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) lazyListItemInfo2;
                                int i3 = lazyListMeasuredItem2.a;
                                if (i3 >= intValue2) {
                                    if (i2 != intValue2 || lazyListMeasuredItem.m >= lazyListMeasureResult.m) {
                                        if (i3 != intValue2 || lazyListMeasuredItem2.m + lazyListMeasuredItem2.n <= lazyListMeasureResult.n) {
                                            insideViewport = insideViewport2;
                                            if (!(insideViewport instanceof ItemVisibility.InsideViewport)) {
                                                int b = MathKt.b(this.q.i0(60.0f));
                                                Iterator it = ((LazyListMeasureResult) lazyListState.h()).l.iterator();
                                                while (true) {
                                                    if (it.hasNext()) {
                                                        obj2 = it.next();
                                                        if (((LazyListMeasuredItem) ((LazyListItemInfo) obj2)).a == intValue2) {
                                                            break;
                                                        }
                                                    } else {
                                                        obj2 = null;
                                                        break;
                                                    }
                                                }
                                                LazyListItemInfo lazyListItemInfo3 = (LazyListItemInfo) obj2;
                                                if (lazyListItemInfo3 != null) {
                                                    b = ((LazyListMeasuredItem) lazyListItemInfo3).n;
                                                } else {
                                                    Iterator it2 = ((LazyListMeasureResult) lazyListState.h()).l.iterator();
                                                    while (true) {
                                                        if (it2.hasNext()) {
                                                            obj3 = it2.next();
                                                            int i4 = ((LazyListMeasuredItem) ((LazyListItemInfo) obj3)).a;
                                                            Iterator it3 = hashMap.entrySet().iterator();
                                                            if (it3.hasNext()) {
                                                                if (((SelectableLazyListScope.SelectableItemInfo) ((Map.Entry) it3.next()).getValue()).a == i4) {
                                                                    z = true;
                                                                } else {
                                                                    z = false;
                                                                }
                                                                bool = Boolean.valueOf(z);
                                                            } else {
                                                                bool = null;
                                                            }
                                                            if (bool != null) {
                                                                if (bool.booleanValue()) {
                                                                    break;
                                                                }
                                                            } else {
                                                                fe.o("No element of the map was transformed to a non-null value.");
                                                                return null;
                                                            }
                                                        } else {
                                                            obj3 = null;
                                                            break;
                                                        }
                                                    }
                                                    LazyListItemInfo lazyListItemInfo4 = (LazyListItemInfo) obj3;
                                                    if (lazyListItemInfo4 != null) {
                                                        b = ((LazyListMeasuredItem) lazyListItemInfo4).n;
                                                    }
                                                }
                                                int i5 = b / 2;
                                                if (insideViewport.equals(obj4)) {
                                                    this.n = 3;
                                                    if (lazyListState.f(intValue2, -i5, this) == coroutineSingletons) {
                                                    }
                                                } else if (insideViewport.equals(obj5)) {
                                                    int i6 = (-((int) (((LazyListMeasureResult) lazyListState.h()).i() & 4294967295L))) + i5 + b;
                                                    this.n = 4;
                                                    if (lazyListState.f(intValue2, i6, this) == coroutineSingletons) {
                                                    }
                                                } else {
                                                    if (insideViewport.equals(insideViewport2)) {
                                                        u2.l("compiler can't detect early exit");
                                                        return null;
                                                    }
                                                    k8.e();
                                                    return null;
                                                }
                                            }
                                        }
                                    }
                                }
                                insideViewport = obj5;
                                if (!(insideViewport instanceof ItemVisibility.InsideViewport)) {
                                }
                            }
                            insideViewport = obj4;
                            if (!(insideViewport instanceof ItemVisibility.InsideViewport)) {
                            }
                        } else {
                            u2.l("no visible items");
                            return null;
                        }
                    } else {
                        u2.l("no visible items");
                        return null;
                    }
                }
            }
        }
        return unit;
    }
}
