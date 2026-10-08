package okio;

import defpackage.u2;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SegmentPool {
    public static final Segment a = new Segment(new byte[0], 0, 0, false);
    public static final int b;
    public static final AtomicReference[] c;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        c = atomicReferenceArr;
    }

    public static final void a(Segment segment) {
        int i;
        segment.getClass();
        if (segment.f == null && segment.g == null) {
            if (!segment.d) {
                AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (b - 1))];
                Segment segment2 = a;
                Segment segment3 = (Segment) atomicReference.getAndSet(segment2);
                if (segment3 == segment2) {
                    return;
                }
                if (segment3 != null) {
                    i = segment3.c;
                } else {
                    i = 0;
                }
                if (i >= 65536) {
                    atomicReference.set(segment3);
                    return;
                }
                segment.f = segment3;
                segment.b = 0;
                segment.c = i + 8192;
                atomicReference.set(segment);
                return;
            }
            return;
        }
        u2.g("Failed requirement.");
    }

    public static final Segment b() {
        AtomicReference atomicReference = c[(int) (Thread.currentThread().getId() & (b - 1))];
        Segment segment = a;
        Segment segment2 = (Segment) atomicReference.getAndSet(segment);
        if (segment2 == segment) {
            return new Segment();
        }
        if (segment2 == null) {
            atomicReference.set(null);
            return new Segment();
        }
        atomicReference.set(segment2.f);
        segment2.f = null;
        segment2.c = 0;
        return segment2;
    }
}
