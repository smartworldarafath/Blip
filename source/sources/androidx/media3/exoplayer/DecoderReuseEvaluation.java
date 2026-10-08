package androidx.media3.exoplayer;

import android.text.TextUtils;
import androidx.media3.common.Format;
import com.google.common.base.Preconditions;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DecoderReuseEvaluation {
    public final String a;
    public final Format b;
    public final Format c;
    public final int d;
    public final int e;

    public DecoderReuseEvaluation(String str, Format format, Format format2, int i, int i2) {
        boolean z;
        if (i != 0 && i2 != 0) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.e(z);
        Preconditions.e(true ^ TextUtils.isEmpty(str));
        this.a = str;
        format.getClass();
        this.b = format;
        format2.getClass();
        this.c = format2;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DecoderReuseEvaluation.class == obj.getClass()) {
            DecoderReuseEvaluation decoderReuseEvaluation = (DecoderReuseEvaluation) obj;
            if (this.d == decoderReuseEvaluation.d && this.e == decoderReuseEvaluation.e && this.a.equals(decoderReuseEvaluation.a) && this.b.equals(decoderReuseEvaluation.b) && this.c.equals(decoderReuseEvaluation.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + jb.c(this.a, (((527 + this.d) * 31) + this.e) * 31, 31)) * 31);
    }
}
