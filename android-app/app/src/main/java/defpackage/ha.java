package defpackage;

import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.grid.LazyGridMeasuredItem;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ha implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;
    public final /* synthetic */ ArrayList l;
    public final /* synthetic */ List m;
    public final /* synthetic */ boolean n;

    public /* synthetic */ ha(MutableState mutableState, ArrayList arrayList, List list, boolean z, int i) {
        this.j = i;
        this.k = mutableState;
        this.l = arrayList;
        this.m = list;
        this.n = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        boolean z = this.n;
        List list = this.m;
        ArrayList arrayList = this.l;
        MutableState mutableState = this.k;
        Unit unit = Unit.a;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i) {
            case 0:
                placementScope.j = true;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((LazyGridMeasuredItem) arrayList.get(i2)).k(placementScope, z);
                }
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    ((LazyGridMeasuredItem) list.get(i3)).k(placementScope, z);
                }
                placementScope.j = false;
                mutableState.getValue();
                return unit;
            default:
                placementScope.j = true;
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    ((LazyListMeasuredItem) arrayList.get(i4)).k(placementScope, z);
                }
                int size4 = list.size();
                for (int i5 = 0; i5 < size4; i5++) {
                    ((LazyListMeasuredItem) list.get(i5)).k(placementScope, z);
                }
                placementScope.j = false;
                mutableState.getValue();
                return unit;
        }
    }
}
