package androidx.media3.extractor.ts;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import defpackage.q;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PesReader implements TsPayloadReader {
    public final ElementaryStreamReader a;
    public final ParsableBitArray b = new ParsableBitArray(10, new byte[10]);
    public int c = 0;
    public int d;
    public TimestampAdjuster e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public boolean k;
    public long l;

    public PesReader(ElementaryStreamReader elementaryStreamReader) {
        this.a = elementaryStreamReader;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void a() {
        this.c = 0;
        this.d = 0;
        this.h = false;
        this.a.a();
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void b(int i, ParsableByteArray parsableByteArray) {
        int i2;
        int i3;
        int i4;
        int i5;
        this.e.getClass();
        int i6 = i & 1;
        int i7 = -1;
        int i8 = 2;
        ElementaryStreamReader elementaryStreamReader = this.a;
        if (i6 != 0) {
            int i9 = this.c;
            if (i9 != 0 && i9 != 1) {
                if (i9 != 2) {
                    if (i9 == 3) {
                        if (this.j != -1) {
                            Log.f("PesReader", "Unexpected start indicator: expected " + this.j + " more bytes");
                        }
                        elementaryStreamReader.c();
                    } else {
                        d.d();
                        return;
                    }
                } else {
                    Log.f("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            if (parsableByteArray.c == 0) {
                elementaryStreamReader.d();
            }
            this.c = 1;
            this.d = 0;
        }
        int i10 = i;
        while (parsableByteArray.a() > 0) {
            int i11 = this.c;
            if (i11 != 0) {
                ParsableBitArray parsableBitArray = this.b;
                if (i11 != 1) {
                    if (i11 != i8) {
                        if (i11 == 3) {
                            int a = parsableByteArray.a();
                            int i12 = this.j;
                            if (i12 == i7) {
                                i4 = 0;
                            } else {
                                i4 = a - i12;
                            }
                            if (i4 > 0) {
                                a -= i4;
                                parsableByteArray.L(parsableByteArray.b + a);
                            }
                            elementaryStreamReader.b(parsableByteArray);
                            int i13 = this.j;
                            if (i13 != i7) {
                                int i14 = i13 - a;
                                this.j = i14;
                                if (i14 == 0) {
                                    elementaryStreamReader.c();
                                    this.c = 1;
                                    this.d = 0;
                                }
                            }
                        } else {
                            d.d();
                            return;
                        }
                    } else {
                        if (d(parsableByteArray, parsableBitArray.a, Math.min(10, this.i)) && d(parsableByteArray, null, this.i)) {
                            parsableBitArray.m(0);
                            this.l = -9223372036854775807L;
                            if (this.f) {
                                parsableBitArray.o(4);
                                parsableBitArray.o(1);
                                parsableBitArray.o(1);
                                long g = (parsableBitArray.g(15) << 15) | (parsableBitArray.g(3) << 30) | parsableBitArray.g(15);
                                parsableBitArray.o(1);
                                if (!this.h && this.g) {
                                    parsableBitArray.o(4);
                                    parsableBitArray.o(1);
                                    parsableBitArray.o(1);
                                    parsableBitArray.o(1);
                                    this.e.b((parsableBitArray.g(3) << 30) | (parsableBitArray.g(15) << 15) | parsableBitArray.g(15));
                                    this.h = true;
                                }
                                this.l = this.e.b(g);
                            }
                            if (this.k) {
                                i5 = 4;
                            } else {
                                i5 = 0;
                            }
                            i10 |= i5;
                            elementaryStreamReader.e(i10, this.l);
                            this.c = 3;
                            this.d = 0;
                            i7 = -1;
                            i8 = 2;
                        }
                    }
                    i2 = i8;
                } else if (d(parsableByteArray, parsableBitArray.a, 9)) {
                    parsableBitArray.m(0);
                    int g2 = parsableBitArray.g(24);
                    if (g2 != 1) {
                        q.x("Unexpected start code prefix: ", g2, "PesReader");
                        i7 = -1;
                        this.j = -1;
                        i3 = 0;
                        i2 = 2;
                    } else {
                        parsableBitArray.o(8);
                        int g3 = parsableBitArray.g(16);
                        parsableBitArray.o(5);
                        this.k = parsableBitArray.f();
                        i2 = 2;
                        parsableBitArray.o(2);
                        this.f = parsableBitArray.f();
                        this.g = parsableBitArray.f();
                        parsableBitArray.o(6);
                        int g4 = parsableBitArray.g(8);
                        this.i = g4;
                        if (g3 == 0) {
                            this.j = -1;
                            i7 = -1;
                        } else {
                            int i15 = (g3 - 3) - g4;
                            this.j = i15;
                            if (i15 < 0) {
                                Log.f("PesReader", "Found negative packet payload size: " + this.j);
                                i7 = -1;
                                this.j = -1;
                            } else {
                                i7 = -1;
                            }
                        }
                        i3 = 2;
                    }
                    this.c = i3;
                    this.d = 0;
                } else {
                    i7 = -1;
                    i2 = 2;
                }
            } else {
                i2 = i8;
                parsableByteArray.N(parsableByteArray.a());
            }
            i8 = i2;
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void c(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.e = timestampAdjuster;
        this.a.f(extractorOutput, trackIdGenerator);
    }

    public final boolean d(ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int min = Math.min(parsableByteArray.a(), i - this.d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.N(min);
        } else {
            parsableByteArray.k(bArr, this.d, min);
        }
        int i2 = this.d + min;
        this.d = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }
}
