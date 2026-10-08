package kotlinx.coroutines.channels;

import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReceiveCatching<E> implements Waiter {
    public final CancellableContinuationImpl j;

    public ReceiveCatching(CancellableContinuationImpl cancellableContinuationImpl) {
        this.j = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void a(Segment segment, int i) {
        this.j.a(segment, i);
    }
}
