package okio.internal;

import kotlin.text.Charsets;
import okio.Segment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* renamed from: okio.internal.-Buffer, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Buffer {
    public static final byte[] a;
    public static final long[] b;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(Charsets.a);
        bytes.getClass();
        a = bytes;
        b = new long[]{-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};
    }

    public static final boolean a(Segment segment, int i, byte[] bArr, int i2, int i3) {
        int i4 = segment.c;
        byte[] bArr2 = segment.a;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.f;
                segment.getClass();
                byte[] bArr3 = segment.a;
                bArr2 = bArr3;
                i = segment.b;
                i4 = segment.c;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String b(long j, okio.Buffer buffer) {
        if (j > 0) {
            long j2 = j - 1;
            if (buffer.n(j2) == 13) {
                String O = buffer.O(j2, Charsets.a);
                buffer.skip(2L);
                return O;
            }
        }
        String O2 = buffer.O(j, Charsets.a);
        buffer.skip(1L);
        return O2;
    }
}
