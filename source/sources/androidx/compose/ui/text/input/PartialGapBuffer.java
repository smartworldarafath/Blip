package androidx.compose.ui.text.input;

import androidx.compose.ui.text.internal.InlineClassHelperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PartialGapBuffer {
    public String a;
    public GapBuffer b;
    public int c;
    public int d;

    public final int a() {
        GapBuffer gapBuffer = this.b;
        String str = this.a;
        if (gapBuffer == null) {
            return str.length();
        }
        return (gapBuffer.a - gapBuffer.a()) + (str.length() - (this.d - this.c));
    }

    /* JADX WARN: Type inference failed for: r9v14, types: [androidx.compose.ui.text.input.GapBuffer, java.lang.Object] */
    public final void b(String str, int i, int i2) {
        if (i > i2) {
            InlineClassHelperKt.a("start index must be less than or equal to end index: " + i + " > " + i2);
        }
        if (i < 0) {
            InlineClassHelperKt.a("start must be non-negative, but was " + i);
        }
        GapBuffer gapBuffer = this.b;
        if (gapBuffer == null) {
            int max = Math.max(255, str.length() + 128);
            char[] cArr = new char[max];
            int min = Math.min(i, 64);
            int min2 = Math.min(this.a.length() - i2, 64);
            String str2 = this.a;
            int i3 = i - min;
            str2.getClass();
            str2.getChars(i3, i, cArr, 0);
            String str3 = this.a;
            int i4 = max - min2;
            int i5 = min2 + i2;
            str3.getClass();
            str3.getChars(i2, i5, cArr, i4);
            str.getChars(0, str.length(), cArr, min);
            int length = str.length() + min;
            ?? obj = new Object();
            obj.a = max;
            obj.b = cArr;
            obj.c = length;
            obj.d = i4;
            this.b = obj;
            this.c = i3;
            this.d = i5;
            return;
        }
        int i6 = this.c;
        int i7 = i - i6;
        int i8 = i2 - i6;
        if (i7 >= 0 && i8 <= gapBuffer.a - gapBuffer.a()) {
            int length2 = str.length() - (i8 - i7);
            if (length2 > gapBuffer.a()) {
                int a = length2 - gapBuffer.a();
                int i9 = gapBuffer.a;
                do {
                    i9 *= 2;
                } while (i9 - gapBuffer.a < a);
                char[] cArr2 = new char[i9];
                char[] cArr3 = gapBuffer.b;
                int i10 = gapBuffer.c;
                cArr3.getClass();
                System.arraycopy(cArr3, 0, cArr2, 0, i10);
                int i11 = gapBuffer.a;
                int i12 = gapBuffer.d;
                int i13 = i11 - i12;
                int i14 = i9 - i13;
                char[] cArr4 = gapBuffer.b;
                cArr4.getClass();
                System.arraycopy(cArr4, i12, cArr2, i14, (i13 + i12) - i12);
                gapBuffer.b = cArr2;
                gapBuffer.a = i9;
                gapBuffer.d = i14;
            }
            int i15 = gapBuffer.c;
            if (i7 < i15 && i8 <= i15) {
                int i16 = i15 - i8;
                char[] cArr5 = gapBuffer.b;
                int i17 = gapBuffer.d - i16;
                cArr5.getClass();
                System.arraycopy(cArr5, i8, cArr5, i17, i16);
                gapBuffer.c = i7;
                gapBuffer.d -= i16;
            } else if (i7 < i15 && i8 >= i15) {
                gapBuffer.d = i8 + gapBuffer.a();
                gapBuffer.c = i7;
            } else {
                int a2 = i7 + gapBuffer.a();
                int a3 = i8 + gapBuffer.a();
                int i18 = gapBuffer.d;
                int i19 = a2 - i18;
                char[] cArr6 = gapBuffer.b;
                int i20 = gapBuffer.c;
                cArr6.getClass();
                System.arraycopy(cArr6, i18, cArr6, i20, i19);
                gapBuffer.c += i19;
                gapBuffer.d = a3;
            }
            str.getChars(0, str.length(), gapBuffer.b, gapBuffer.c);
            gapBuffer.c = str.length() + gapBuffer.c;
            return;
        }
        this.a = toString();
        this.b = null;
        this.c = -1;
        this.d = -1;
        b(str, i, i2);
    }

    public final String toString() {
        GapBuffer gapBuffer = this.b;
        String str = this.a;
        if (gapBuffer == null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str, 0, this.c);
        sb.append(gapBuffer.b, 0, gapBuffer.c);
        char[] cArr = gapBuffer.b;
        int i = gapBuffer.d;
        sb.append(cArr, i, gapBuffer.a - i);
        String str2 = this.a;
        sb.append((CharSequence) str2, this.d, str2.length());
        return sb.toString();
    }
}
