package kotlinx.io;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SegmentPool {
    public static final Segment a = new Segment(new byte[0]);
    public static final int b;
    public static final int c;
    public static final int d;
    public static final int e;
    public static final AtomicReferenceArray f;
    public static final AtomicReferenceArray g;

    static {
        String str;
        int intValue;
        int i = 0;
        int i2 = 1;
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = highestOneBit;
        int i3 = highestOneBit / 2;
        if (i3 >= 1) {
            i2 = i3;
        }
        c = i2;
        if (Intrinsics.a(System.getProperty("java.vm.name"), "Dalvik")) {
            str = "0";
        } else {
            str = "4194304";
        }
        String property = System.getProperty("kotlinx.io.pool.size.bytes", str);
        property.getClass();
        Integer S = StringsKt.S(property);
        if (S != null && (intValue = S.intValue()) >= 0) {
            i = intValue;
        }
        d = i;
        int i4 = i / i2;
        if (i4 < 8192) {
            i4 = 8192;
        }
        e = i4;
        f = new AtomicReferenceArray(highestOneBit);
        g = new AtomicReferenceArray(i2);
    }

    public static final Segment a() {
        AtomicReferenceArray atomicReferenceArray;
        Segment segment;
        Segment segment2;
        int id = (int) ((b - 1) & Thread.currentThread().getId());
        do {
            atomicReferenceArray = f;
            segment = a;
            segment2 = (Segment) atomicReferenceArray.getAndSet(id, segment);
        } while (Intrinsics.a(segment2, segment));
        if (segment2 == null) {
            atomicReferenceArray.set(id, null);
            if (d > 0) {
                int i = c;
                int id2 = (int) (Thread.currentThread().getId() & (i - 1));
                int i2 = 0;
                while (true) {
                    AtomicReferenceArray atomicReferenceArray2 = g;
                    Segment segment3 = (Segment) atomicReferenceArray2.getAndSet(id2, segment);
                    if (!Intrinsics.a(segment3, segment)) {
                        if (segment3 == null) {
                            atomicReferenceArray2.set(id2, null);
                            if (i2 < i) {
                                id2 = (id2 + 1) & (i - 1);
                                i2++;
                            } else {
                                return new Segment();
                            }
                        } else {
                            atomicReferenceArray2.set(id2, segment3.e);
                            segment3.e = null;
                            segment3.c = 0;
                            return segment3;
                        }
                    }
                }
            } else {
                return new Segment();
            }
        } else {
            atomicReferenceArray.set(id, segment2.e);
            segment2.e = null;
            segment2.c = 0;
            return segment2;
        }
    }
}
