package kotlinx.serialization.json.internal;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonToStringWriter {
    public char[] a;
    public int b;

    public final void a(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.a;
        if (cArr.length <= i3) {
            int i4 = i * 2;
            if (i3 < i4) {
                i3 = i4;
            }
            this.a = Arrays.copyOf(cArr, i3);
        }
    }

    public final void b() {
        CharArrayPool charArrayPool = CharArrayPool.c;
        char[] cArr = this.a;
        charArrayPool.getClass();
        cArr.getClass();
        synchronized (charArrayPool) {
            int i = charArrayPool.b;
            if (cArr.length + i < ArrayPoolsKt.a) {
                charArrayPool.b = i + cArr.length;
                charArrayPool.a.addLast(cArr);
            }
        }
    }

    public final void c(String str) {
        str.getClass();
        int length = str.length();
        if (length == 0) {
            return;
        }
        a(this.b, length);
        str.getChars(0, str.length(), this.a, this.b);
        this.b += length;
    }

    public final String toString() {
        return new String(this.a, 0, this.b);
    }
}
