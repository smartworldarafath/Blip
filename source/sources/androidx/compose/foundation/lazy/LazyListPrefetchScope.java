package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.la;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface LazyListPrefetchScope {
    static LazyLayoutPrefetchState.PrefetchHandle a(LazyListState$prefetchScope$1 lazyListState$prefetchScope$1, int i) {
        Function1 function1;
        LazyListState lazyListState = lazyListState$prefetchScope$1.a;
        Snapshot a = Snapshot.Companion.a();
        if (a != null) {
            function1 = a.e();
        } else {
            function1 = null;
        }
        Function1 function12 = function1;
        Snapshot b = Snapshot.Companion.b(a);
        try {
            LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) ((SnapshotMutableStateImpl) lazyListState.f).getValue();
            Snapshot.Companion.e(a, b, function12);
            return lazyListState.q.a(i, lazyListMeasureResult.j, lazyListState.d, new la(i, lazyListMeasureResult));
        } catch (Throwable th) {
            Snapshot.Companion.e(a, b, function12);
            throw th;
        }
    }
}
