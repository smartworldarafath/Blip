package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.q;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EditingBuffer {
    public final PartialGapBuffer a;
    public int b;
    public int c;
    public int d;
    public int e;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.text.input.PartialGapBuffer, java.lang.Object] */
    public EditingBuffer(AnnotatedString annotatedString, long j) {
        String str = annotatedString.k;
        ?? obj = new Object();
        obj.a = str;
        obj.c = -1;
        obj.d = -1;
        this.a = obj;
        this.b = TextRange.f(j);
        this.c = TextRange.e(j);
        this.d = -1;
        this.e = -1;
        int f = TextRange.f(j);
        int e = TextRange.e(j);
        if (f >= 0 && f <= str.length()) {
            if (e >= 0 && e <= str.length()) {
                if (f <= e) {
                    return;
                }
                u2.g(q.f(f, e, "Do not set reversed range: ", " > "));
                throw null;
            }
            u2.o(q.f(e, str.length(), "end (", ") offset is outside of text region "));
            throw null;
        }
        u2.o(q.f(f, str.length(), "start (", ") offset is outside of text region "));
        throw null;
    }

    public final void a(int i, int i2) {
        long a = TextRangeKt.a(i, i2);
        this.a.b("", i, i2);
        long a2 = EditingBufferKt.a(TextRangeKt.a(this.b, this.c), a);
        h(TextRange.f(a2));
        g(TextRange.e(a2));
        int i3 = this.d;
        if (i3 != -1) {
            long a3 = EditingBufferKt.a(TextRangeKt.a(i3, this.e), a);
            if (TextRange.c(a3)) {
                this.d = -1;
                this.e = -1;
            } else {
                this.d = TextRange.f(a3);
                this.e = TextRange.e(a3);
            }
        }
    }

    public final char b(int i) {
        PartialGapBuffer partialGapBuffer = this.a;
        GapBuffer gapBuffer = partialGapBuffer.b;
        if (gapBuffer == null) {
            return partialGapBuffer.a.charAt(i);
        }
        if (i < partialGapBuffer.c) {
            return partialGapBuffer.a.charAt(i);
        }
        int a = gapBuffer.a - gapBuffer.a();
        int i2 = partialGapBuffer.c;
        if (i < a + i2) {
            int i3 = i - i2;
            int i4 = gapBuffer.c;
            char[] cArr = gapBuffer.b;
            if (i3 < i4) {
                return cArr[i3];
            }
            return cArr[(i3 - i4) + gapBuffer.d];
        }
        return partialGapBuffer.a.charAt(i - ((a - partialGapBuffer.d) + i2));
    }

    public final TextRange c() {
        int i = this.d;
        if (i != -1) {
            return new TextRange(TextRangeKt.a(i, this.e));
        }
        return null;
    }

    public final void d(String str, int i, int i2) {
        PartialGapBuffer partialGapBuffer = this.a;
        if (i >= 0 && i <= partialGapBuffer.a()) {
            if (i2 >= 0 && i2 <= partialGapBuffer.a()) {
                if (i <= i2) {
                    partialGapBuffer.b(str, i, i2);
                    h(str.length() + i);
                    g(str.length() + i);
                    this.d = -1;
                    this.e = -1;
                    return;
                }
                u2.g(q.f(i, i2, "Do not set reversed range: ", " > "));
                return;
            }
            u2.o(q.f(i2, partialGapBuffer.a(), "end (", ") offset is outside of text region "));
            return;
        }
        u2.o(q.f(i, partialGapBuffer.a(), "start (", ") offset is outside of text region "));
    }

    public final void e(int i, int i2) {
        PartialGapBuffer partialGapBuffer = this.a;
        if (i >= 0 && i <= partialGapBuffer.a()) {
            if (i2 >= 0 && i2 <= partialGapBuffer.a()) {
                if (i < i2) {
                    this.d = i;
                    this.e = i2;
                    return;
                } else {
                    u2.g(q.f(i, i2, "Do not set reversed or empty range: ", " > "));
                    return;
                }
            }
            u2.o(q.f(i2, partialGapBuffer.a(), "end (", ") offset is outside of text region "));
            return;
        }
        u2.o(q.f(i, partialGapBuffer.a(), "start (", ") offset is outside of text region "));
    }

    public final void f(int i, int i2) {
        PartialGapBuffer partialGapBuffer = this.a;
        if (i >= 0 && i <= partialGapBuffer.a()) {
            if (i2 >= 0 && i2 <= partialGapBuffer.a()) {
                if (i <= i2) {
                    h(i);
                    g(i2);
                    return;
                } else {
                    u2.g(q.f(i, i2, "Do not set reversed range: ", " > "));
                    return;
                }
            }
            u2.o(q.f(i2, partialGapBuffer.a(), "end (", ") offset is outside of text region "));
            return;
        }
        u2.o(q.f(i, partialGapBuffer.a(), "start (", ") offset is outside of text region "));
    }

    public final void g(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            InlineClassHelperKt.a("Cannot set selectionEnd to a negative value: " + i);
        }
        this.c = i;
    }

    public final void h(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            InlineClassHelperKt.a("Cannot set selectionStart to a negative value: " + i);
        }
        this.b = i;
    }

    public final String toString() {
        return this.a.toString();
    }
}
