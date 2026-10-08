package androidx.media3.exoplayer;

import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SeekParameters {
    public static final SeekParameters c;
    public static final SeekParameters d;
    public static final SeekParameters e;
    public final long a;
    public final long b;

    static {
        SeekParameters seekParameters = new SeekParameters(0L, 0L);
        c = seekParameters;
        new SeekParameters(Long.MAX_VALUE, Long.MAX_VALUE);
        d = new SeekParameters(Long.MAX_VALUE, 0L);
        new SeekParameters(0L, Long.MAX_VALUE);
        e = seekParameters;
    }

    public SeekParameters(long j, long j2) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        Preconditions.e(j2 >= 0);
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && SeekParameters.class == obj.getClass()) {
            SeekParameters seekParameters = (SeekParameters) obj;
            if (this.a == seekParameters.a && this.b == seekParameters.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.a) * 31) + ((int) this.b);
    }
}
