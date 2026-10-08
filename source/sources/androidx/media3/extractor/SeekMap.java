package androidx.media3.extractor;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SeekMap {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SeekPoints {
        public final SeekPoint a;
        public final SeekPoint b;

        public SeekPoints(SeekPoint seekPoint, SeekPoint seekPoint2) {
            this.a = seekPoint;
            this.b = seekPoint2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SeekPoints.class == obj.getClass()) {
                SeekPoints seekPoints = (SeekPoints) obj;
                if (this.a.equals(seekPoints.a) && this.b.equals(seekPoints.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("[");
            SeekPoint seekPoint = this.a;
            sb.append(seekPoint);
            SeekPoint seekPoint2 = this.b;
            if (seekPoint.equals(seekPoint2)) {
                str = "";
            } else {
                str = ", " + seekPoint2;
            }
            return q.l(sb, str, "]");
        }
    }

    boolean b();

    default boolean d() {
        return false;
    }

    SeekPoints e(long j);

    long g();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Unseekable implements SeekMap {
        public final long a;
        public final SeekPoints b;

        public Unseekable(long j, long j2) {
            SeekPoint seekPoint;
            this.a = j;
            if (j2 == 0) {
                seekPoint = SeekPoint.c;
            } else {
                seekPoint = new SeekPoint(0L, j2);
            }
            this.b = new SeekPoints(seekPoint, seekPoint);
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            return false;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekPoints e(long j) {
            return this.b;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return this.a;
        }

        public Unseekable(long j) {
            this(j, 0L);
        }
    }
}
