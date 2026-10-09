package androidx.media3.common.util;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StuckPlayerException extends IllegalStateException {
    public final int j;
    public final int k;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StuckPlayerException(int i, int i2) {
        super(r0);
        String d;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            d = jb.d("Player stuck suppressed for ", i2, " ms");
                        } else {
                            io.sentry.d.d();
                            throw null;
                        }
                    } else {
                        d = jb.d("Player stuck playing without ending for ", i2, " ms");
                    }
                } else {
                    d = jb.d("Player stuck playing with no progress for ", i2, " ms");
                }
            } else {
                d = jb.d("Player stuck buffering with no progress for ", i2, " ms");
            }
        } else {
            d = jb.d("Player stuck buffering and not loading for ", i2, " ms");
        }
        this.j = i;
        this.k = i2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && StuckPlayerException.class == obj.getClass()) {
                StuckPlayerException stuckPlayerException = (StuckPlayerException) obj;
                if (this.j == stuckPlayerException.j && this.k == stuckPlayerException.k) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((527 + this.j) * 31) + this.k;
    }
}
