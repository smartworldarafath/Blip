package androidx.media3.extractor.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.SubtitleOutputBuffer;
import androidx.media3.extractor.text.cea.CeaDecoder;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Cea608Decoder extends CeaDecoder {
    public final int i;
    public final int j;
    public final int k;
    public List o;
    public List p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public byte u;
    public byte v;
    public boolean x;
    public long y;
    public static final int[] z = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] A = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] B = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    public static final int[] C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    public static final int[] D = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    public static final int[] E = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
    public static final int[] F = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    public final ParsableByteArray h = new ParsableByteArray();
    public final ArrayList m = new ArrayList();
    public CueBuilder n = new CueBuilder(0, 4);
    public int w = 0;
    public final long l = 16000000;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CueBuilder {
        public final ArrayList a;
        public final ArrayList b;
        public final StringBuilder c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class CueStyle {
            public final int a;
            public final boolean b;
            public int c;

            public CueStyle(int i, int i2, boolean z) {
                this.a = i;
                this.b = z;
                this.c = i2;
            }
        }

        public CueBuilder(int i, int i2) {
            ArrayList arrayList = new ArrayList();
            this.a = arrayList;
            ArrayList arrayList2 = new ArrayList();
            this.b = arrayList2;
            StringBuilder sb = new StringBuilder();
            this.c = sb;
            this.g = i;
            arrayList.clear();
            arrayList2.clear();
            sb.setLength(0);
            this.d = 15;
            this.e = 0;
            this.f = 0;
            this.h = i2;
        }

        public final void a(char c) {
            StringBuilder sb = this.c;
            if (sb.length() < 32) {
                sb.append(c);
            }
        }

        public final void b() {
            StringBuilder sb = this.c;
            int length = sb.length();
            if (length > 0) {
                sb.delete(length - 1, length);
                ArrayList arrayList = this.a;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    CueStyle cueStyle = (CueStyle) arrayList.get(size);
                    int i = cueStyle.c;
                    if (i == length) {
                        cueStyle.c = i - 1;
                    } else {
                        return;
                    }
                }
            }
        }

        public final Cue c(int i) {
            float f;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            int i2 = 0;
            while (true) {
                ArrayList arrayList = this.b;
                if (i2 >= arrayList.size()) {
                    break;
                }
                spannableStringBuilder.append((CharSequence) arrayList.get(i2));
                spannableStringBuilder.append('\n');
                i2++;
            }
            spannableStringBuilder.append((CharSequence) d());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i3 = this.e + this.f;
            int length = (32 - i3) - spannableStringBuilder.length();
            int i4 = i3 - length;
            if (i == Integer.MIN_VALUE) {
                if (this.g == 2 && (Math.abs(i4) < 3 || length < 0)) {
                    i = 1;
                } else if (this.g == 2 && i4 > 0) {
                    i = 2;
                } else {
                    i = 0;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    i3 = 32 - length;
                }
                f = ((i3 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            int i5 = this.d;
            if (i5 > 7) {
                i5 -= 17;
            } else if (this.g == 1) {
                i5 -= this.h - 1;
            }
            Cue.Builder builder = new Cue.Builder();
            builder.a = spannableStringBuilder;
            builder.b = null;
            builder.c = Layout.Alignment.ALIGN_NORMAL;
            builder.e = i5;
            builder.f = 1;
            builder.h = f;
            builder.i = i;
            return builder.a();
        }

        public final SpannableString d() {
            int i;
            boolean z;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.c);
            int length = spannableStringBuilder.length();
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = 0;
            boolean z2 = false;
            while (true) {
                ArrayList arrayList = this.a;
                if (i6 >= arrayList.size()) {
                    break;
                }
                CueStyle cueStyle = (CueStyle) arrayList.get(i6);
                boolean z3 = cueStyle.b;
                int i8 = cueStyle.a;
                if (i8 != 8) {
                    if (i8 == 7) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (i8 != 7) {
                        i5 = Cea608Decoder.B[i8];
                    }
                    z2 = z;
                }
                int i9 = cueStyle.c;
                i6++;
                if (i6 < arrayList.size()) {
                    i = ((CueStyle) arrayList.get(i6)).c;
                } else {
                    i = length;
                }
                if (i9 != i) {
                    if (i2 != -1 && !z3) {
                        spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i9, 33);
                        i2 = -1;
                    } else if (i2 == -1 && z3) {
                        i2 = i9;
                    }
                    if (i3 != -1 && !z2) {
                        spannableStringBuilder.setSpan(new StyleSpan(2), i3, i9, 33);
                        i3 = -1;
                    } else if (i3 == -1 && z2) {
                        i3 = i9;
                    }
                    if (i5 != i4) {
                        if (i4 != -1) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i7, i9, 33);
                        }
                        i4 = i5;
                        i7 = i9;
                    }
                }
            }
            if (i2 != -1 && i2 != length) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
            }
            if (i3 != -1 && i3 != length) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, length, 33);
            }
            if (i7 != length && i4 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i7, length, 33);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public final boolean e() {
            if (this.a.isEmpty() && this.b.isEmpty() && this.c.length() == 0) {
                return true;
            }
            return false;
        }
    }

    public Cea608Decoder(String str, int i) {
        int i2;
        if ("application/x-mp4-cea-608".equals(str)) {
            i2 = 2;
        } else {
            i2 = 3;
        }
        this.i = i2;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        Log.f("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
                        this.k = 0;
                        this.j = 0;
                    } else {
                        this.k = 1;
                        this.j = 1;
                    }
                } else {
                    this.k = 0;
                    this.j = 1;
                }
            } else {
                this.k = 1;
                this.j = 0;
            }
        } else {
            this.k = 0;
            this.j = 0;
        }
        n(0);
        m();
        this.x = true;
        this.y = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public final void c(long j) {
        this.e = j;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public final void flush() {
        super.flush();
        this.o = null;
        this.p = null;
        n(0);
        this.r = 4;
        this.n.h = 4;
        m();
        this.s = false;
        this.t = false;
        this.u = (byte) 0;
        this.v = (byte) 0;
        this.w = 0;
        this.x = true;
        this.y = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final Subtitle g() {
        List list = this.o;
        this.p = list;
        list.getClass();
        return new CeaSubtitle(list);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:125:0x01c5. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:160:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[SYNTHETIC] */
    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(SubtitleInputBuffer subtitleInputBuffer) {
        int z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        int i2;
        ByteBuffer byteBuffer = subtitleInputBuffer.m;
        byteBuffer.getClass();
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        ParsableByteArray parsableByteArray = this.h;
        parsableByteArray.K(limit, array);
        boolean z7 = false;
        while (true) {
            int a = parsableByteArray.a();
            int i3 = this.i;
            if (a >= i3) {
                if (i3 == 2) {
                    z2 = -4;
                } else {
                    z2 = parsableByteArray.z();
                }
                int z8 = parsableByteArray.z();
                int z9 = parsableByteArray.z();
                if ((z2 & 2) == 0 && (z2 & 1) == this.j) {
                    byte b = (byte) (z8 & 127);
                    byte b2 = (byte) (z9 & 127);
                    if (b != 0 || b2 != 0) {
                        boolean z10 = this.s;
                        if ((z2 & 4) == 4) {
                            boolean[] zArr = G;
                            if (zArr[z8] && zArr[z9]) {
                                z3 = true;
                                this.s = z3;
                                if (!z3 && (b & 240) == 16) {
                                    if (this.t && this.u == b && this.v == b2) {
                                        this.t = false;
                                    } else {
                                        this.t = true;
                                        this.u = b;
                                        this.v = b2;
                                    }
                                } else {
                                    this.t = false;
                                }
                                if (z3) {
                                    if (z10) {
                                        m();
                                        z7 = true;
                                    }
                                } else {
                                    if (1 <= b && b <= 15) {
                                        this.x = false;
                                    } else if ((b & 246) == 20) {
                                        if (b2 != 32 && b2 != 47) {
                                            switch (b2) {
                                                case 37:
                                                case 38:
                                                case 39:
                                                    break;
                                                default:
                                                    switch (b2) {
                                                        case 42:
                                                        case 43:
                                                            this.x = false;
                                                            break;
                                                    }
                                                    z7 = true;
                                                    break;
                                            }
                                        }
                                        this.x = true;
                                    }
                                    if (this.x) {
                                        int i4 = b & 224;
                                        if (i4 == 0) {
                                            this.w = (b >> 3) & 1;
                                        }
                                        if (this.w == this.k) {
                                            if (i4 == 0) {
                                                int i5 = b & 247;
                                                if (i5 == 17 && (b2 & 240) == 48) {
                                                    this.n.a((char) D[b2 & 15]);
                                                } else {
                                                    int i6 = b & 246;
                                                    if (i6 == 18 && (b2 & 224) == 32) {
                                                        this.n.b();
                                                        CueBuilder cueBuilder = this.n;
                                                        if ((b & 1) == 0) {
                                                            i2 = E[b2 & 31];
                                                        } else {
                                                            i2 = F[b2 & 31];
                                                        }
                                                        cueBuilder.a((char) i2);
                                                    } else if (i5 == 17 && (b2 & 240) == 32) {
                                                        this.n.a(' ');
                                                        if ((b2 & 1) == 1) {
                                                            z6 = true;
                                                        } else {
                                                            z6 = false;
                                                        }
                                                        CueBuilder cueBuilder2 = this.n;
                                                        cueBuilder2.a.add(new CueBuilder.CueStyle((b2 >> 1) & 7, cueBuilder2.c.length(), z6));
                                                    } else if ((b & 240) == 16 && (b2 & 192) == 64) {
                                                        int i7 = z[b & 7];
                                                        if ((b2 & 32) != 0) {
                                                            i7++;
                                                        }
                                                        CueBuilder cueBuilder3 = this.n;
                                                        if (i7 != cueBuilder3.d) {
                                                            if (this.q != 1 && !cueBuilder3.e()) {
                                                                CueBuilder cueBuilder4 = new CueBuilder(this.q, this.r);
                                                                this.n = cueBuilder4;
                                                                this.m.add(cueBuilder4);
                                                            }
                                                            this.n.d = i7;
                                                        }
                                                        if ((b2 & 16) == 16) {
                                                            z4 = true;
                                                        } else {
                                                            z4 = false;
                                                        }
                                                        if ((b2 & 1) == 1) {
                                                            z5 = true;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        int i8 = (b2 >> 1) & 7;
                                                        CueBuilder cueBuilder5 = this.n;
                                                        if (z4) {
                                                            i = 8;
                                                        } else {
                                                            i = i8;
                                                        }
                                                        cueBuilder5.a.add(new CueBuilder.CueStyle(i, cueBuilder5.c.length(), z5));
                                                        if (z4) {
                                                            this.n.e = A[i8];
                                                        }
                                                    } else if (i5 == 23 && b2 >= 33 && b2 <= 35) {
                                                        this.n.f = b2 - 32;
                                                    } else if (i6 == 20 && (b2 & 240) == 32) {
                                                        if (b2 != 32) {
                                                            if (b2 != 41) {
                                                                switch (b2) {
                                                                    case 37:
                                                                        n(1);
                                                                        this.r = 2;
                                                                        this.n.h = 2;
                                                                        break;
                                                                    case 38:
                                                                        n(1);
                                                                        this.r = 3;
                                                                        this.n.h = 3;
                                                                        break;
                                                                    case 39:
                                                                        n(1);
                                                                        this.r = 4;
                                                                        this.n.h = 4;
                                                                        break;
                                                                    default:
                                                                        int i9 = this.q;
                                                                        if (i9 != 0) {
                                                                            if (b2 != 33) {
                                                                                switch (b2) {
                                                                                    case 44:
                                                                                        this.o = Collections.EMPTY_LIST;
                                                                                        if (i9 == 1 || i9 == 3) {
                                                                                            m();
                                                                                            break;
                                                                                        }
                                                                                    case 45:
                                                                                        if (i9 == 1 && !this.n.e()) {
                                                                                            CueBuilder cueBuilder6 = this.n;
                                                                                            ArrayList arrayList = cueBuilder6.b;
                                                                                            arrayList.add(cueBuilder6.d());
                                                                                            cueBuilder6.c.setLength(0);
                                                                                            cueBuilder6.a.clear();
                                                                                            int min = Math.min(cueBuilder6.h, cueBuilder6.d);
                                                                                            while (arrayList.size() >= min) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                            break;
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        m();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.o = l();
                                                                                        m();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                n(3);
                                                            }
                                                        } else {
                                                            n(2);
                                                        }
                                                    }
                                                }
                                            } else {
                                                CueBuilder cueBuilder7 = this.n;
                                                int[] iArr = C;
                                                cueBuilder7.a((char) iArr[(b & Byte.MAX_VALUE) - 32]);
                                                if ((b2 & 224) != 0) {
                                                    this.n.a((char) iArr[(b2 & Byte.MAX_VALUE) - 32]);
                                                }
                                            }
                                            z7 = true;
                                        }
                                    }
                                }
                            }
                        }
                        z3 = false;
                        this.s = z3;
                        if (!z3) {
                        }
                        this.t = false;
                        if (z3) {
                        }
                    }
                }
            } else {
                if (z7) {
                    int i10 = this.q;
                    if (i10 == 1 || i10 == 3) {
                        this.o = l();
                        this.y = this.e;
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    /* renamed from: i */
    public final SubtitleInputBuffer e() {
        boolean z2;
        if (this.d == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.n(z2);
        ArrayDeque arrayDeque = this.a;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        CeaDecoder.CeaInputBuffer ceaInputBuffer = (CeaDecoder.CeaInputBuffer) arrayDeque.pollFirst();
        this.d = ceaInputBuffer;
        return ceaInputBuffer;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    /* renamed from: j */
    public final SubtitleOutputBuffer d() {
        SubtitleOutputBuffer subtitleOutputBuffer;
        SubtitleOutputBuffer d = super.d();
        if (d != null) {
            return d;
        }
        long j = this.l;
        if (j != -9223372036854775807L) {
            long j2 = this.y;
            if (j2 != -9223372036854775807L && this.e - j2 >= j && (subtitleOutputBuffer = (SubtitleOutputBuffer) this.b.pollFirst()) != null) {
                this.o = Collections.EMPTY_LIST;
                this.y = -9223372036854775807L;
                Subtitle g = g();
                long j3 = this.e;
                subtitleOutputBuffer.k = j3;
                subtitleOutputBuffer.m = g;
                subtitleOutputBuffer.n = j3;
                return subtitleOutputBuffer;
            }
            return null;
        }
        return null;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final boolean k() {
        if (this.o != this.p) {
            return true;
        }
        return false;
    }

    public final ArrayList l() {
        ArrayList arrayList = this.m;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            Cue c = ((CueBuilder) arrayList.get(i2)).c(Integer.MIN_VALUE);
            arrayList2.add(c);
            if (c != null) {
                i = Math.min(i, c.i);
            }
        }
        ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            Cue cue = (Cue) arrayList2.get(i3);
            if (cue != null) {
                if (cue.i != i) {
                    cue = ((CueBuilder) arrayList.get(i3)).c(i);
                    cue.getClass();
                }
                arrayList3.add(cue);
            }
        }
        return arrayList3;
    }

    public final void m() {
        CueBuilder cueBuilder = this.n;
        cueBuilder.g = this.q;
        cueBuilder.a.clear();
        cueBuilder.b.clear();
        cueBuilder.c.setLength(0);
        cueBuilder.d = 15;
        cueBuilder.e = 0;
        cueBuilder.f = 0;
        ArrayList arrayList = this.m;
        arrayList.clear();
        arrayList.add(this.n);
    }

    public final void n(int i) {
        int i2 = this.q;
        if (i2 != i) {
            this.q = i;
            if (i == 3) {
                int i3 = 0;
                while (true) {
                    ArrayList arrayList = this.m;
                    if (i3 < arrayList.size()) {
                        ((CueBuilder) arrayList.get(i3)).g = i;
                        i3++;
                    } else {
                        return;
                    }
                }
            } else {
                m();
                if (i2 != 3 && i != 1 && i != 0) {
                    return;
                }
                this.o = Collections.EMPTY_LIST;
            }
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final void a() {
    }
}
