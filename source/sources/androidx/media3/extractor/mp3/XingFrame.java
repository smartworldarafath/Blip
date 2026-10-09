package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class XingFrame {
    public final MpegAudioUtil.Header a;
    public final long b;
    public final int c;
    public final int d;

    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.media3.extractor.MpegAudioUtil$Header, java.lang.Object] */
    public XingFrame(MpegAudioUtil.Header header, long j, long j2, long[] jArr, Mp3InfoReplayGain mp3InfoReplayGain, int i, int i2) {
        ?? obj = new Object();
        obj.a = header.a;
        obj.b = header.b;
        obj.c = header.c;
        obj.d = header.d;
        obj.e = header.e;
        obj.f = header.f;
        obj.g = header.g;
        this.a = obj;
        this.b = j;
        this.c = i;
        this.d = i2;
    }

    public final long a() {
        int i;
        long j = this.b;
        if (j != -1 && j != 0) {
            MpegAudioUtil.Header header = this.a;
            long j2 = j * header.g;
            if (this.c != -1 && (i = this.d) != -1) {
                j2 -= r6 + i;
            }
            if (j2 > 0) {
                return Util.H(header.d, j2 - 1);
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }
}
