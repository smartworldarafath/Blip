package androidx.compose.runtime;

import androidx.compose.runtime.internal.AtomicInt;
import defpackage.n1;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OneShotCancellationHandle implements CancellationHandle {
    public final n1 j;
    public final AtomicInt k = new AtomicInteger(0);

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.concurrent.atomic.AtomicInteger, androidx.compose.runtime.internal.AtomicInt] */
    public OneShotCancellationHandle(n1 n1Var) {
        this.j = n1Var;
    }

    @Override // androidx.compose.runtime.CancellationHandle
    public final void cancel() {
        if (!this.k.compareAndSet(1, 1)) {
            this.j.a();
        }
    }
}
