package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.Segment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SemaphoreSegment extends Segment<SemaphoreSegment> {
    public final /* synthetic */ AtomicReferenceArray n;

    public SemaphoreSegment(long j, SemaphoreSegment semaphoreSegment, int i) {
        super(j, semaphoreSegment, i);
        this.n = new AtomicReferenceArray(SemaphoreKt.f);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int g() {
        return SemaphoreKt.f;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final void h(int i, CoroutineContext coroutineContext) {
        this.n.set(i, SemaphoreKt.e);
        i();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.l + ", hashCode=" + hashCode() + ']';
    }
}
