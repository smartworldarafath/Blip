package androidx.media3.extractor;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SeekMap;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BinarySearchSeeker {
    public final BinarySearchSeekMap a;
    public final TimestampSeeker b;
    public SeekOperationParams c;
    public final int d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BinarySearchSeekMap implements SeekMap {
        public final SeekTimestampConverter a;
        public final long b;
        public final long c;
        public final long d;
        public final long e;
        public final long f;

        public BinarySearchSeekMap(SeekTimestampConverter seekTimestampConverter, long j, long j2, long j3, long j4, long j5) {
            this.a = seekTimestampConverter;
            this.b = j;
            this.c = j2;
            this.d = j3;
            this.e = j4;
            this.f = j5;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints e(long j) {
            SeekPoint seekPoint = new SeekPoint(j, SeekOperationParams.a(this.a.f(j), 0L, this.c, this.d, this.e, this.f));
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return this.b;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SeekOperationParams {
        public final long a;
        public final long b;
        public final long c;
        public long d = 0;
        public long e;
        public long f;
        public long g;
        public long h;

        public SeekOperationParams(long j, long j2, long j3, long j4, long j5, long j6) {
            this.a = j;
            this.b = j2;
            this.e = j3;
            this.f = j4;
            this.g = j5;
            this.c = j6;
            this.h = a(j2, 0L, j3, j4, j5, j6);
        }

        public static long a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 < j5 && j2 + 1 < j3) {
                long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
                return Util.h(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
            }
            return j4;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SeekTimestampConverter {
        long f(long j);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TimestampSearchResult {
        public static final TimestampSearchResult d = new TimestampSearchResult(-3, -9223372036854775807L, -1);
        public final int a;
        public final long b;
        public final long c;

        public TimestampSearchResult(int i, long j, long j2) {
            this.a = i;
            this.b = j;
            this.c = j2;
        }
    }

    public BinarySearchSeeker(SeekTimestampConverter seekTimestampConverter, TimestampSeeker timestampSeeker, long j, long j2, long j3, long j4, long j5, int i) {
        this.b = timestampSeeker;
        this.d = i;
        this.a = new BinarySearchSeekMap(seekTimestampConverter, j, j2, j3, j4, j5);
    }

    public static int b(ExtractorInput extractorInput, long j, PositionHolder positionHolder) {
        if (j == extractorInput.getPosition()) {
            return 0;
        }
        positionHolder.a = j;
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00cb, code lost:
    
        return b(r28, r8, r29);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(ExtractorInput extractorInput, PositionHolder positionHolder) {
        while (true) {
            SeekOperationParams seekOperationParams = this.c;
            seekOperationParams.getClass();
            long j = seekOperationParams.f;
            long j2 = seekOperationParams.g;
            long j3 = seekOperationParams.h;
            long j4 = j2 - j;
            long j5 = this.d;
            TimestampSeeker timestampSeeker = this.b;
            if (j4 <= j5) {
                this.c = null;
                timestampSeeker.b();
                return b(extractorInput, j, positionHolder);
            }
            long position = j3 - extractorInput.getPosition();
            if (position < 0 || position > 262144) {
                break;
            }
            extractorInput.k((int) position);
            extractorInput.j();
            TimestampSearchResult a = timestampSeeker.a(extractorInput, seekOperationParams.b);
            int i = a.a;
            long j6 = a.b;
            long j7 = a.c;
            if (i != -3) {
                if (i != -2) {
                    if (i != -1) {
                        if (i == 0) {
                            long position2 = j7 - extractorInput.getPosition();
                            if (position2 >= 0 && position2 <= 262144) {
                                extractorInput.k((int) position2);
                            }
                            this.c = null;
                            timestampSeeker.b();
                            return b(extractorInput, j7, positionHolder);
                        }
                        u2.l("Invalid case");
                        return 0;
                    }
                    seekOperationParams.e = j6;
                    seekOperationParams.g = j7;
                    seekOperationParams.h = SeekOperationParams.a(seekOperationParams.b, seekOperationParams.d, j6, seekOperationParams.f, j7, seekOperationParams.c);
                } else {
                    seekOperationParams.d = j6;
                    seekOperationParams.f = j7;
                    seekOperationParams.h = SeekOperationParams.a(seekOperationParams.b, j6, seekOperationParams.e, j7, seekOperationParams.g, seekOperationParams.c);
                }
            } else {
                this.c = null;
                timestampSeeker.b();
                return b(extractorInput, j3, positionHolder);
            }
        }
    }

    public final void c(long j) {
        SeekOperationParams seekOperationParams = this.c;
        if (seekOperationParams != null && seekOperationParams.a == j) {
            return;
        }
        BinarySearchSeekMap binarySearchSeekMap = this.a;
        this.c = new SeekOperationParams(j, binarySearchSeekMap.a.f(j), binarySearchSeekMap.c, binarySearchSeekMap.d, binarySearchSeekMap.e, binarySearchSeekMap.f);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface TimestampSeeker {
        TimestampSearchResult a(ExtractorInput extractorInput, long j);

        default void b() {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DefaultSeekTimestampConverter implements SeekTimestampConverter {
        @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
        public final long f(long j) {
            return j;
        }
    }
}
