package androidx.media3.extractor.text.dvb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DvbParser implements SubtitleParser {
    public static final byte[] h = {0, 7, 8, 15};
    public static final byte[] i = {0, 119, -120, -1};
    public static final byte[] j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public final Paint a;
    public final Paint b;
    public final Canvas c;
    public final DisplayDefinition d;
    public final ClutDefinition e;
    public final SubtitleService f;
    public Bitmap g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ClutDefinition {
        public final int a;
        public final int[] b;
        public final int[] c;
        public final int[] d;

        public ClutDefinition(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.a = i;
            this.b = iArr;
            this.c = iArr2;
            this.d = iArr3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DisplayDefinition {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;

        public DisplayDefinition(int i, int i2, int i3, int i4, int i5, int i6) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ObjectData {
        public final int a;
        public final boolean b;
        public final byte[] c;
        public final byte[] d;

        public ObjectData(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.a = i;
            this.b = z;
            this.c = bArr;
            this.d = bArr2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PageComposition {
        public final int a;
        public final int b;
        public final SparseArray c;

        public PageComposition(int i, int i2, SparseArray sparseArray) {
            this.a = i;
            this.b = i2;
            this.c = sparseArray;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PageRegion {
        public final int a;
        public final int b;

        public PageRegion(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RegionComposition {
        public final int a;
        public final boolean b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final int i;
        public final SparseArray j;

        public RegionComposition(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, SparseArray sparseArray) {
            this.a = i;
            this.b = z;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.g = i6;
            this.h = i7;
            this.i = i8;
            this.j = sparseArray;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RegionObject {
        public final int a;
        public final int b;

        public RegionObject(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SubtitleService {
        public final int a;
        public final int b;
        public final SparseArray c = new SparseArray();
        public final SparseArray d = new SparseArray();
        public final SparseArray e = new SparseArray();
        public final SparseArray f = new SparseArray();
        public final SparseArray g = new SparseArray();
        public DisplayDefinition h;
        public PageComposition i;

        public SubtitleService(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public DvbParser(List list) {
        ParsableByteArray parsableByteArray = new ParsableByteArray((byte[]) list.get(0));
        int G = parsableByteArray.G();
        int G2 = parsableByteArray.G();
        Paint paint = new Paint();
        this.a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.c = new Canvas();
        this.d = new DisplayDefinition(719, 575, 0, 719, 0, 575);
        this.e = new ClutDefinition(0, new int[]{0, -1, -16777216, -8421505}, d(), e());
        this.f = new SubtitleService(G, G2);
    }

    public static byte[] c(int i2, int i3, ParsableBitArray parsableBitArray) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) parsableBitArray.g(i3);
        }
        return bArr;
    }

    public static int[] d() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i7 = 1; i7 < 16; i7++) {
            if (i7 < 8) {
                if ((i7 & 1) != 0) {
                    i4 = 255;
                } else {
                    i4 = 0;
                }
                if ((i7 & 2) != 0) {
                    i5 = 255;
                } else {
                    i5 = 0;
                }
                if ((i7 & 4) != 0) {
                    i6 = 255;
                } else {
                    i6 = 0;
                }
                iArr[i7] = f(255, i4, i5, i6);
            } else {
                int i8 = 127;
                if ((i7 & 1) != 0) {
                    i2 = 127;
                } else {
                    i2 = 0;
                }
                if ((i7 & 2) != 0) {
                    i3 = 127;
                } else {
                    i3 = 0;
                }
                if ((i7 & 4) == 0) {
                    i8 = 0;
                }
                iArr[i7] = f(255, i2, i3, i8);
            }
        }
        return iArr;
    }

    public static int[] e() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i20 = 0; i20 < 256; i20++) {
            int i21 = 255;
            if (i20 < 8) {
                if ((i20 & 1) != 0) {
                    i18 = 255;
                } else {
                    i18 = 0;
                }
                if ((i20 & 2) != 0) {
                    i19 = 255;
                } else {
                    i19 = 0;
                }
                if ((i20 & 4) == 0) {
                    i21 = 0;
                }
                iArr[i20] = f(63, i18, i19, i21);
            } else {
                int i22 = i20 & 136;
                int i23 = 170;
                int i24 = 85;
                if (i22 != 0) {
                    if (i22 != 8) {
                        int i25 = 43;
                        if (i22 != 128) {
                            if (i22 == 136) {
                                if ((i20 & 1) != 0) {
                                    i14 = 43;
                                } else {
                                    i14 = 0;
                                }
                                if ((i20 & 16) != 0) {
                                    i15 = 85;
                                } else {
                                    i15 = 0;
                                }
                                int i26 = i14 + i15;
                                if ((i20 & 2) != 0) {
                                    i16 = 43;
                                } else {
                                    i16 = 0;
                                }
                                if ((i20 & 32) != 0) {
                                    i17 = 85;
                                } else {
                                    i17 = 0;
                                }
                                int i27 = i16 + i17;
                                if ((i20 & 4) == 0) {
                                    i25 = 0;
                                }
                                if ((i20 & 64) == 0) {
                                    i24 = 0;
                                }
                                iArr[i20] = f(255, i26, i27, i25 + i24);
                            }
                        } else {
                            if ((i20 & 1) != 0) {
                                i10 = 43;
                            } else {
                                i10 = 0;
                            }
                            int i28 = i10 + 127;
                            if ((i20 & 16) != 0) {
                                i11 = 85;
                            } else {
                                i11 = 0;
                            }
                            int i29 = i28 + i11;
                            if ((i20 & 2) != 0) {
                                i12 = 43;
                            } else {
                                i12 = 0;
                            }
                            int i30 = i12 + 127;
                            if ((i20 & 32) != 0) {
                                i13 = 85;
                            } else {
                                i13 = 0;
                            }
                            int i31 = i30 + i13;
                            if ((i20 & 4) == 0) {
                                i25 = 0;
                            }
                            int i32 = i25 + 127;
                            if ((i20 & 64) == 0) {
                                i24 = 0;
                            }
                            iArr[i20] = f(255, i29, i31, i32 + i24);
                        }
                    } else {
                        if ((i20 & 1) != 0) {
                            i6 = 85;
                        } else {
                            i6 = 0;
                        }
                        if ((i20 & 16) != 0) {
                            i7 = 170;
                        } else {
                            i7 = 0;
                        }
                        int i33 = i6 + i7;
                        if ((i20 & 2) != 0) {
                            i8 = 85;
                        } else {
                            i8 = 0;
                        }
                        if ((i20 & 32) != 0) {
                            i9 = 170;
                        } else {
                            i9 = 0;
                        }
                        int i34 = i8 + i9;
                        if ((i20 & 4) == 0) {
                            i24 = 0;
                        }
                        if ((i20 & 64) == 0) {
                            i23 = 0;
                        }
                        iArr[i20] = f(127, i33, i34, i24 + i23);
                    }
                } else {
                    if ((i20 & 1) != 0) {
                        i2 = 85;
                    } else {
                        i2 = 0;
                    }
                    if ((i20 & 16) != 0) {
                        i3 = 170;
                    } else {
                        i3 = 0;
                    }
                    int i35 = i2 + i3;
                    if ((i20 & 2) != 0) {
                        i4 = 85;
                    } else {
                        i4 = 0;
                    }
                    if ((i20 & 32) != 0) {
                        i5 = 170;
                    } else {
                        i5 = 0;
                    }
                    int i36 = i4 + i5;
                    if ((i20 & 4) == 0) {
                        i24 = 0;
                    }
                    if ((i20 & 64) == 0) {
                        i23 = 0;
                    }
                    iArr[i20] = f(255, i35, i36, i24 + i23);
                }
            }
        }
        return iArr;
    }

    public static int f(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x01d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0203 A[LOOP:3: B:86:0x0156->B:98:0x0203, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ff A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void g(byte[] bArr, int[] iArr, int i2, int i3, int i4, Paint paint, Canvas canvas) {
        byte[] bArr2;
        char c;
        char c2;
        boolean z;
        int i5;
        int i6;
        int i7;
        byte[] bArr3;
        boolean z2;
        int i8;
        int g;
        int i9;
        int i10;
        int i11;
        int i12;
        byte[] bArr4;
        boolean z3;
        int g2;
        int i13;
        Paint paint2 = paint;
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArr.length, bArr);
        int i14 = i3;
        int i15 = i4;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (parsableBitArray.b() != 0) {
            int i16 = 8;
            int g3 = parsableBitArray.g(8);
            if (g3 != 240) {
                int i17 = 3;
                int i18 = 2;
                int i19 = 4;
                switch (g3) {
                    case 16:
                        if (i2 == 3) {
                            if (bArr5 == null) {
                                bArr2 = i;
                            } else {
                                bArr2 = bArr5;
                            }
                        } else if (i2 == 2) {
                            if (bArr7 == null) {
                                bArr2 = h;
                            } else {
                                bArr2 = bArr7;
                            }
                        } else {
                            bArr2 = null;
                        }
                        boolean z4 = false;
                        while (true) {
                            int g4 = parsableBitArray.g(2);
                            if (g4 != 0) {
                                z = z4;
                                i5 = g4;
                                i6 = 1;
                            } else if (parsableBitArray.f()) {
                                int g5 = parsableBitArray.g(3) + 3;
                                z = z4;
                                i5 = parsableBitArray.g(2);
                                i6 = g5;
                            } else {
                                if (parsableBitArray.f()) {
                                    z = z4;
                                    i6 = 1;
                                    c = '\b';
                                    c2 = 4;
                                } else {
                                    int g6 = parsableBitArray.g(2);
                                    if (g6 != 0) {
                                        if (g6 != 1) {
                                            if (g6 != 2) {
                                                if (g6 != 3) {
                                                    z = z4;
                                                    c = '\b';
                                                    c2 = 4;
                                                } else {
                                                    c = '\b';
                                                    int g7 = parsableBitArray.g(8) + 29;
                                                    i5 = parsableBitArray.g(2);
                                                    z = z4;
                                                    i6 = g7;
                                                    c2 = 4;
                                                    if (i6 == 0 && paint2 != null) {
                                                        if (bArr2 != 0) {
                                                            i5 = bArr2[i5];
                                                        }
                                                        paint2.setColor(iArr[i5]);
                                                        i7 = i14;
                                                        canvas.drawRect(i14, i15, i14 + i6, i15 + 1, paint2);
                                                    } else {
                                                        i7 = i14;
                                                    }
                                                    i14 = i7 + i6;
                                                    if (z) {
                                                        parsableBitArray.c();
                                                        break;
                                                    } else {
                                                        paint2 = paint;
                                                        z4 = z;
                                                    }
                                                }
                                            } else {
                                                c = '\b';
                                                c2 = 4;
                                                i6 = parsableBitArray.g(4) + 12;
                                                i5 = parsableBitArray.g(2);
                                                z = z4;
                                                if (i6 == 0) {
                                                }
                                                i7 = i14;
                                                i14 = i7 + i6;
                                                if (z) {
                                                }
                                            }
                                        } else {
                                            c = '\b';
                                            c2 = 4;
                                            z = z4;
                                            i6 = 2;
                                        }
                                    } else {
                                        c = '\b';
                                        c2 = 4;
                                        z = true;
                                    }
                                    i5 = 0;
                                    i6 = 0;
                                    if (i6 == 0) {
                                    }
                                    i7 = i14;
                                    i14 = i7 + i6;
                                    if (z) {
                                    }
                                }
                                i5 = 0;
                                if (i6 == 0) {
                                }
                                i7 = i14;
                                i14 = i7 + i6;
                                if (z) {
                                }
                            }
                            c = '\b';
                            c2 = 4;
                            if (i6 == 0) {
                            }
                            i7 = i14;
                            i14 = i7 + i6;
                            if (z) {
                            }
                        }
                    case 17:
                        if (i2 == 3) {
                            if (bArr6 == null) {
                                bArr4 = j;
                            } else {
                                bArr4 = bArr6;
                            }
                            bArr3 = bArr4;
                        } else {
                            bArr3 = null;
                        }
                        boolean z5 = false;
                        while (true) {
                            int g8 = parsableBitArray.g(i19);
                            if (g8 != 0) {
                                z2 = z5;
                                i9 = g8;
                                i8 = 1;
                            } else if (!parsableBitArray.f()) {
                                int g9 = parsableBitArray.g(i17);
                                if (g9 != 0) {
                                    i8 = g9 + 2;
                                    z2 = z5;
                                    i9 = 0;
                                } else {
                                    z2 = true;
                                    i8 = 0;
                                    i9 = 0;
                                }
                            } else {
                                if (!parsableBitArray.f()) {
                                    i8 = parsableBitArray.g(i18) + 4;
                                    i9 = parsableBitArray.g(i19);
                                } else {
                                    int g10 = parsableBitArray.g(i18);
                                    if (g10 != 0) {
                                        if (g10 != 1) {
                                            if (g10 != i18) {
                                                if (g10 != i17) {
                                                    z2 = z5;
                                                    i8 = 0;
                                                } else {
                                                    i8 = parsableBitArray.g(i16) + 25;
                                                    g = parsableBitArray.g(i19);
                                                }
                                            } else {
                                                i8 = parsableBitArray.g(i19) + 9;
                                                g = parsableBitArray.g(i19);
                                            }
                                            i9 = g;
                                        } else {
                                            z2 = z5;
                                            i8 = i18;
                                        }
                                    } else {
                                        z2 = z5;
                                        i8 = 1;
                                    }
                                    i9 = 0;
                                }
                                z2 = z5;
                            }
                            if (i8 != 0 && paint2 != null) {
                                if (bArr3 != 0) {
                                    i9 = bArr3[i9];
                                }
                                paint2.setColor(iArr[i9]);
                                i11 = i17;
                                i12 = 2;
                                i10 = i14;
                                canvas.drawRect(i14, i15, i14 + i8, i15 + 1, paint2);
                            } else {
                                i10 = i14;
                                i11 = i17;
                                i12 = i18;
                            }
                            i14 = i10 + i8;
                            if (z2) {
                                parsableBitArray.c();
                                break;
                            } else {
                                z5 = z2;
                                i17 = i11;
                                i18 = i12;
                                i19 = 4;
                                i16 = 8;
                            }
                        }
                    case 18:
                        boolean z6 = false;
                        while (true) {
                            int g11 = parsableBitArray.g(8);
                            if (g11 != 0) {
                                z3 = z6;
                                g2 = 1;
                            } else if (!parsableBitArray.f()) {
                                int g12 = parsableBitArray.g(7);
                                if (g12 != 0) {
                                    z3 = z6;
                                    g2 = g12;
                                    g11 = 0;
                                } else {
                                    z3 = true;
                                    g11 = 0;
                                    g2 = 0;
                                }
                            } else {
                                z3 = z6;
                                g2 = parsableBitArray.g(7);
                                g11 = parsableBitArray.g(8);
                            }
                            if (g2 != 0 && paint2 != null) {
                                paint2.setColor(iArr[g11]);
                                i13 = i14;
                                canvas.drawRect(i14, i15, i14 + g2, i15 + 1, paint2);
                            } else {
                                i13 = i14;
                            }
                            i14 = i13 + g2;
                            if (z3) {
                                break;
                            } else {
                                z6 = z3;
                            }
                        }
                        break;
                    default:
                        switch (g3) {
                            case 32:
                                bArr7 = c(4, 4, parsableBitArray);
                                break;
                            case 33:
                                bArr5 = c(4, 8, parsableBitArray);
                                break;
                            case 34:
                                bArr6 = c(16, 8, parsableBitArray);
                                break;
                        }
                }
            } else {
                i15 += 2;
                i14 = i3;
            }
            paint2 = paint;
        }
    }

    public static ClutDefinition h(ParsableBitArray parsableBitArray, int i2) {
        int[] iArr;
        int g;
        int i3;
        int g2;
        int i4;
        int i5;
        int i6 = 8;
        int g3 = parsableBitArray.g(8);
        parsableBitArray.o(8);
        int i7 = 2;
        int i8 = i2 - 2;
        int i9 = 0;
        int[] iArr2 = {0, -1, -16777216, -8421505};
        int[] d = d();
        int[] e = e();
        while (i8 > 0) {
            int g4 = parsableBitArray.g(i6);
            int g5 = parsableBitArray.g(i6);
            if ((g5 & 128) != 0) {
                iArr = iArr2;
            } else if ((g5 & 64) != 0) {
                iArr = d;
            } else {
                iArr = e;
            }
            if ((g5 & 1) != 0) {
                i4 = parsableBitArray.g(i6);
                i5 = parsableBitArray.g(i6);
                g = parsableBitArray.g(i6);
                g2 = parsableBitArray.g(i6);
                i3 = i8 - 6;
            } else {
                int g6 = parsableBitArray.g(6) << i7;
                int g7 = parsableBitArray.g(4) << 4;
                g = parsableBitArray.g(4) << 4;
                i3 = i8 - 4;
                g2 = parsableBitArray.g(i7) << 6;
                i4 = g6;
                i5 = g7;
            }
            if (i4 == 0) {
                i5 = i9;
                g = i5;
                g2 = 255;
            }
            double d2 = i4;
            double d3 = i5 - 128;
            double d4 = g - 128;
            iArr[g4] = f((byte) (255 - (g2 & 255)), Util.g((int) ((1.402d * d3) + d2), 0, 255), Util.g((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), Util.g((int) ((d4 * 1.772d) + d2), 0, 255));
            i8 = i3;
            i9 = 0;
            g3 = g3;
            e = e;
            i6 = 8;
            i7 = 2;
        }
        return new ClutDefinition(g3, iArr2, d, e);
    }

    public static ObjectData i(ParsableBitArray parsableBitArray) {
        byte[] bArr;
        int g = parsableBitArray.g(16);
        parsableBitArray.o(4);
        int g2 = parsableBitArray.g(2);
        boolean f = parsableBitArray.f();
        parsableBitArray.o(1);
        byte[] bArr2 = Util.b;
        if (g2 == 1) {
            parsableBitArray.o(parsableBitArray.g(8) * 16);
        } else if (g2 == 0) {
            int g3 = parsableBitArray.g(16);
            int g4 = parsableBitArray.g(16);
            if (g3 > 0) {
                bArr2 = new byte[g3];
                parsableBitArray.j(g3, bArr2);
            }
            if (g4 > 0) {
                bArr = new byte[g4];
                parsableBitArray.j(g4, bArr);
                return new ObjectData(g, f, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new ObjectData(g, f, bArr2, bArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e4, code lost:
    
        r2.p(r12 - r2.d());
     */
    @Override // androidx.media3.extractor.text.SubtitleParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(byte[] bArr, int i2, int i3, Consumer consumer) {
        SubtitleService subtitleService;
        boolean z;
        CuesWithTiming cuesWithTiming;
        char c;
        char c2;
        char c3;
        int i4;
        DisplayDefinition displayDefinition;
        ArrayList arrayList;
        int i5;
        RegionComposition regionComposition;
        int i6;
        int i7;
        int i8;
        SubtitleService subtitleService2;
        int i9;
        Paint paint;
        int[] iArr;
        RegionComposition regionComposition2;
        int i10;
        int i11;
        int i12;
        int i13;
        ParsableBitArray parsableBitArray = new ParsableBitArray(i2 + i3, bArr);
        parsableBitArray.m(i2);
        while (true) {
            int b = parsableBitArray.b();
            subtitleService = this.f;
            z = true;
            if (b >= 48 && parsableBitArray.g(8) == 15) {
                int g = parsableBitArray.g(8);
                int g2 = parsableBitArray.g(16);
                int g3 = parsableBitArray.g(16);
                int d = parsableBitArray.d() + g3;
                if (g3 * 8 > parsableBitArray.b()) {
                    Log.f("DvbParser", "Data field length exceeds limit");
                    parsableBitArray.o(parsableBitArray.b());
                } else {
                    switch (g) {
                        case 16:
                            if (g2 == subtitleService.a) {
                                PageComposition pageComposition = subtitleService.i;
                                parsableBitArray.g(8);
                                int g4 = parsableBitArray.g(4);
                                int g5 = parsableBitArray.g(2);
                                parsableBitArray.o(2);
                                int i14 = g3 - 2;
                                SparseArray sparseArray = new SparseArray();
                                while (i14 > 0) {
                                    int g6 = parsableBitArray.g(8);
                                    parsableBitArray.o(8);
                                    i14 -= 6;
                                    sparseArray.put(g6, new PageRegion(parsableBitArray.g(16), parsableBitArray.g(16)));
                                }
                                PageComposition pageComposition2 = new PageComposition(g4, g5, sparseArray);
                                if (g5 != 0) {
                                    subtitleService.i = pageComposition2;
                                    subtitleService.c.clear();
                                    subtitleService.d.clear();
                                    subtitleService.e.clear();
                                    break;
                                } else if (pageComposition != null && pageComposition.a != g4) {
                                    subtitleService.i = pageComposition2;
                                    break;
                                }
                            }
                            break;
                        case 17:
                            PageComposition pageComposition3 = subtitleService.i;
                            SparseArray sparseArray2 = subtitleService.c;
                            if (g2 == subtitleService.a && pageComposition3 != null) {
                                int g7 = parsableBitArray.g(8);
                                parsableBitArray.o(4);
                                boolean f = parsableBitArray.f();
                                parsableBitArray.o(3);
                                int g8 = parsableBitArray.g(16);
                                int g9 = parsableBitArray.g(16);
                                parsableBitArray.g(3);
                                int g10 = parsableBitArray.g(3);
                                parsableBitArray.o(2);
                                int g11 = parsableBitArray.g(8);
                                int g12 = parsableBitArray.g(8);
                                int g13 = parsableBitArray.g(4);
                                int g14 = parsableBitArray.g(2);
                                parsableBitArray.o(2);
                                int i15 = g3 - 10;
                                SparseArray sparseArray3 = new SparseArray();
                                while (i15 > 0) {
                                    int g15 = parsableBitArray.g(16);
                                    int g16 = parsableBitArray.g(2);
                                    parsableBitArray.g(2);
                                    int g17 = parsableBitArray.g(12);
                                    parsableBitArray.o(4);
                                    int g18 = parsableBitArray.g(12);
                                    int i16 = i15 - 6;
                                    if (g16 != 1 && g16 != 2) {
                                        i15 = i16;
                                    } else {
                                        parsableBitArray.g(8);
                                        parsableBitArray.g(8);
                                        i15 -= 8;
                                    }
                                    sparseArray3.put(g15, new RegionObject(g17, g18));
                                }
                                RegionComposition regionComposition3 = new RegionComposition(g7, f, g8, g9, g10, g11, g12, g13, g14, sparseArray3);
                                if (pageComposition3.b == 0 && (regionComposition2 = (RegionComposition) sparseArray2.get(g7)) != null) {
                                    SparseArray sparseArray4 = regionComposition2.j;
                                    for (int i17 = 0; i17 < sparseArray4.size(); i17++) {
                                        regionComposition3.j.put(sparseArray4.keyAt(i17), (RegionObject) sparseArray4.valueAt(i17));
                                    }
                                }
                                sparseArray2.put(regionComposition3.a, regionComposition3);
                                break;
                            }
                            break;
                        case 18:
                            if (g2 == subtitleService.a) {
                                ClutDefinition h2 = h(parsableBitArray, g3);
                                subtitleService.d.put(h2.a, h2);
                                break;
                            } else if (g2 == subtitleService.b) {
                                ClutDefinition h3 = h(parsableBitArray, g3);
                                subtitleService.f.put(h3.a, h3);
                                break;
                            }
                            break;
                        case 19:
                            if (g2 == subtitleService.a) {
                                ObjectData i18 = i(parsableBitArray);
                                subtitleService.e.put(i18.a, i18);
                                break;
                            } else if (g2 == subtitleService.b) {
                                ObjectData i19 = i(parsableBitArray);
                                subtitleService.g.put(i19.a, i19);
                                break;
                            }
                            break;
                        case 20:
                            if (g2 == subtitleService.a) {
                                parsableBitArray.o(4);
                                boolean f2 = parsableBitArray.f();
                                parsableBitArray.o(3);
                                int g19 = parsableBitArray.g(16);
                                int g20 = parsableBitArray.g(16);
                                if (f2) {
                                    int g21 = parsableBitArray.g(16);
                                    i10 = parsableBitArray.g(16);
                                    i13 = parsableBitArray.g(16);
                                    i11 = parsableBitArray.g(16);
                                    i12 = g21;
                                } else {
                                    i10 = g19;
                                    i11 = g20;
                                    i12 = 0;
                                    i13 = 0;
                                }
                                subtitleService.h = new DisplayDefinition(g19, g20, i12, i10, i13, i11);
                                break;
                            }
                            break;
                    }
                }
            }
        }
        PageComposition pageComposition4 = subtitleService.i;
        if (pageComposition4 == null) {
            cuesWithTiming = new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, ImmutableList.r());
        } else {
            DisplayDefinition displayDefinition2 = subtitleService.h;
            if (displayDefinition2 == null) {
                displayDefinition2 = this.d;
            }
            Bitmap bitmap = this.g;
            Canvas canvas = this.c;
            if (bitmap == null || displayDefinition2.a + 1 != bitmap.getWidth() || displayDefinition2.b + 1 != this.g.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(displayDefinition2.a + 1, displayDefinition2.b + 1, Bitmap.Config.ARGB_8888);
                this.g = createBitmap;
                canvas.setBitmap(createBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray5 = pageComposition4.c;
            int i20 = 0;
            while (i20 < sparseArray5.size()) {
                canvas.save();
                PageRegion pageRegion = (PageRegion) sparseArray5.valueAt(i20);
                RegionComposition regionComposition4 = (RegionComposition) subtitleService.c.get(sparseArray5.keyAt(i20));
                int i21 = pageRegion.a + displayDefinition2.c;
                int i22 = pageRegion.b + displayDefinition2.e;
                int i23 = regionComposition4.c;
                int i24 = regionComposition4.f;
                int i25 = regionComposition4.d;
                boolean z2 = z;
                int i26 = i21 + i23;
                int i27 = i22 + i25;
                SparseArray sparseArray6 = sparseArray5;
                canvas.clipRect(i21, i22, Math.min(i26, displayDefinition2.d), Math.min(i27, displayDefinition2.f));
                ClutDefinition clutDefinition = (ClutDefinition) subtitleService.d.get(i24);
                if (clutDefinition == null && (clutDefinition = (ClutDefinition) subtitleService.f.get(i24)) == null) {
                    clutDefinition = this.e;
                }
                SparseArray sparseArray7 = regionComposition4.j;
                int i28 = i20;
                int i29 = 0;
                while (true) {
                    Canvas canvas2 = canvas;
                    if (i29 < sparseArray7.size()) {
                        int keyAt = sparseArray7.keyAt(i29);
                        RegionObject regionObject = (RegionObject) sparseArray7.valueAt(i29);
                        SparseArray sparseArray8 = sparseArray7;
                        ObjectData objectData = (ObjectData) subtitleService.e.get(keyAt);
                        if (objectData == null) {
                            objectData = (ObjectData) subtitleService.g.get(keyAt);
                        }
                        if (objectData != null) {
                            if (objectData.b) {
                                paint = null;
                            } else {
                                paint = this.a;
                            }
                            int i30 = i21;
                            int i31 = regionComposition4.e;
                            int i32 = i30 + regionObject.a;
                            int i33 = regionObject.b + i22;
                            if (i31 == 3) {
                                iArr = clutDefinition.d;
                            } else if (i31 == 2) {
                                iArr = clutDefinition.c;
                            } else {
                                iArr = clutDefinition.b;
                            }
                            displayDefinition = displayDefinition2;
                            i6 = i23;
                            RegionComposition regionComposition5 = regionComposition4;
                            int[] iArr2 = iArr;
                            regionComposition = regionComposition5;
                            i8 = i25;
                            Paint paint2 = paint;
                            i7 = i29;
                            canvas = canvas2;
                            subtitleService2 = subtitleService;
                            i9 = i30;
                            arrayList = arrayList2;
                            i5 = i22;
                            g(objectData.c, iArr2, i31, i32, i33, paint2, canvas);
                            g(objectData.d, iArr2, i31, i32, i33 + 1, paint2, canvas);
                        } else {
                            displayDefinition = displayDefinition2;
                            arrayList = arrayList2;
                            i5 = i22;
                            regionComposition = regionComposition4;
                            i6 = i23;
                            i7 = i29;
                            i8 = i25;
                            canvas = canvas2;
                            subtitleService2 = subtitleService;
                            i9 = i21;
                        }
                        i29 = i7 + 1;
                        i23 = i6;
                        i22 = i5;
                        regionComposition4 = regionComposition;
                        i21 = i9;
                        subtitleService = subtitleService2;
                        sparseArray7 = sparseArray8;
                        arrayList2 = arrayList;
                        displayDefinition2 = displayDefinition;
                        i25 = i8;
                    } else {
                        DisplayDefinition displayDefinition3 = displayDefinition2;
                        ArrayList arrayList3 = arrayList2;
                        int i34 = i22;
                        RegionComposition regionComposition6 = regionComposition4;
                        int i35 = i23;
                        int i36 = i25;
                        canvas = canvas2;
                        SubtitleService subtitleService3 = subtitleService;
                        int i37 = i21;
                        if (regionComposition6.b) {
                            int i38 = regionComposition6.e;
                            if (i38 == 3) {
                                i4 = clutDefinition.d[regionComposition6.g];
                                c3 = 2;
                            } else {
                                c3 = 2;
                                if (i38 == 2) {
                                    i4 = clutDefinition.c[regionComposition6.h];
                                } else {
                                    i4 = clutDefinition.b[regionComposition6.i];
                                }
                            }
                            Paint paint3 = this.b;
                            paint3.setColor(i4);
                            c = c3;
                            c2 = 3;
                            canvas.drawRect(i37, i34, i26, i27, paint3);
                        } else {
                            c = 2;
                            c2 = 3;
                        }
                        Cue.Builder builder = new Cue.Builder();
                        builder.b = Bitmap.createBitmap(this.g, i37, i34, i35, i36);
                        builder.a = null;
                        float f3 = displayDefinition3.a;
                        builder.h = i37 / f3;
                        builder.i = 0;
                        float f4 = displayDefinition3.b;
                        builder.e = i34 / f4;
                        builder.f = 0;
                        builder.g = 0;
                        builder.l = i35 / f3;
                        builder.m = i36 / f4;
                        arrayList3.add(builder.a());
                        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                        canvas.restore();
                        z = z2;
                        displayDefinition2 = displayDefinition3;
                        arrayList2 = arrayList3;
                        subtitleService = subtitleService3;
                        i20 = i28 + 1;
                        sparseArray5 = sparseArray6;
                    }
                }
            }
            cuesWithTiming = new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, arrayList2);
        }
        consumer.accept(cuesWithTiming);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void reset() {
        SubtitleService subtitleService = this.f;
        subtitleService.c.clear();
        subtitleService.d.clear();
        subtitleService.e.clear();
        subtitleService.f.clear();
        subtitleService.g.clear();
        subtitleService.h = null;
        subtitleService.i = null;
    }
}
