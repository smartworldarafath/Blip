package androidx.media3.extractor.mp3;

import androidx.media3.extractor.SeekMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
interface Seeker extends SeekMap {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class UnseekableSeeker extends SeekMap.Unseekable implements Seeker {
        @Override // androidx.media3.extractor.mp3.Seeker
        public final long a() {
            return -1L;
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public final long c(long j) {
            return 0L;
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public final int f() {
            return -2147483647;
        }
    }

    long a();

    long c(long j);

    int f();
}
