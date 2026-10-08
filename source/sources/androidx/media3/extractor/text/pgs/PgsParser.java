package androidx.media3.extractor.text.pgs;

import android.graphics.Bitmap;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PgsParser implements SubtitleParser {
    public final ParsableByteArray a = new ParsableByteArray();
    public final ParsableByteArray b = new ParsableByteArray();
    public final CueBuilder c = new CueBuilder();
    public Inflater d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CueBuilder {
        public final ParsableByteArray a = new ParsableByteArray();
        public final int[] b = new int[256];
        public boolean c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void b(byte[] bArr, int i, int i2, Consumer consumer) {
        int[] iArr;
        Cue cue;
        int i3;
        int i4;
        int i5;
        int z;
        int i6;
        int i7;
        int C;
        ParsableByteArray parsableByteArray = this.a;
        parsableByteArray.K(i + i2, bArr);
        parsableByteArray.M(i);
        if (this.d == null) {
            this.d = new Inflater();
        }
        Inflater inflater = this.d;
        String str = Util.a;
        if (parsableByteArray.a() > 0 && parsableByteArray.j() == 120) {
            ParsableByteArray parsableByteArray2 = this.b;
            if (Util.y(parsableByteArray, parsableByteArray2, inflater)) {
                parsableByteArray.K(parsableByteArray2.c, parsableByteArray2.a);
            }
        }
        CueBuilder cueBuilder = this.c;
        int i8 = 0;
        cueBuilder.d = 0;
        int[] iArr2 = cueBuilder.b;
        ParsableByteArray parsableByteArray3 = cueBuilder.a;
        cueBuilder.e = 0;
        cueBuilder.f = 0;
        cueBuilder.g = 0;
        cueBuilder.h = 0;
        cueBuilder.i = 0;
        parsableByteArray3.J(0);
        cueBuilder.c = false;
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.a() >= 3) {
            int i9 = parsableByteArray.c;
            int z2 = parsableByteArray.z();
            int G = parsableByteArray.G();
            int i10 = parsableByteArray.b + G;
            if (i10 > i9) {
                parsableByteArray.M(i9);
                i3 = i8;
                iArr = iArr2;
                cue = null;
            } else {
                char c = 128;
                if (z2 != 128) {
                    switch (z2) {
                        case 20:
                            if (G % 5 == 2) {
                                parsableByteArray.N(2);
                                Arrays.fill(iArr2, i8);
                                int i11 = G / 5;
                                int i12 = i8;
                                while (i12 < i11) {
                                    int z3 = parsableByteArray.z();
                                    char c2 = c;
                                    double z4 = parsableByteArray.z();
                                    double z5 = parsableByteArray.z() - 128;
                                    int[] iArr3 = iArr2;
                                    double z6 = parsableByteArray.z() - 128;
                                    iArr3[z3] = Util.g((int) ((z6 * 1.772d) + z4), 0, 255) | (parsableByteArray.z() << 24) | (Util.g((int) ((1.402d * z5) + z4), 0, 255) << 16) | (Util.g((int) ((z4 - (0.34414d * z6)) - (z5 * 0.71414d)), 0, 255) << 8);
                                    i12++;
                                    c = c2;
                                    iArr2 = iArr3;
                                }
                                iArr = iArr2;
                                cueBuilder.c = true;
                                break;
                            }
                            break;
                        case 21:
                            if (G >= 4) {
                                parsableByteArray.N(3);
                                if ((128 & parsableByteArray.z()) != 0) {
                                    i7 = 1;
                                } else {
                                    i7 = i8;
                                }
                                int i13 = G - 4;
                                if (i7 != 0) {
                                    if (i13 >= 7 && (C = parsableByteArray.C()) >= 4) {
                                        cueBuilder.h = parsableByteArray.G();
                                        cueBuilder.i = parsableByteArray.G();
                                        parsableByteArray3.J(C - 4);
                                        i13 = G - 11;
                                    }
                                }
                                int i14 = parsableByteArray3.b;
                                int i15 = parsableByteArray3.c;
                                if (i14 < i15 && i13 > 0) {
                                    int min = Math.min(i13, i15 - i14);
                                    parsableByteArray.k(parsableByteArray3.a, i14, min);
                                    parsableByteArray3.M(i14 + min);
                                    break;
                                }
                            }
                            break;
                        case 22:
                            if (G >= 19) {
                                cueBuilder.d = parsableByteArray.G();
                                cueBuilder.e = parsableByteArray.G();
                                parsableByteArray.N(11);
                                cueBuilder.f = parsableByteArray.G();
                                cueBuilder.g = parsableByteArray.G();
                                break;
                            }
                            break;
                    }
                    iArr = iArr2;
                    cue = null;
                    i3 = 0;
                } else {
                    iArr = iArr2;
                    if (cueBuilder.d != 0 && cueBuilder.e != 0 && cueBuilder.h != 0 && cueBuilder.i != 0 && (i4 = parsableByteArray3.c) != 0 && parsableByteArray3.b == i4 && cueBuilder.c) {
                        parsableByteArray3.M(0);
                        int i16 = cueBuilder.h * cueBuilder.i;
                        int[] iArr4 = new int[i16];
                        int i17 = 0;
                        while (i17 < i16) {
                            int z7 = parsableByteArray3.z();
                            if (z7 != 0) {
                                i5 = i17 + 1;
                                iArr4[i17] = iArr[z7];
                            } else {
                                int z8 = parsableByteArray3.z();
                                if (z8 != 0) {
                                    if ((z8 & 64) == 0) {
                                        z = z8 & 63;
                                    } else {
                                        z = ((z8 & 63) << 8) | parsableByteArray3.z();
                                    }
                                    if ((z8 & 128) == 0) {
                                        i6 = iArr[0];
                                    } else {
                                        i6 = iArr[parsableByteArray3.z()];
                                    }
                                    i5 = z + i17;
                                    Arrays.fill(iArr4, i17, i5, i6);
                                }
                            }
                            i17 = i5;
                        }
                        Bitmap createBitmap = Bitmap.createBitmap(iArr4, cueBuilder.h, cueBuilder.i, Bitmap.Config.ARGB_8888);
                        Cue.Builder builder = new Cue.Builder();
                        builder.b = createBitmap;
                        builder.a = null;
                        float f = cueBuilder.f;
                        float f2 = cueBuilder.d;
                        builder.h = f / f2;
                        builder.i = 0;
                        float f3 = cueBuilder.g;
                        float f4 = cueBuilder.e;
                        builder.e = f3 / f4;
                        builder.f = 0;
                        builder.g = 0;
                        builder.l = cueBuilder.h / f2;
                        builder.m = cueBuilder.i / f4;
                        cue = builder.a();
                    } else {
                        cue = null;
                    }
                    i3 = 0;
                    cueBuilder.d = 0;
                    cueBuilder.e = 0;
                    cueBuilder.f = 0;
                    cueBuilder.g = 0;
                    cueBuilder.h = 0;
                    cueBuilder.i = 0;
                    parsableByteArray3.J(0);
                    cueBuilder.c = false;
                }
                parsableByteArray.M(i10);
            }
            if (cue != null) {
                arrayList.add(cue);
            }
            i8 = i3;
            iArr2 = iArr;
        }
        consumer.accept(new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, arrayList));
    }
}
