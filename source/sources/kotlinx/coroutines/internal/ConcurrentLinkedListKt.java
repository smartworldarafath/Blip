package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConcurrentLinkedListKt {
    public static final Symbol a = new Symbol("CLOSED");

    public static final Object a(Segment segment, long j, Function2 function2) {
        while (true) {
            if (segment.l >= j && !segment.d()) {
                return segment;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ConcurrentLinkedListNode.j;
            Object obj = atomicReferenceFieldUpdater.get(segment);
            Symbol symbol = a;
            if (obj == symbol) {
                return symbol;
            }
            Segment segment2 = (Segment) ((ConcurrentLinkedListNode) obj);
            if (segment2 == null) {
                segment2 = (Segment) function2.n(Long.valueOf(segment.l + 1), segment);
                while (!atomicReferenceFieldUpdater.compareAndSet(segment, null, segment2)) {
                    if (atomicReferenceFieldUpdater.get(segment) != null) {
                        break;
                    }
                }
                if (segment.d()) {
                    segment.e();
                }
            }
            segment = segment2;
        }
    }
}
