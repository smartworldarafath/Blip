package androidx.media3.exoplayer.video;

import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FixedFrameRateEstimator {
    public boolean c;
    public int e;
    public long h;
    public final Listener i;
    public Matcher a = new Matcher();
    public Matcher b = new Matcher();
    public long d = -9223372036854775807L;
    public float f = -1.0f;
    public float g = -1.0f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
        void g(float f);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Matcher {
        public long a;
        public long b;
        public long c;
        public long d;
        public long e;
        public long f;
        public final boolean[] g = new boolean[15];
        public int h;

        public final boolean a() {
            if (this.d > 15 && this.h == 0) {
                return true;
            }
            return false;
        }

        public final void b(long j) {
            long j2 = this.d;
            if (j2 == 0) {
                this.a = j;
            } else if (j2 == 1) {
                long j3 = j - this.a;
                this.b = j3;
                this.f = j3;
                this.e = 1L;
            } else {
                long j4 = j - this.c;
                int i = (int) (j2 % 15);
                long abs = Math.abs(j4 - this.b);
                boolean[] zArr = this.g;
                if (abs <= 1000000) {
                    this.e++;
                    this.f += j4;
                    if (zArr[i]) {
                        zArr[i] = false;
                        this.h--;
                    }
                } else if (!zArr[i]) {
                    zArr[i] = true;
                    this.h++;
                }
            }
            this.d++;
            this.c = j;
        }

        public final void c() {
            this.d = 0L;
            this.e = 0L;
            this.f = 0L;
            this.h = 0;
            Arrays.fill(this.g, false);
        }
    }

    public FixedFrameRateEstimator(Listener listener) {
        this.i = listener;
    }

    public final long a() {
        if (this.a.a()) {
            Matcher matcher = this.a;
            long j = matcher.e;
            if (j == 0) {
                return 0L;
            }
            return matcher.f / j;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0044, code lost:
    
        if (r0 != false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(long j) {
        boolean z;
        if (j == this.d) {
            return;
        }
        this.h++;
        this.a.b(j);
        int i = 0;
        if (this.a.a()) {
            this.c = false;
        } else if (this.d != -9223372036854775807L) {
            if (this.c) {
                Matcher matcher = this.b;
                long j2 = matcher.d;
                if (j2 == 0) {
                    z = false;
                } else {
                    z = matcher.g[(int) ((j2 - 1) % 15)];
                }
            }
            this.b.c();
            this.b.b(this.d);
            this.c = true;
            this.b.b(j);
        }
        if (this.c && this.b.a()) {
            Matcher matcher2 = this.a;
            this.a = this.b;
            this.b = matcher2;
            this.c = false;
        }
        this.d = j;
        if (!this.a.a()) {
            i = this.e + 1;
        }
        this.e = i;
        c();
    }

    public final void c() {
        float f;
        float f2;
        boolean a = this.a.a();
        if (a) {
            Matcher matcher = this.a;
            long j = matcher.e;
            long j2 = 0;
            if (j != 0) {
                j2 = matcher.f / j;
            }
            f = (float) (1.0E9d / j2);
        } else {
            f = this.f;
        }
        float f3 = this.g;
        if (f != f3) {
            if (f != -1.0f && f3 != -1.0f) {
                if (a && this.a.f >= 5000000000L) {
                    f2 = 0.1f;
                } else {
                    f2 = 1.0f;
                }
                if (Math.abs(f - f3) < f2) {
                    return;
                }
            } else if (f == -1.0f && this.e < 30) {
                return;
            }
            this.g = f;
            this.i.g(f);
        }
    }
}
