package androidx.media3.extractor.avi;

import androidx.media3.common.util.Log;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AviStreamHeaderChunk implements AviChunk {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    public AviStreamHeaderChunk(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int a() {
        return 1752331379;
    }

    public final int b() {
        int i = this.a;
        if (i != 1935960438) {
            if (i != 1935963489) {
                if (i != 1937012852) {
                    Log.f("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(i));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }
}
