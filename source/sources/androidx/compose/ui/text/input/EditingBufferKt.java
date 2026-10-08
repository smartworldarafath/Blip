package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EditingBufferKt {
    public static final long a(long j, long j2) {
        boolean z;
        boolean z2;
        int d;
        boolean z3;
        boolean z4;
        boolean z5;
        int f = TextRange.f(j);
        int e = TextRange.e(j);
        boolean z6 = false;
        if (TextRange.f(j2) < TextRange.e(j)) {
            z = true;
        } else {
            z = false;
        }
        if (TextRange.f(j) < TextRange.e(j2)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z & z2) {
            if (TextRange.f(j2) <= TextRange.f(j)) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (TextRange.e(j) <= TextRange.e(j2)) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z3 & z4) {
                f = TextRange.f(j2);
                e = f;
            } else {
                if (TextRange.f(j) <= TextRange.f(j2)) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (TextRange.e(j2) <= TextRange.e(j)) {
                    z6 = true;
                }
                if (z5 & z6) {
                    d = TextRange.d(j2);
                } else {
                    int f2 = TextRange.f(j2);
                    if (f < TextRange.e(j2) && f2 <= f) {
                        f = TextRange.f(j2);
                        d = TextRange.d(j2);
                    } else {
                        e = TextRange.f(j2);
                    }
                }
                e -= d;
            }
        } else if (e > TextRange.f(j2)) {
            f -= TextRange.d(j2);
            d = TextRange.d(j2);
            e -= d;
        }
        return TextRangeKt.a(f, e);
    }
}
