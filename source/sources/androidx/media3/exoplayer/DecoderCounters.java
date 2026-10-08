package androidx.media3.exoplayer;

import androidx.media3.common.util.Util;
import defpackage.jb;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DecoderCounters {
    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long k;
    public int l;

    public final String toString() {
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = this.d;
        int i5 = this.e;
        int i6 = this.f;
        int i7 = this.g;
        int i8 = this.h;
        int i9 = this.i;
        int i10 = this.j;
        long j = this.k;
        int i11 = this.l;
        String str = Util.a;
        Locale locale = Locale.US;
        StringBuilder k = jb.k("DecoderCounters {\n decoderInits=", i, ",\n decoderReleases=", i2, "\n queuedInputBuffers=");
        k.append(i3);
        k.append("\n skippedInputBuffers=");
        k.append(i4);
        k.append("\n renderedOutputBuffers=");
        k.append(i5);
        k.append("\n skippedOutputBuffers=");
        k.append(i6);
        k.append("\n droppedBuffers=");
        k.append(i7);
        k.append("\n droppedInputBuffers=");
        k.append(i8);
        k.append("\n maxConsecutiveDroppedBuffers=");
        k.append(i9);
        k.append("\n droppedToKeyframeEvents=");
        k.append(i10);
        k.append("\n totalVideoFrameProcessingOffsetUs=");
        k.append(j);
        k.append("\n videoFrameProcessingOffsetCount=");
        k.append(i11);
        k.append("\n}");
        return k.toString();
    }
}
