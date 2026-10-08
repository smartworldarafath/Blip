package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BringIntoViewRequestPriorityQueue {
    public final MutableVector a = new MutableVector(new ContentInViewNode.Request[16]);

    public final void a(CancellationException cancellationException) {
        MutableVector mutableVector = this.a;
        int i = mutableVector.l;
        CancellableContinuation[] cancellableContinuationArr = new CancellableContinuation[i];
        for (int i2 = 0; i2 < i; i2++) {
            cancellableContinuationArr[i2] = ((ContentInViewNode.Request) mutableVector.j[i2]).b;
        }
        for (int i3 = 0; i3 < i; i3++) {
            cancellableContinuationArr[i3].p(cancellationException);
        }
        if (mutableVector.l == 0) {
            return;
        }
        InlineClassHelperKt.c("uncancelled requests present");
    }

    public final void b() {
        MutableVector mutableVector = this.a;
        IntRange j = RangesKt.j(0, mutableVector.l);
        int i = j.j;
        int i2 = j.k;
        if (i <= i2) {
            while (true) {
                ((ContentInViewNode.Request) mutableVector.j[i]).b.g(Unit.a);
                if (i == i2) {
                    break;
                } else {
                    i++;
                }
            }
        }
        mutableVector.g();
    }
}
