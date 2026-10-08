package androidx.media3.extractor;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import java.nio.ByteOrder;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlacStreamMetadata {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final long j;
    public final SeekTable k;
    public final Metadata l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SeekTable {
        public final long[] a;
        public final long[] b;

        public SeekTable(long[] jArr, long[] jArr2) {
            this.a = jArr;
            this.b = jArr2;
        }
    }

    public FlacStreamMetadata(int i, byte[] bArr) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr.length, bArr);
        parsableBitArray.m(i * 8);
        this.a = parsableBitArray.g(16);
        this.b = parsableBitArray.g(16);
        this.c = parsableBitArray.g(24);
        this.d = parsableBitArray.g(24);
        int g = parsableBitArray.g(20);
        this.e = g;
        this.f = d(g);
        this.g = parsableBitArray.g(3) + 1;
        int g2 = parsableBitArray.g(5) + 1;
        this.h = g2;
        this.i = a(g2);
        this.j = parsableBitArray.i(36);
        this.k = null;
        this.l = null;
    }

    public static int a(int i) {
        if (i != 8) {
            if (i != 12) {
                if (i != 16) {
                    if (i != 20) {
                        if (i != 24) {
                            if (i != 32) {
                                return -1;
                            }
                            return 7;
                        }
                        return 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    public static int d(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long b() {
        long j = this.j;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.e;
    }

    public final Format c(byte[] bArr, Metadata metadata) {
        bArr[4] = Byte.MIN_VALUE;
        int i = this.d;
        if (i <= 0) {
            i = -1;
        }
        Metadata metadata2 = this.l;
        if (metadata2 != null) {
            metadata = metadata2.b(metadata);
        }
        Format.Builder builder = new Format.Builder();
        builder.o = MimeTypes.l("audio/flac");
        builder.p = i;
        builder.I = this.g;
        builder.K = this.e;
        String str = Util.a;
        builder.L = Util.t(this.h, ByteOrder.LITTLE_ENDIAN);
        builder.r = Collections.singletonList(bArr);
        builder.l = metadata;
        return new Format(builder);
    }

    public FlacStreamMetadata(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, SeekTable seekTable, Metadata metadata) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = d(i5);
        this.g = i6;
        this.h = i7;
        this.i = a(i7);
        this.j = j;
        this.k = seekTable;
        this.l = metadata;
    }
}
