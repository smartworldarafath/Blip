package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.unit.Constraints;
import defpackage.s2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridState$prefetchScope$1 {
    public final /* synthetic */ LazyGridState a;

    public LazyGridState$prefetchScope$1(LazyGridState lazyGridState) {
        this.a = lazyGridState;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    public final ArrayList a(int i) {
        Function1 function1;
        LazyGridMeasureResult lazyGridMeasureResult;
        ArrayList arrayList = new ArrayList();
        LazyGridState lazyGridState = this.a;
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Snapshot b = Snapshot.Companion.b(a);
        try {
            if (lazyGridState.b) {
                lazyGridMeasureResult = lazyGridState.c;
            } else {
                lazyGridMeasureResult = (LazyGridMeasureResult) ((SnapshotMutableStateImpl) lazyGridState.e).getValue();
            }
            LazyGridMeasureResult lazyGridMeasureResult2 = lazyGridMeasureResult;
            if (lazyGridMeasureResult2 != null) {
                ?? obj = new Object();
                obj.j = 1;
                List list = (List) lazyGridMeasureResult2.k.b(Integer.valueOf(i));
                int size = list.size();
                int i2 = 0;
                Ref$IntRef ref$IntRef = obj;
                while (i2 < size) {
                    Pair pair = (Pair) list.get(i2);
                    LazyLayoutPrefetchState lazyLayoutPrefetchState = lazyGridState.o;
                    int intValue = ((Number) pair.j).intValue();
                    long j = ((Constraints) pair.k).a;
                    SaverKt$Saver$1 saverKt$Saver$1 = LazyGridState.w;
                    Ref$IntRef ref$IntRef2 = ref$IntRef;
                    arrayList.add(lazyLayoutPrefetchState.a(intValue, j, false, new s2((ArrayList) null, ref$IntRef2, list, i, lazyGridMeasureResult2)));
                    i2++;
                    ref$IntRef = ref$IntRef2;
                }
            }
            Snapshot.Companion.e(a, b, function1);
            return arrayList;
        } catch (Throwable th) {
            Snapshot.Companion.e(a, b, function1);
            throw th;
        }
    }
}
