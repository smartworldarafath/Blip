package androidx.media3.extractor.ogg;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import com.google.common.base.Preconditions;
import defpackage.k8;
import io.sentry.d;
import java.io.EOFException;
import java.math.BigInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DefaultOggSeeker implements OggSeeker {
    public final OggPageHeader a;
    public final long b;
    public final long c;
    public final StreamReader d;
    public int e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public long k;
    public long l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class OggSeekMap implements SeekMap {
        public OggSeekMap() {
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints e(long j) {
            DefaultOggSeeker defaultOggSeeker = DefaultOggSeeker.this;
            long j2 = defaultOggSeeker.b;
            BigInteger valueOf = BigInteger.valueOf((defaultOggSeeker.d.i * j) / 1000000);
            long j3 = defaultOggSeeker.c;
            SeekPoint seekPoint = new SeekPoint(j, Util.h((valueOf.multiply(BigInteger.valueOf(j3 - j2)).divide(BigInteger.valueOf(defaultOggSeeker.f)).longValue() + j2) - 30000, defaultOggSeeker.b, j3 - 1));
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return (DefaultOggSeeker.this.f * 1000000) / r5.d.i;
        }
    }

    public DefaultOggSeeker(StreamReader streamReader, long j, long j2, long j3, long j4, boolean z) {
        boolean z2;
        if (j >= 0 && j2 > j) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.e(z2);
        this.d = streamReader;
        this.b = j;
        this.c = j2;
        if (j3 != j2 - j && !z) {
            this.e = 0;
        } else {
            this.f = j4;
            this.e = 4;
        }
        this.a = new OggPageHeader();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00c1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c2  */
    @Override // androidx.media3.extractor.ogg.OggSeeker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long a(ExtractorInput extractorInput) {
        long j;
        long j2;
        long j3;
        long h;
        int i = this.e;
        long j4 = this.c;
        OggPageHeader oggPageHeader = this.a;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            return -1L;
                        }
                        d.d();
                        return 0L;
                    }
                    j2 = 2;
                } else {
                    if (this.i == this.j) {
                        h = -1;
                    } else {
                        long position = extractorInput.getPosition();
                        if (!oggPageHeader.b(extractorInput, this.j)) {
                            h = this.i;
                            if (h == position) {
                                k8.j("No ogg page can be found.");
                                return 0L;
                            }
                        } else {
                            oggPageHeader.a(extractorInput, false);
                            extractorInput.j();
                            long j5 = this.h;
                            long j6 = oggPageHeader.b;
                            long j7 = j5 - j6;
                            j2 = 2;
                            int i2 = oggPageHeader.d + oggPageHeader.e;
                            if (0 <= j7 && j7 < 72000) {
                                h = -1;
                            } else {
                                if (j7 < 0) {
                                    this.j = position;
                                    this.l = j6;
                                } else {
                                    this.i = extractorInput.getPosition() + i2;
                                    this.k = oggPageHeader.b;
                                }
                                long j8 = this.j;
                                long j9 = this.i;
                                if (j8 - j9 < 100000) {
                                    this.j = j9;
                                    h = j9;
                                } else {
                                    long j10 = i2;
                                    if (j7 <= 0) {
                                        j3 = 2;
                                    } else {
                                        j3 = 1;
                                    }
                                    long position2 = extractorInput.getPosition() - (j10 * j3);
                                    long j11 = this.j;
                                    long j12 = this.i;
                                    h = Util.h((((j11 - j12) * j7) / (this.l - this.k)) + position2, j12, j11 - 1);
                                }
                            }
                            if (h == -1) {
                                return h;
                            }
                            this.e = 3;
                        }
                    }
                    j2 = 2;
                    if (h == -1) {
                    }
                }
                while (true) {
                    oggPageHeader.b(extractorInput, -1L);
                    oggPageHeader.a(extractorInput, false);
                    if (oggPageHeader.b > this.h) {
                        extractorInput.j();
                        this.e = 4;
                        return -(this.k + j2);
                    }
                    extractorInput.k(oggPageHeader.d + oggPageHeader.e);
                    this.i = extractorInput.getPosition();
                    this.k = oggPageHeader.b;
                }
            } else {
                j = 0;
            }
        } else {
            j = 0;
            long position3 = extractorInput.getPosition();
            this.g = position3;
            this.e = 1;
            long j13 = j4 - 65307;
            if (j13 > position3) {
                return j13;
            }
        }
        oggPageHeader.a = 0;
        oggPageHeader.b = j;
        oggPageHeader.c = 0;
        oggPageHeader.d = 0;
        oggPageHeader.e = 0;
        if (oggPageHeader.b(extractorInput, -1L)) {
            oggPageHeader.a(extractorInput, false);
            extractorInput.k(oggPageHeader.d + oggPageHeader.e);
            long j14 = oggPageHeader.b;
            while ((oggPageHeader.a & 4) != 4 && oggPageHeader.b(extractorInput, -1L) && extractorInput.getPosition() < j4 && oggPageHeader.a(extractorInput, true)) {
                try {
                    extractorInput.k(oggPageHeader.d + oggPageHeader.e);
                    j14 = oggPageHeader.b;
                } catch (EOFException unused) {
                }
            }
            this.f = j14;
            this.e = 4;
            return this.g;
        }
        throw new EOFException();
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    public final SeekMap b() {
        if (this.f != 0) {
            return new OggSeekMap();
        }
        return null;
    }

    @Override // androidx.media3.extractor.ogg.OggSeeker
    public final void c(long j) {
        this.h = Util.h(j, 0L, this.f - 1);
        this.e = 2;
        this.i = this.b;
        this.j = this.c;
        this.k = 0L;
        this.l = this.f;
    }
}
