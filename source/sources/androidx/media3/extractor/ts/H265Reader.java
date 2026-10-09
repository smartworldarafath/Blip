package androidx.media3.extractor.ts;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class H265Reader implements ElementaryStreamReader {
    public final SeiReader a;
    public String b;
    public TrackOutput c;
    public SampleReader d;
    public boolean e;
    public long l;
    public final boolean[] f = new boolean[3];
    public final NalUnitTargetBuffer g = new NalUnitTargetBuffer(32);
    public final NalUnitTargetBuffer h = new NalUnitTargetBuffer(33);
    public final NalUnitTargetBuffer i = new NalUnitTargetBuffer(34);
    public final NalUnitTargetBuffer j = new NalUnitTargetBuffer(39);
    public final NalUnitTargetBuffer k = new NalUnitTargetBuffer(40);
    public long m = -9223372036854775807L;
    public final ParsableByteArray n = new ParsableByteArray();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SampleReader {
        public final TrackOutput a;
        public long b;
        public boolean c;
        public int d;
        public long e;
        public boolean f;
        public boolean g;
        public boolean h;
        public boolean i;
        public boolean j;
        public long k;
        public long l;
        public boolean m;

        public SampleReader(TrackOutput trackOutput) {
            this.a = trackOutput;
        }

        public final void a(int i) {
            long j = this.l;
            if (j != -9223372036854775807L) {
                long j2 = this.b;
                long j3 = this.k;
                if (j2 != j3) {
                    int i2 = (int) (j2 - j3);
                    this.a.g(j, this.m ? 1 : 0, i2, i, null);
                }
            }
        }
    }

    public H265Reader(SeiReader seiReader) {
        this.a = seiReader;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.l = 0L;
        this.m = -9223372036854775807L;
        NalUnitUtil.a(this.f);
        this.g.c();
        this.h.c();
        this.i.c();
        this.j.c();
        this.k.c();
        this.a.c.b(0);
        SampleReader sampleReader = this.d;
        if (sampleReader != null) {
            sampleReader.f = false;
            sampleReader.g = false;
            sampleReader.h = false;
            sampleReader.i = false;
            sampleReader.j = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        this.c.getClass();
        String str = Util.a;
        while (parsableByteArray.a() > 0) {
            int i3 = parsableByteArray.b;
            int i4 = parsableByteArray.c;
            byte[] bArr = parsableByteArray.a;
            this.l += parsableByteArray.a();
            this.c.f(parsableByteArray.a(), parsableByteArray);
            while (i3 < i4) {
                int b = NalUnitUtil.b(bArr, i3, i4, this.f);
                if (b == i4) {
                    h(bArr, i3, i4);
                    return;
                }
                int i5 = (bArr[b + 3] & 126) >> 1;
                if (b > 0 && bArr[b - 1] == 0) {
                    b--;
                    i = 4;
                } else {
                    i = 3;
                }
                int i6 = b;
                int i7 = i;
                int i8 = i6 - i3;
                if (i8 > 0) {
                    h(bArr, i3, i6);
                }
                int i9 = i4 - i6;
                long j = this.l - i9;
                if (i8 < 0) {
                    i2 = -i8;
                } else {
                    i2 = 0;
                }
                g(i9, i2, j, this.m);
                i(i9, i5, j, this.m);
                i3 = i6 + i7;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d() {
        this.c.getClass();
        String str = Util.a;
        this.a.c.b(0);
        g(0, 0, this.l, this.m);
        i(0, 48, this.l, this.m);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.m = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.b = trackIdGenerator.e;
        trackIdGenerator.b();
        TrackOutput s = extractorOutput.s(trackIdGenerator.d, 2);
        this.c = s;
        this.d = new SampleReader(s);
        this.a.a(extractorOutput, trackIdGenerator);
    }

    public final void g(int i, int i2, long j, long j2) {
        ReorderingBufferQueue reorderingBufferQueue = this.a.c;
        SampleReader sampleReader = this.d;
        boolean z = this.e;
        boolean z2 = false;
        if (sampleReader.j && sampleReader.g) {
            sampleReader.m = sampleReader.c;
            sampleReader.j = false;
        } else if (sampleReader.h || sampleReader.g) {
            if (z && sampleReader.i) {
                sampleReader.a(i + ((int) (j - sampleReader.b)));
            }
            sampleReader.k = sampleReader.b;
            sampleReader.l = sampleReader.e;
            sampleReader.m = sampleReader.c;
            sampleReader.i = true;
        }
        if (!this.e) {
            NalUnitTargetBuffer nalUnitTargetBuffer = this.g;
            nalUnitTargetBuffer.b(i2);
            NalUnitTargetBuffer nalUnitTargetBuffer2 = this.h;
            nalUnitTargetBuffer2.b(i2);
            NalUnitTargetBuffer nalUnitTargetBuffer3 = this.i;
            nalUnitTargetBuffer3.b(i2);
            if (nalUnitTargetBuffer.c && nalUnitTargetBuffer2.c && nalUnitTargetBuffer3.c) {
                String str = this.b;
                int i3 = nalUnitTargetBuffer.e;
                byte[] bArr = new byte[nalUnitTargetBuffer2.e + i3 + nalUnitTargetBuffer3.e];
                System.arraycopy(nalUnitTargetBuffer.d, 0, bArr, 0, i3);
                System.arraycopy(nalUnitTargetBuffer2.d, 0, bArr, nalUnitTargetBuffer.e, nalUnitTargetBuffer2.e);
                System.arraycopy(nalUnitTargetBuffer3.d, 0, bArr, nalUnitTargetBuffer.e + nalUnitTargetBuffer2.e, nalUnitTargetBuffer3.e);
                String str2 = null;
                NalUnitUtil.H265SpsData i4 = NalUnitUtil.i(nalUnitTargetBuffer2.d, 3, nalUnitTargetBuffer2.e, null);
                NalUnitUtil.H265ProfileTierLevel h265ProfileTierLevel = i4.b;
                if (h265ProfileTierLevel != null) {
                    str2 = CodecSpecificDataUtil.a(h265ProfileTierLevel.a, h265ProfileTierLevel.b, h265ProfileTierLevel.c, h265ProfileTierLevel.d, h265ProfileTierLevel.e, h265ProfileTierLevel.f);
                }
                Format.Builder builder = new Format.Builder();
                builder.a = str;
                builder.n = MimeTypes.l("video/mp2t");
                builder.o = MimeTypes.l("video/hevc");
                builder.k = str2;
                builder.v = i4.e;
                builder.w = i4.f;
                builder.y = i4.g;
                builder.z = i4.h;
                ColorInfo.Builder builder2 = new ColorInfo.Builder();
                builder2.a = i4.k;
                builder2.b = i4.l;
                builder2.c = i4.m;
                builder2.e = i4.c + 8;
                builder2.f = i4.d + 8;
                builder.G = builder2.a();
                builder.D = i4.i;
                builder.q = i4.j;
                builder.H = i4.a + 1;
                builder.r = Collections.singletonList(bArr);
                Format format = new Format(builder);
                this.c.e(format);
                int i5 = format.r;
                if (i5 != -1) {
                    z2 = true;
                }
                Preconditions.n(z2);
                reorderingBufferQueue.c(i5);
                this.e = true;
            }
        }
        NalUnitTargetBuffer nalUnitTargetBuffer4 = this.j;
        boolean b = nalUnitTargetBuffer4.b(i2);
        ParsableByteArray parsableByteArray = this.n;
        if (b) {
            parsableByteArray.K(NalUnitUtil.m(nalUnitTargetBuffer4.e, nalUnitTargetBuffer4.d), nalUnitTargetBuffer4.d);
            parsableByteArray.N(5);
            reorderingBufferQueue.a(j2, parsableByteArray);
        }
        NalUnitTargetBuffer nalUnitTargetBuffer5 = this.k;
        if (nalUnitTargetBuffer5.b(i2)) {
            parsableByteArray.K(NalUnitUtil.m(nalUnitTargetBuffer5.e, nalUnitTargetBuffer5.d), nalUnitTargetBuffer5.d);
            parsableByteArray.N(5);
            reorderingBufferQueue.a(j2, parsableByteArray);
        }
    }

    public final void h(byte[] bArr, int i, int i2) {
        boolean z;
        SampleReader sampleReader = this.d;
        if (sampleReader.f) {
            int i3 = sampleReader.d;
            int i4 = (i + 2) - i3;
            if (i4 < i2) {
                if ((bArr[i4] & 128) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                sampleReader.g = z;
                sampleReader.f = false;
            } else {
                sampleReader.d = (i2 - i) + i3;
            }
        }
        if (!this.e) {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    public final void i(int i, int i2, long j, long j2) {
        boolean z;
        SampleReader sampleReader = this.d;
        boolean z2 = this.e;
        boolean z3 = false;
        sampleReader.g = false;
        sampleReader.h = false;
        sampleReader.e = j2;
        sampleReader.d = 0;
        sampleReader.b = j;
        if (i2 >= 32 && i2 != 40) {
            if (sampleReader.i && !sampleReader.j) {
                if (z2) {
                    sampleReader.a(i);
                }
                sampleReader.i = false;
            }
            if ((32 <= i2 && i2 <= 35) || i2 == 39) {
                sampleReader.h = !sampleReader.j;
                sampleReader.j = true;
            }
        }
        if (i2 >= 16 && i2 <= 21) {
            z = true;
        } else {
            z = false;
        }
        sampleReader.c = z;
        if (z || i2 <= 9) {
            z3 = true;
        }
        sampleReader.f = z3;
        if (!this.e) {
            this.g.d(i2);
            this.h.d(i2);
            this.i.d(i2);
        }
        this.j.d(i2);
        this.k.d(i2);
    }
}
