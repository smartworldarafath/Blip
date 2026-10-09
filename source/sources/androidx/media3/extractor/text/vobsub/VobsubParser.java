package androidx.media3.extractor.text.vobsub;

import android.graphics.Bitmap;
import android.graphics.Rect;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import defpackage.q;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.zip.Inflater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VobsubParser implements SubtitleParser {
    public static final CuesWithTiming e = new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, ImmutableList.r());
    public final ParsableByteArray a = new ParsableByteArray();
    public final ParsableByteArray b = new ParsableByteArray();
    public final CueBuilder c;
    public Inflater d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CueBuilder {
        public boolean d;
        public boolean e;
        public int[] f;
        public int g;
        public int h;
        public Rect i;
        public long b = -9223372036854775807L;
        public long c = -9223372036854775807L;
        public final int[] a = new int[4];
        public int j = -1;
        public int k = -1;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Run {
            public int a;
            public int b;
        }

        public static int a(int[] iArr, int i) {
            if (i >= 0 && i < iArr.length) {
                return iArr[i];
            }
            return iArr[0];
        }

        public static int c(int i, int i2) {
            return (i & 16777215) | ((i2 * 17) << 24);
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [androidx.media3.extractor.text.vobsub.VobsubParser$CueBuilder$Run, java.lang.Object] */
        public final void b(ParsableBitArray parsableBitArray, boolean z, Rect rect, int[] iArr) {
            int i;
            int width = rect.width();
            int height = rect.height();
            int i2 = !z ? 1 : 0;
            int i3 = i2 * width;
            ?? obj = new Object();
            while (true) {
                int i4 = 0;
                do {
                    int i5 = 0;
                    for (int i6 = 1; i5 < i6 && i6 <= 64; i6 <<= 2) {
                        if (parsableBitArray.b() < 4) {
                            obj.a = -1;
                            obj.b = 0;
                            break;
                        }
                        i5 = (i5 << 4) | parsableBitArray.g(4);
                    }
                    obj.a = i5 & 3;
                    if (i5 < 4) {
                        i = width;
                    } else {
                        i = i5 >> 2;
                    }
                    obj.b = i;
                    int min = Math.min(obj.b, width - i4);
                    if (min > 0) {
                        int i7 = i3 + min;
                        Arrays.fill(iArr, i3, i7, this.a[obj.a]);
                        i4 += min;
                        i3 = i7;
                    }
                } while (i4 < width);
                i2 += 2;
                if (i2 >= height) {
                    return;
                }
                i3 = i2 * width;
                parsableBitArray.c();
            }
        }
    }

    public VobsubParser(List list) {
        int i;
        CueBuilder cueBuilder = new CueBuilder();
        this.c = cueBuilder;
        String trim = new String((byte[]) list.get(0), StandardCharsets.UTF_8).trim();
        String str = Util.a;
        for (String str2 : trim.split("\\r?\\n", -1)) {
            if (str2.startsWith("palette: ")) {
                String[] split = str2.substring(9).split(",", -1);
                cueBuilder.f = new int[split.length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    int[] iArr = cueBuilder.f;
                    try {
                        i = Integer.parseInt(split[i2].trim(), 16);
                    } catch (RuntimeException e2) {
                        Log.g("VobsubParser", "Parsing color failed", e2);
                        i = 0;
                    }
                    iArr[i2] = i;
                }
            } else if (str2.startsWith("size: ")) {
                String[] split2 = str2.substring(6).trim().split("x", -1);
                if (split2.length != 2) {
                    Log.f("VobsubParser", "Ignoring malformed IDX size line: '" + str2 + "'");
                } else {
                    try {
                        cueBuilder.g = Integer.parseInt(split2[0]);
                        cueBuilder.h = Integer.parseInt(split2[1]);
                        cueBuilder.d = true;
                    } catch (RuntimeException e3) {
                        Log.g("VobsubParser", "Parsing IDX failed", e3);
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:81:0x00cb. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x028d  */
    @Override // androidx.media3.extractor.text.SubtitleParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(byte[] bArr, int i, int i2, Consumer consumer) {
        CuesWithTiming cuesWithTiming;
        boolean z;
        int i3;
        long j;
        boolean z2;
        Object[] objArr;
        Cue cue;
        long j2;
        long j3;
        ImmutableList r;
        Rect rect;
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
        long j4 = -9223372036854775807L;
        cueBuilder.b = -9223372036854775807L;
        cueBuilder.c = -9223372036854775807L;
        boolean z3 = false;
        cueBuilder.e = false;
        cueBuilder.i = null;
        cueBuilder.j = -1;
        cueBuilder.k = -1;
        int a = parsableByteArray.a();
        if (a >= 2 && parsableByteArray.G() == a) {
            if (cueBuilder.f == null) {
                Log.f("VobsubParser", "Skipping SPU (no palette)");
            } else if (!cueBuilder.d) {
                Log.f("VobsubParser", "Skipping SPU (no plane)");
            } else {
                int i4 = parsableByteArray.b - 2;
                parsableByteArray.M(parsableByteArray.G() + i4);
                while (true) {
                    if (parsableByteArray.a() < 4) {
                        j = j4;
                        z2 = z3;
                        z = z2;
                    } else {
                        int i5 = parsableByteArray.b;
                        int G = parsableByteArray.G() * 10000;
                        int G2 = parsableByteArray.G() + i4;
                        if (G2 != i5 && G2 < parsableByteArray.c) {
                            z = true;
                        } else {
                            z = z3;
                        }
                        if (z) {
                            i3 = G2;
                        } else {
                            i3 = parsableByteArray.c;
                        }
                        j = j4;
                        Object[] objArr2 = true;
                        while (parsableByteArray.b < i3 && objArr2 != false) {
                            long j5 = G;
                            int[] iArr = cueBuilder.a;
                            boolean z4 = z3;
                            int z5 = parsableByteArray.z();
                            if (z5 != 255) {
                                switch (z5) {
                                    case 0:
                                        objArr = true;
                                        break;
                                    case 1:
                                        cueBuilder.b = j5;
                                        objArr = true;
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        cueBuilder.c = j5;
                                        objArr = true;
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        if (parsableByteArray.a() < 2) {
                                            Log.f("VobsubParser", "Incomplete color command");
                                            break;
                                        } else {
                                            int z6 = parsableByteArray.z();
                                            int z7 = parsableByteArray.z();
                                            iArr[3] = CueBuilder.a(cueBuilder.f, z6 >> 4);
                                            iArr[2] = CueBuilder.a(cueBuilder.f, z6 & 15);
                                            iArr[1] = CueBuilder.a(cueBuilder.f, z7 >> 4);
                                            iArr[z4 ? 1 : 0] = CueBuilder.a(cueBuilder.f, z7 & 15);
                                            cueBuilder.e = true;
                                            objArr = true;
                                            break;
                                        }
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                        if (parsableByteArray.a() < 2) {
                                            Log.f("VobsubParser", "Incomplete alpha command");
                                            break;
                                        } else if (!cueBuilder.e) {
                                            Log.f("VobsubParser", "Ignoring alpha command before color command");
                                            break;
                                        } else {
                                            int z8 = parsableByteArray.z();
                                            int z9 = parsableByteArray.z();
                                            iArr[3] = CueBuilder.c(iArr[3], z8 >> 4);
                                            iArr[2] = CueBuilder.c(iArr[2], z8 & 15);
                                            iArr[1] = CueBuilder.c(iArr[1], z9 >> 4);
                                            iArr[z4 ? 1 : 0] = CueBuilder.c(iArr[z4 ? 1 : 0], z9 & 15);
                                            objArr = true;
                                            break;
                                        }
                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                        if (parsableByteArray.a() < 6) {
                                            Log.f("VobsubParser", "Incomplete area command");
                                            break;
                                        } else {
                                            int z10 = parsableByteArray.z();
                                            int z11 = parsableByteArray.z();
                                            int i6 = (z10 << 4) | (z11 >> 4);
                                            int z12 = ((z11 & 15) << 8) | parsableByteArray.z();
                                            int z13 = parsableByteArray.z();
                                            int z14 = parsableByteArray.z();
                                            cueBuilder.i = new Rect(i6, (z13 << 4) | (z14 >> 4), z12 + 1, (((z14 & 15) << 8) | parsableByteArray.z()) + 1);
                                            objArr = true;
                                            break;
                                        }
                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                        if (parsableByteArray.a() < 4) {
                                            Log.f("VobsubParser", "Incomplete offsets command");
                                            break;
                                        } else {
                                            cueBuilder.j = parsableByteArray.G();
                                            cueBuilder.k = parsableByteArray.G();
                                            objArr = true;
                                            break;
                                        }
                                    default:
                                        q.x("Unrecognized command: ", z5, "VobsubParser");
                                        break;
                                }
                                z3 = z4 ? 1 : 0;
                                objArr2 = objArr;
                            }
                            objArr = z4 ? 1 : 0;
                            z3 = z4 ? 1 : 0;
                            objArr2 = objArr;
                        }
                        z2 = z3;
                        if (z) {
                            parsableByteArray.M(G2);
                        }
                    }
                    if (!z) {
                        if (cueBuilder.f == null && cueBuilder.d && cueBuilder.e && (rect = cueBuilder.i) != null && cueBuilder.j != -1 && cueBuilder.k != -1 && rect.width() >= 2 && cueBuilder.i.height() >= 2) {
                            Rect rect2 = cueBuilder.i;
                            int[] iArr2 = new int[rect2.height() * rect2.width()];
                            ParsableBitArray parsableBitArray = new ParsableBitArray();
                            parsableByteArray.M(cueBuilder.j);
                            parsableBitArray.l(parsableByteArray);
                            cueBuilder.b(parsableBitArray, true, rect2, iArr2);
                            parsableByteArray.M(cueBuilder.k);
                            parsableBitArray.l(parsableByteArray);
                            cueBuilder.b(parsableBitArray, z2, rect2, iArr2);
                            Bitmap createBitmap = Bitmap.createBitmap(iArr2, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888);
                            Cue.Builder builder = new Cue.Builder();
                            builder.b = createBitmap;
                            builder.a = null;
                            builder.h = rect2.left / cueBuilder.g;
                            builder.i = 0;
                            builder.e = rect2.top / cueBuilder.h;
                            builder.f = 0;
                            builder.g = 0;
                            builder.l = rect2.width() / cueBuilder.g;
                            builder.m = rect2.height() / cueBuilder.h;
                            cue = builder.a();
                        } else {
                            cue = null;
                        }
                        j2 = cueBuilder.c;
                        if (j2 == j) {
                            long j6 = cueBuilder.b;
                            if (j6 != j && j2 > j6) {
                                j2 -= j6;
                            }
                            j3 = j2;
                        } else {
                            j3 = j;
                        }
                        if (cue == null) {
                            r = ImmutableList.t(cue);
                        } else {
                            r = ImmutableList.r();
                        }
                        cuesWithTiming = new CuesWithTiming(cueBuilder.b, j3, r);
                    } else {
                        j4 = j;
                        z3 = z2;
                    }
                }
            }
            j = -9223372036854775807L;
            z2 = false;
            if (cueBuilder.f == null) {
            }
            cue = null;
            j2 = cueBuilder.c;
            if (j2 == j) {
            }
            if (cue == null) {
            }
            cuesWithTiming = new CuesWithTiming(cueBuilder.b, j3, r);
        } else {
            cuesWithTiming = e;
        }
        consumer.accept(cuesWithTiming);
    }
}
