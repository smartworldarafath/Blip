package androidx.compose.material;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.e0;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AlertDialogKt$AlertDialogFlowRow$1$1 implements MeasurePolicy {
    public static final void c(ArrayList arrayList, Ref$IntRef ref$IntRef, MeasureScope measureScope, ArrayList arrayList2, ArrayList arrayList3, Ref$IntRef ref$IntRef2, ArrayList arrayList4, Ref$IntRef ref$IntRef3, Ref$IntRef ref$IntRef4) {
        if (!arrayList.isEmpty()) {
            ref$IntRef.j = measureScope.y0(12.0f) + ref$IntRef.j;
        }
        arrayList.add(0, CollectionsKt.X(arrayList2));
        arrayList3.add(Integer.valueOf(ref$IntRef2.j));
        arrayList4.add(Integer.valueOf(ref$IntRef.j));
        ref$IntRef.j += ref$IntRef2.j;
        ref$IntRef3.j = Math.max(ref$IntRef3.j, ref$IntRef4.j);
        arrayList2.clear();
        ref$IntRef4.j = 0;
        ref$IntRef2.j = 0;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        int max;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ?? obj = new Object();
        ?? obj2 = new Object();
        ArrayList arrayList4 = new ArrayList();
        ?? obj3 = new Object();
        ?? obj4 = new Object();
        int i = 0;
        long b = ConstraintsKt.b(0, Constraints.h(j), 0, 0, 13);
        int size = list.size();
        while (i < size) {
            Placeable w = ((Measurable) list.get(i)).w(b);
            long j2 = b;
            if (!arrayList4.isEmpty()) {
                if (measureScope.y0(8.0f) + obj3.j + w.j > Constraints.h(j)) {
                    c(arrayList, obj2, measureScope, arrayList4, arrayList2, obj4, arrayList3, obj, obj3);
                }
            }
            if (!arrayList4.isEmpty()) {
                obj3.j = measureScope.y0(8.0f) + obj3.j;
            }
            arrayList4.add(w);
            obj3.j += w.j;
            obj4.j = Math.max(obj4.j, w.k);
            i++;
            b = j2;
        }
        if (!arrayList4.isEmpty()) {
            c(arrayList, obj2, measureScope, arrayList4, arrayList2, obj4, arrayList3, obj, obj3);
        }
        if (Constraints.h(j) != Integer.MAX_VALUE) {
            max = Constraints.h(j);
        } else {
            max = Math.max(obj.j, Constraints.j(j));
        }
        return MeasureScope.h0(measureScope, max, Math.max(obj2.j, Constraints.i(j)), new e0(arrayList, measureScope, max, arrayList3));
    }
}
