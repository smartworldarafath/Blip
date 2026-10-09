package androidx.media3.extractor.amr;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AmrExtractor implements Extractor {
    public static final int[] q = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final int[] r = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    public static final byte[] s;
    public static final byte[] t;
    public final DiscardingTrackOutput b;
    public boolean c;
    public long d;
    public int e;
    public int f;
    public int h;
    public long i;
    public ExtractorOutput j;
    public TrackOutput k;
    public TrackOutput l;
    public SeekMap m;
    public boolean n;
    public long o;
    public boolean p;
    public final byte[] a = new byte[1];
    public int g = -1;

    static {
        String str = Util.a;
        Charset charset = StandardCharsets.UTF_8;
        s = "#!AMR\n".getBytes(charset);
        t = "#!AMR-WB\n".getBytes(charset);
    }

    public AmrExtractor() {
        DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
        this.b = discardingTrackOutput;
        this.l = discardingTrackOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        return h(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        long c;
        this.d = 0L;
        this.e = 0;
        this.f = 0;
        this.o = j2;
        SeekMap seekMap = this.m;
        if (seekMap instanceof IndexSeekMap) {
            IndexSeekMap indexSeekMap = (IndexSeekMap) seekMap;
            LongArray longArray = indexSeekMap.b;
            if (longArray.a == 0) {
                c = -9223372036854775807L;
            } else {
                c = longArray.c(Util.b(indexSeekMap.a, j));
            }
            this.i = c;
            if (Math.abs(this.o - c) < 20000) {
                return;
            }
            this.n = true;
            this.l = this.b;
            return;
        }
        if (j != 0 && (seekMap instanceof ConstantBitrateSeekMap)) {
            this.i = (Math.max(0L, j - ((ConstantBitrateSeekMap) seekMap).b) * 8000000) / r7.e;
            return;
        }
        this.i = 0L;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.j = extractorOutput;
        TrackOutput s2 = extractorOutput.s(0, 1);
        this.k = s2;
        this.l = s2;
        extractorOutput.n();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0136  */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        ExtractorInput extractorInput2;
        String str;
        int i;
        int i2;
        this.k.getClass();
        String str2 = Util.a;
        if (extractorInput.getPosition() == 0 && !h(extractorInput)) {
            throw ParserException.a(null, "Could not find AMR header.");
        }
        if (!this.p) {
            this.p = true;
            boolean z = this.c;
            String str3 = "audio/amr-wb";
            if (z) {
                str = "audio/amr-wb";
            } else {
                str = "audio/amr";
            }
            if (!z) {
                str3 = "audio/3gpp";
            }
            if (z) {
                i = 16000;
            } else {
                i = 8000;
            }
            if (z) {
                i2 = r[8];
            } else {
                i2 = q[7];
            }
            TrackOutput trackOutput = this.k;
            Format.Builder builder = new Format.Builder();
            builder.n = MimeTypes.l(str);
            builder.o = MimeTypes.l(str3);
            builder.p = i2;
            builder.I = 1;
            builder.K = i;
            trackOutput.e(new Format(builder));
        }
        int i3 = 0;
        if (this.f == 0) {
            try {
                int g = g(extractorInput);
                this.e = g;
                this.f = g;
                if (this.g == -1) {
                    extractorInput.getPosition();
                    this.g = this.e;
                }
                if (this.g == this.e) {
                    this.h++;
                }
                SeekMap seekMap = this.m;
                if (seekMap instanceof IndexSeekMap) {
                    IndexSeekMap indexSeekMap = (IndexSeekMap) seekMap;
                    long j = this.i + this.d + 20000;
                    long position = extractorInput.getPosition() + this.e;
                    LongArray longArray = indexSeekMap.b;
                    int i4 = longArray.a;
                    if (i4 == 0 || j - longArray.c(i4 - 1) >= 100000) {
                        LongArray longArray2 = indexSeekMap.a;
                        LongArray longArray3 = indexSeekMap.b;
                        if (longArray3.a == 0 && j > 0) {
                            longArray2.a(0L);
                            longArray3.a(0L);
                        }
                        longArray2.a(position);
                        longArray3.a(j);
                    }
                    if (this.n && Math.abs(this.o - j) < 20000) {
                        this.n = false;
                        this.l = this.k;
                    }
                }
            } catch (EOFException unused) {
                extractorInput2 = extractorInput;
            }
        }
        extractorInput2 = extractorInput;
        int c = this.l.c(extractorInput2, this.f, true);
        if (c != -1) {
            int i5 = this.f - c;
            this.f = i5;
            if (i5 <= 0) {
                this.l.g(this.d + this.i, 1, this.e, 0, null);
                this.d += 20000;
            }
            extractorInput2.g();
            if (this.m == null) {
                SeekMap.Unseekable unseekable = new SeekMap.Unseekable(-9223372036854775807L);
                this.m = unseekable;
                this.j.f(unseekable);
            }
            if (i3 == -1) {
                SeekMap seekMap2 = this.m;
                if (seekMap2 instanceof IndexSeekMap) {
                    long j2 = this.i + this.d;
                    ((IndexSeekMap) seekMap2).c = j2;
                    this.j.f(seekMap2);
                    this.k.d(j2);
                }
            }
            return i3;
        }
        i3 = -1;
        extractorInput2.g();
        if (this.m == null) {
        }
        if (i3 == -1) {
        }
        return i3;
    }

    public final int g(ExtractorInput extractorInput) {
        String str;
        boolean z;
        extractorInput.j();
        byte[] bArr = this.a;
        extractorInput.n(bArr, 0, 1);
        byte b = bArr[0];
        if ((b & 131) <= 0) {
            int i = (b >> 3) & 15;
            if (i >= 0 && i <= 15 && (((z = this.c) && (i < 10 || i > 13)) || (!z && (i < 12 || i > 14)))) {
                if (z) {
                    return r[i];
                }
                return q[i];
            }
            StringBuilder sb = new StringBuilder("Illegal AMR ");
            if (this.c) {
                str = "WB";
            } else {
                str = "NB";
            }
            sb.append(str);
            sb.append(" frame type ");
            sb.append(i);
            throw ParserException.a(null, sb.toString());
        }
        throw ParserException.a(null, "Invalid padding bits for frame header " + ((int) b));
    }

    public final boolean h(ExtractorInput extractorInput) {
        extractorInput.j();
        byte[] bArr = s;
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.n(bArr2, 0, bArr.length);
        if (Arrays.equals(bArr2, bArr)) {
            this.c = false;
            extractorInput.k(bArr.length);
            return true;
        }
        extractorInput.j();
        byte[] bArr3 = t;
        byte[] bArr4 = new byte[bArr3.length];
        extractorInput.n(bArr4, 0, bArr3.length);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.c = true;
        extractorInput.k(bArr3.length);
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
