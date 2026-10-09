package androidx.media3.extractor.text.cea;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleInputBuffer;
import androidx.media3.extractor.text.cea.CeaDecoder;
import com.google.common.base.Preconditions;
import defpackage.q;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Cea708Decoder extends CeaDecoder {
    public final ParsableByteArray h = new ParsableByteArray();
    public final ParsableBitArray i = new ParsableBitArray();
    public int j = -1;
    public final int k;
    public final CueInfoBuilder[] l;
    public CueInfoBuilder m;
    public List n;
    public List o;
    public DtvCcPacket p;
    public int q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Cea708CueInfo {
        public static final a c = new Object();
        public final Cue a;
        public final int b;

        public Cea708CueInfo(SpannableStringBuilder spannableStringBuilder, Layout.Alignment alignment, float f, int i, float f2, int i2, boolean z, int i3, int i4) {
            Cue.Builder builder = new Cue.Builder();
            builder.a = spannableStringBuilder;
            builder.b = null;
            builder.c = alignment;
            builder.e = f;
            builder.f = 0;
            builder.g = i;
            builder.h = f2;
            builder.i = i2;
            builder.l = -3.4028235E38f;
            if (z) {
                builder.o = i3;
                builder.n = true;
            }
            this.a = builder.a();
            this.b = i4;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CueInfoBuilder {
        public static final boolean[] A;
        public static final int[] B;
        public static final int[] C;
        public static final int[] D;
        public static final int[] E;
        public static final int v = c(2, 2, 2, 0);
        public static final int w;
        public static final int[] x;
        public static final int[] y;
        public static final int[] z;
        public final ArrayList a = new ArrayList();
        public final SpannableStringBuilder b = new SpannableStringBuilder();
        public boolean c;
        public boolean d;
        public int e;
        public boolean f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;

        static {
            int c = c(0, 0, 0, 0);
            w = c;
            int c2 = c(0, 0, 0, 3);
            x = new int[]{0, 0, 0, 0, 0, 2, 0};
            y = new int[]{0, 0, 0, 0, 0, 0, 2};
            z = new int[]{3, 3, 3, 3, 3, 3, 1};
            A = new boolean[]{false, false, false, true, true, true, false};
            B = new int[]{c, c2, c, c, c2, c, c};
            C = new int[]{0, 1, 2, 3, 4, 3, 4};
            D = new int[]{0, 0, 0, 0, 0, 3, 3};
            E = new int[]{c, c, c, c, c, c2, c2};
        }

        public CueInfoBuilder() {
            d();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int c(int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            int i7;
            Preconditions.h(i, 4);
            Preconditions.h(i2, 4);
            Preconditions.h(i3, 4);
            Preconditions.h(i4, 4);
            int i8 = 0;
            if (i4 != 0 && i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        i5 = 0;
                    }
                } else {
                    i5 = 127;
                }
                if (i <= 1) {
                    i6 = 255;
                } else {
                    i6 = 0;
                }
                if (i2 <= 1) {
                    i7 = 255;
                } else {
                    i7 = 0;
                }
                if (i3 > 1) {
                    i8 = 255;
                }
                return Color.argb(i5, i6, i7, i8);
            }
            i5 = 255;
            if (i <= 1) {
            }
            if (i2 <= 1) {
            }
            if (i3 > 1) {
            }
            return Color.argb(i5, i6, i7, i8);
        }

        public final void a(char c) {
            SpannableStringBuilder spannableStringBuilder = this.b;
            if (c == '\n') {
                SpannableString b = b();
                ArrayList arrayList = this.a;
                arrayList.add(b);
                spannableStringBuilder.clear();
                if (this.o != -1) {
                    this.o = 0;
                }
                if (this.p != -1) {
                    this.p = 0;
                }
                if (this.q != -1) {
                    this.q = 0;
                }
                if (this.s != -1) {
                    this.s = 0;
                }
                while (true) {
                    if (arrayList.size() < this.j && arrayList.size() < 15) {
                        this.u = arrayList.size();
                        return;
                    }
                    arrayList.remove(0);
                }
            } else {
                spannableStringBuilder.append(c);
            }
        }

        public final SpannableString b() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.o != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.o, length, 33);
                }
                if (this.p != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.p, length, 33);
                }
                if (this.q != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.r), this.q, length, 33);
                }
                if (this.s != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.t), this.s, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public final void d() {
            this.a.clear();
            this.b.clear();
            this.o = -1;
            this.p = -1;
            this.q = -1;
            this.s = -1;
            this.u = 0;
            this.c = false;
            this.d = false;
            this.e = 4;
            this.f = false;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 15;
            this.k = 0;
            this.l = 0;
            this.m = 0;
            int i = w;
            this.n = i;
            this.r = v;
            this.t = i;
        }

        public final void e(boolean z2, boolean z3) {
            int i = this.o;
            SpannableStringBuilder spannableStringBuilder = this.b;
            if (i != -1) {
                if (!z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.o, spannableStringBuilder.length(), 33);
                    this.o = -1;
                }
            } else if (z2) {
                this.o = spannableStringBuilder.length();
            }
            if (this.p != -1) {
                if (!z3) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.p, spannableStringBuilder.length(), 33);
                    this.p = -1;
                    return;
                }
                return;
            }
            if (z3) {
                this.p = spannableStringBuilder.length();
            }
        }

        public final void f(int i, int i2) {
            int i3 = this.q;
            SpannableStringBuilder spannableStringBuilder = this.b;
            if (i3 != -1 && this.r != i) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(this.r), this.q, spannableStringBuilder.length(), 33);
            }
            if (i != v) {
                this.q = spannableStringBuilder.length();
                this.r = i;
            }
            if (this.s != -1 && this.t != i2) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(this.t), this.s, spannableStringBuilder.length(), 33);
            }
            if (i2 != w) {
                this.s = spannableStringBuilder.length();
                this.t = i2;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DtvCcPacket {
        public final int a;
        public final int b;
        public final byte[] c;
        public int d = 0;

        public DtvCcPacket(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = new byte[(i2 * 2) - 1];
        }
    }

    public Cea708Decoder(int i, List list) {
        this.k = i == -1 ? 1 : i;
        if (list != null) {
            byte[] bArr = CodecSpecificDataUtil.a;
            if (list.size() == 1 && ((byte[]) list.get(0)).length == 1) {
                byte b = ((byte[]) list.get(0))[0];
            }
        }
        this.l = new CueInfoBuilder[8];
        int i2 = 0;
        while (true) {
            CueInfoBuilder[] cueInfoBuilderArr = this.l;
            if (i2 < 8) {
                cueInfoBuilderArr[i2] = new CueInfoBuilder();
                i2++;
            } else {
                this.m = cueInfoBuilderArr[0];
                return;
            }
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public final void c(long j) {
        this.e = j;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder, androidx.media3.decoder.Decoder
    public final void flush() {
        super.flush();
        this.n = null;
        this.o = null;
        this.q = 0;
        this.m = this.l[0];
        n();
        this.p = null;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final Subtitle g() {
        List list = this.n;
        this.o = list;
        list.getClass();
        return new CeaSubtitle(list);
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final void h(SubtitleInputBuffer subtitleInputBuffer) {
        boolean z;
        ByteBuffer byteBuffer = subtitleInputBuffer.m;
        byteBuffer.getClass();
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        ParsableByteArray parsableByteArray = this.h;
        parsableByteArray.K(limit, array);
        while (parsableByteArray.a() >= 3) {
            int z2 = parsableByteArray.z();
            int i = z2 & 3;
            boolean z3 = false;
            if ((z2 & 4) == 4) {
                z = true;
            } else {
                z = false;
            }
            byte z4 = (byte) parsableByteArray.z();
            byte z5 = (byte) parsableByteArray.z();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        l();
                        int i2 = (z4 & 192) >> 6;
                        int i3 = this.j;
                        if (i3 != -1 && i2 != (i3 + 1) % 4) {
                            n();
                            Log.f("Cea708Decoder", "Sequence number discontinuity. previous=" + this.j + " current=" + i2);
                        }
                        this.j = i2;
                        int i4 = z4 & 63;
                        if (i4 == 0) {
                            i4 = 64;
                        }
                        DtvCcPacket dtvCcPacket = new DtvCcPacket(i2, i4);
                        this.p = dtvCcPacket;
                        dtvCcPacket.d = 1;
                        dtvCcPacket.c[0] = z5;
                    } else {
                        if (i == 2) {
                            z3 = true;
                        }
                        Preconditions.e(z3);
                        DtvCcPacket dtvCcPacket2 = this.p;
                        if (dtvCcPacket2 == null) {
                            Log.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr = dtvCcPacket2.c;
                            int i5 = dtvCcPacket2.d;
                            int i6 = i5 + 1;
                            dtvCcPacket2.d = i6;
                            bArr[i5] = z4;
                            dtvCcPacket2.d = i5 + 2;
                            bArr[i6] = z5;
                        }
                    }
                    DtvCcPacket dtvCcPacket3 = this.p;
                    if (dtvCcPacket3.d == (dtvCcPacket3.b * 2) - 1) {
                        l();
                    }
                }
            }
        }
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    /* renamed from: i */
    public final SubtitleInputBuffer e() {
        boolean z;
        if (this.d == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        ArrayDeque arrayDeque = this.a;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        CeaDecoder.CeaInputBuffer ceaInputBuffer = (CeaDecoder.CeaInputBuffer) arrayDeque.pollFirst();
        this.d = ceaInputBuffer;
        return ceaInputBuffer;
    }

    @Override // androidx.media3.extractor.text.cea.CeaDecoder
    public final boolean k() {
        if (this.n != this.o) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:57:0x0141. Please report as an issue. */
    public final void l() {
        char c;
        int i;
        boolean z;
        DtvCcPacket dtvCcPacket = this.p;
        if (dtvCcPacket == null) {
            return;
        }
        int i2 = 2;
        if (dtvCcPacket.d != (dtvCcPacket.b * 2) - 1) {
            Log.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.p.b * 2) - 1) + ", but current index is " + this.p.d + " (sequence number " + this.p.a + ");");
        }
        DtvCcPacket dtvCcPacket2 = this.p;
        byte[] bArr = dtvCcPacket2.c;
        int i3 = dtvCcPacket2.d;
        ParsableBitArray parsableBitArray = this.i;
        parsableBitArray.k(i3, bArr);
        boolean z2 = false;
        while (true) {
            if (parsableBitArray.b() > 0) {
                int i4 = 3;
                int g = parsableBitArray.g(3);
                int g2 = parsableBitArray.g(5);
                if (g == 7) {
                    parsableBitArray.o(i2);
                    g = parsableBitArray.g(6);
                    if (g < 7) {
                        q.x("Invalid extended service number: ", g, "Cea708Decoder");
                    }
                }
                if (g2 == 0) {
                    if (g != 0) {
                        Log.f("Cea708Decoder", "serviceNumber is non-zero (" + g + ") when blockSize is 0");
                    }
                } else if (g != this.k) {
                    parsableBitArray.p(g2);
                } else {
                    int e = (g2 * 8) + parsableBitArray.e();
                    while (parsableBitArray.e() < e) {
                        int g3 = parsableBitArray.g(8);
                        if (g3 != 16) {
                            if (g3 <= 31) {
                                if (g3 != 0) {
                                    if (g3 != i4) {
                                        if (g3 != 8) {
                                            switch (g3) {
                                                case KeyModifiers.c /* 12 */:
                                                    n();
                                                    break;
                                                case 13:
                                                    this.m.a('\n');
                                                    break;
                                                case 14:
                                                    break;
                                                default:
                                                    if (g3 >= 17 && g3 <= 23) {
                                                        Log.f("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + g3);
                                                        parsableBitArray.o(8);
                                                        break;
                                                    } else if (g3 >= 24 && g3 <= 31) {
                                                        Log.f("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + g3);
                                                        parsableBitArray.o(16);
                                                        break;
                                                    } else {
                                                        q.x("Invalid C0 command: ", g3, "Cea708Decoder");
                                                        break;
                                                    }
                                            }
                                        } else {
                                            SpannableStringBuilder spannableStringBuilder = this.m.b;
                                            int length = spannableStringBuilder.length();
                                            if (length > 0) {
                                                spannableStringBuilder.delete(length - 1, length);
                                            }
                                        }
                                    } else {
                                        this.n = m();
                                    }
                                }
                                i = i2;
                            } else if (g3 <= 127) {
                                CueInfoBuilder cueInfoBuilder = this.m;
                                if (g3 == 127) {
                                    cueInfoBuilder.a((char) 9835);
                                } else {
                                    cueInfoBuilder.a((char) (g3 & 255));
                                }
                                i = i2;
                                z2 = true;
                            } else {
                                if (g3 <= 159) {
                                    CueInfoBuilder[] cueInfoBuilderArr = this.l;
                                    switch (g3) {
                                        case 128:
                                        case 129:
                                        case 130:
                                        case 131:
                                        case 132:
                                        case 133:
                                        case 134:
                                        case 135:
                                            z = true;
                                            int i5 = g3 - 128;
                                            if (this.q != i5) {
                                                this.q = i5;
                                                this.m = cueInfoBuilderArr[i5];
                                                break;
                                            }
                                            break;
                                        case 136:
                                            z = true;
                                            for (int i6 = 1; i6 <= 8; i6++) {
                                                if (parsableBitArray.f()) {
                                                    CueInfoBuilder cueInfoBuilder2 = cueInfoBuilderArr[8 - i6];
                                                    cueInfoBuilder2.a.clear();
                                                    cueInfoBuilder2.b.clear();
                                                    cueInfoBuilder2.o = -1;
                                                    cueInfoBuilder2.p = -1;
                                                    cueInfoBuilder2.q = -1;
                                                    cueInfoBuilder2.s = -1;
                                                    cueInfoBuilder2.u = 0;
                                                }
                                            }
                                            break;
                                        case 137:
                                            for (int i7 = 1; i7 <= 8; i7++) {
                                                if (parsableBitArray.f()) {
                                                    cueInfoBuilderArr[8 - i7].d = true;
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 138:
                                            for (int i8 = 1; i8 <= 8; i8++) {
                                                if (parsableBitArray.f()) {
                                                    cueInfoBuilderArr[8 - i8].d = false;
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 139:
                                            for (int i9 = 1; i9 <= 8; i9++) {
                                                if (parsableBitArray.f()) {
                                                    cueInfoBuilderArr[8 - i9].d = !r1.d;
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 140:
                                            for (int i10 = 1; i10 <= 8; i10++) {
                                                if (parsableBitArray.f()) {
                                                    cueInfoBuilderArr[8 - i10].d();
                                                }
                                            }
                                            z = true;
                                            break;
                                        case 141:
                                            parsableBitArray.o(8);
                                            z = true;
                                            break;
                                        case 142:
                                            z = true;
                                            break;
                                        case 143:
                                            n();
                                            z = true;
                                            break;
                                        case 144:
                                            int i11 = i2;
                                            if (!this.m.c) {
                                                parsableBitArray.o(16);
                                                z = true;
                                                i4 = 3;
                                                break;
                                            } else {
                                                parsableBitArray.g(4);
                                                parsableBitArray.g(i11);
                                                parsableBitArray.g(i11);
                                                boolean f = parsableBitArray.f();
                                                boolean f2 = parsableBitArray.f();
                                                i4 = 3;
                                                parsableBitArray.g(3);
                                                parsableBitArray.g(3);
                                                this.m.e(f, f2);
                                                z = true;
                                            }
                                        case 145:
                                            if (!this.m.c) {
                                                parsableBitArray.o(24);
                                            } else {
                                                int c2 = CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2));
                                                int c3 = CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2));
                                                parsableBitArray.o(2);
                                                CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), 0);
                                                this.m.f(c2, c3);
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                        case 146:
                                            if (!this.m.c) {
                                                parsableBitArray.o(16);
                                            } else {
                                                parsableBitArray.o(4);
                                                int g4 = parsableBitArray.g(4);
                                                parsableBitArray.o(2);
                                                parsableBitArray.g(6);
                                                CueInfoBuilder cueInfoBuilder3 = this.m;
                                                if (cueInfoBuilder3.u != g4) {
                                                    cueInfoBuilder3.a('\n');
                                                }
                                                cueInfoBuilder3.u = g4;
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                        case 147:
                                        case 148:
                                        case 149:
                                        case 150:
                                        default:
                                            q.x("Invalid C1 command: ", g3, "Cea708Decoder");
                                            z = true;
                                            break;
                                        case 151:
                                            if (!this.m.c) {
                                                parsableBitArray.o(32);
                                            } else {
                                                int c4 = CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2));
                                                parsableBitArray.g(2);
                                                CueInfoBuilder.c(parsableBitArray.g(2), parsableBitArray.g(2), parsableBitArray.g(2), 0);
                                                parsableBitArray.f();
                                                parsableBitArray.f();
                                                parsableBitArray.g(2);
                                                parsableBitArray.g(2);
                                                int g5 = parsableBitArray.g(2);
                                                parsableBitArray.o(8);
                                                CueInfoBuilder cueInfoBuilder4 = this.m;
                                                cueInfoBuilder4.n = c4;
                                                cueInfoBuilder4.k = g5;
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                        case 152:
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                        case 159:
                                            int i12 = g3 - 152;
                                            CueInfoBuilder cueInfoBuilder5 = cueInfoBuilderArr[i12];
                                            parsableBitArray.o(i2);
                                            boolean f3 = parsableBitArray.f();
                                            parsableBitArray.o(i2);
                                            int g6 = parsableBitArray.g(i4);
                                            boolean f4 = parsableBitArray.f();
                                            int g7 = parsableBitArray.g(7);
                                            int g8 = parsableBitArray.g(8);
                                            int g9 = parsableBitArray.g(4);
                                            int g10 = parsableBitArray.g(4);
                                            parsableBitArray.o(i2);
                                            parsableBitArray.o(6);
                                            parsableBitArray.o(i2);
                                            int g11 = parsableBitArray.g(3);
                                            int g12 = parsableBitArray.g(3);
                                            ArrayList arrayList = cueInfoBuilder5.a;
                                            cueInfoBuilder5.c = true;
                                            cueInfoBuilder5.d = f3;
                                            cueInfoBuilder5.e = g6;
                                            cueInfoBuilder5.f = f4;
                                            cueInfoBuilder5.g = g7;
                                            cueInfoBuilder5.h = g8;
                                            cueInfoBuilder5.i = g9;
                                            int i13 = g10 + 1;
                                            if (cueInfoBuilder5.j != i13) {
                                                cueInfoBuilder5.j = i13;
                                                while (true) {
                                                    if (arrayList.size() >= cueInfoBuilder5.j || arrayList.size() >= 15) {
                                                        arrayList.remove(0);
                                                    }
                                                }
                                            }
                                            if (g11 != 0 && cueInfoBuilder5.l != g11) {
                                                cueInfoBuilder5.l = g11;
                                                int i14 = g11 - 1;
                                                int i15 = CueInfoBuilder.B[i14];
                                                boolean z3 = CueInfoBuilder.A[i14];
                                                int i16 = CueInfoBuilder.y[i14];
                                                int i17 = CueInfoBuilder.z[i14];
                                                int i18 = CueInfoBuilder.x[i14];
                                                cueInfoBuilder5.n = i15;
                                                cueInfoBuilder5.k = i18;
                                            }
                                            if (g12 != 0 && cueInfoBuilder5.m != g12) {
                                                cueInfoBuilder5.m = g12;
                                                int i19 = g12 - 1;
                                                int i20 = CueInfoBuilder.D[i19];
                                                int i21 = CueInfoBuilder.C[i19];
                                                cueInfoBuilder5.e(false, false);
                                                cueInfoBuilder5.f(CueInfoBuilder.v, CueInfoBuilder.E[i19]);
                                            }
                                            if (this.q != i12) {
                                                this.q = i12;
                                                this.m = cueInfoBuilderArr[i12];
                                            }
                                            z = true;
                                            i4 = 3;
                                            break;
                                    }
                                } else {
                                    z = true;
                                    if (g3 <= 255) {
                                        this.m.a((char) (g3 & 255));
                                    } else {
                                        q.x("Invalid base command: ", g3, "Cea708Decoder");
                                        i = 2;
                                        c = 7;
                                    }
                                }
                                z2 = z;
                                i = 2;
                                c = 7;
                            }
                            c = 7;
                        } else {
                            int g13 = parsableBitArray.g(8);
                            if (g13 <= 31) {
                                c = 7;
                                if (g13 > 7) {
                                    if (g13 <= 15) {
                                        parsableBitArray.o(8);
                                    } else if (g13 <= 23) {
                                        parsableBitArray.o(16);
                                    } else if (g13 <= 31) {
                                        parsableBitArray.o(24);
                                    }
                                }
                            } else {
                                c = 7;
                                if (g13 <= 127) {
                                    if (g13 != 32) {
                                        if (g13 != 33) {
                                            if (g13 != 37) {
                                                if (g13 != 42) {
                                                    if (g13 != 44) {
                                                        if (g13 != 63) {
                                                            if (g13 != 57) {
                                                                if (g13 != 58) {
                                                                    if (g13 != 60) {
                                                                        if (g13 != 61) {
                                                                            switch (g13) {
                                                                                case 48:
                                                                                    this.m.a((char) 9608);
                                                                                    break;
                                                                                case 49:
                                                                                    this.m.a((char) 8216);
                                                                                    break;
                                                                                case 50:
                                                                                    this.m.a((char) 8217);
                                                                                    break;
                                                                                case 51:
                                                                                    this.m.a((char) 8220);
                                                                                    break;
                                                                                case 52:
                                                                                    this.m.a((char) 8221);
                                                                                    break;
                                                                                case 53:
                                                                                    this.m.a((char) 8226);
                                                                                    break;
                                                                                default:
                                                                                    switch (g13) {
                                                                                        case 118:
                                                                                            this.m.a((char) 8539);
                                                                                            break;
                                                                                        case 119:
                                                                                            this.m.a((char) 8540);
                                                                                            break;
                                                                                        case 120:
                                                                                            this.m.a((char) 8541);
                                                                                            break;
                                                                                        case 121:
                                                                                            this.m.a((char) 8542);
                                                                                            break;
                                                                                        case 122:
                                                                                            this.m.a((char) 9474);
                                                                                            break;
                                                                                        case 123:
                                                                                            this.m.a((char) 9488);
                                                                                            break;
                                                                                        case 124:
                                                                                            this.m.a((char) 9492);
                                                                                            break;
                                                                                        case 125:
                                                                                            this.m.a((char) 9472);
                                                                                            break;
                                                                                        case 126:
                                                                                            this.m.a((char) 9496);
                                                                                            break;
                                                                                        case 127:
                                                                                            this.m.a((char) 9484);
                                                                                            break;
                                                                                        default:
                                                                                            q.x("Invalid G2 character: ", g13, "Cea708Decoder");
                                                                                            break;
                                                                                    }
                                                                            }
                                                                        } else {
                                                                            this.m.a((char) 8480);
                                                                        }
                                                                    } else {
                                                                        this.m.a((char) 339);
                                                                    }
                                                                } else {
                                                                    this.m.a((char) 353);
                                                                }
                                                            } else {
                                                                this.m.a((char) 8482);
                                                            }
                                                        } else {
                                                            this.m.a((char) 376);
                                                        }
                                                    } else {
                                                        this.m.a((char) 338);
                                                    }
                                                } else {
                                                    this.m.a((char) 352);
                                                }
                                            } else {
                                                this.m.a((char) 8230);
                                            }
                                        } else {
                                            this.m.a((char) 160);
                                        }
                                    } else {
                                        this.m.a(' ');
                                    }
                                    i = 2;
                                    z2 = true;
                                } else if (g13 <= 159) {
                                    if (g13 <= 135) {
                                        parsableBitArray.o(32);
                                    } else if (g13 <= 143) {
                                        parsableBitArray.o(40);
                                    } else if (g13 <= 159) {
                                        i = 2;
                                        parsableBitArray.o(2);
                                        parsableBitArray.o(parsableBitArray.g(6) * 8);
                                    }
                                } else {
                                    i = 2;
                                    if (g13 <= 255) {
                                        if (g13 == 160) {
                                            this.m.a((char) 13252);
                                        } else {
                                            q.x("Invalid G3 character: ", g13, "Cea708Decoder");
                                            this.m.a('_');
                                        }
                                        z2 = true;
                                    } else {
                                        q.x("Invalid extended command: ", g13, "Cea708Decoder");
                                    }
                                }
                            }
                            i = 2;
                        }
                        i2 = i;
                    }
                }
            }
        }
        if (z2) {
            this.n = m();
        }
        this.p = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List m() {
        Cea708CueInfo cea708CueInfo;
        Layout.Alignment alignment;
        boolean z;
        float f;
        float f2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        for (int i7 = 0; i7 < 8; i7++) {
            CueInfoBuilder[] cueInfoBuilderArr = this.l;
            CueInfoBuilder cueInfoBuilder = cueInfoBuilderArr[i7];
            if (cueInfoBuilder.c && (!cueInfoBuilder.a.isEmpty() || cueInfoBuilder.b.length() != 0)) {
                CueInfoBuilder cueInfoBuilder2 = cueInfoBuilderArr[i7];
                if (cueInfoBuilder2.d) {
                    ArrayList arrayList2 = cueInfoBuilder2.a;
                    if (cueInfoBuilder2.c && (!arrayList2.isEmpty() || cueInfoBuilder2.b.length() != 0)) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        for (int i8 = 0; i8 < arrayList2.size(); i8++) {
                            spannableStringBuilder.append((CharSequence) arrayList2.get(i8));
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append((CharSequence) cueInfoBuilder2.b());
                        int i9 = cueInfoBuilder2.k;
                        if (i9 != 0) {
                            if (i9 != 1) {
                                if (i9 != 2) {
                                    if (i9 != 3) {
                                        throw new IllegalArgumentException("Unexpected justification value: " + cueInfoBuilder2.k);
                                    }
                                } else {
                                    alignment = Layout.Alignment.ALIGN_CENTER;
                                }
                            } else {
                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            }
                            Layout.Alignment alignment2 = alignment;
                            z = cueInfoBuilder2.f;
                            int i10 = cueInfoBuilder2.h;
                            int i11 = cueInfoBuilder2.g;
                            if (!z) {
                                f = i10 / 99.0f;
                                f2 = i11 / 99.0f;
                            } else {
                                f = i10 / 209.0f;
                                f2 = i11 / 74.0f;
                            }
                            float f3 = (f * 0.9f) + 0.05f;
                            float f4 = (f2 * 0.9f) + 0.05f;
                            int i12 = cueInfoBuilder2.i;
                            i = i12 / 3;
                            if (i != 0) {
                                i2 = i12;
                                i3 = 0;
                            } else if (i == 1) {
                                i2 = i12;
                                i3 = 1;
                            } else {
                                i2 = i12;
                                i3 = 2;
                            }
                            i4 = i2 % 3;
                            if (i4 != 0) {
                                i5 = 0;
                            } else if (i4 == 1) {
                                i5 = 1;
                            } else {
                                i5 = 2;
                            }
                            i6 = cueInfoBuilder2.n;
                            if (i6 == CueInfoBuilder.w) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            cea708CueInfo = new Cea708CueInfo(spannableStringBuilder, alignment2, f4, i3, f3, i5, z2, i6, cueInfoBuilder2.e);
                        }
                        alignment = Layout.Alignment.ALIGN_NORMAL;
                        Layout.Alignment alignment22 = alignment;
                        z = cueInfoBuilder2.f;
                        int i102 = cueInfoBuilder2.h;
                        int i112 = cueInfoBuilder2.g;
                        if (!z) {
                        }
                        float f32 = (f * 0.9f) + 0.05f;
                        float f42 = (f2 * 0.9f) + 0.05f;
                        int i122 = cueInfoBuilder2.i;
                        i = i122 / 3;
                        if (i != 0) {
                        }
                        i4 = i2 % 3;
                        if (i4 != 0) {
                        }
                        i6 = cueInfoBuilder2.n;
                        if (i6 == CueInfoBuilder.w) {
                        }
                        cea708CueInfo = new Cea708CueInfo(spannableStringBuilder, alignment22, f42, i3, f32, i5, z2, i6, cueInfoBuilder2.e);
                    } else {
                        cea708CueInfo = null;
                    }
                    if (cea708CueInfo != null) {
                        arrayList.add(cea708CueInfo);
                    }
                } else {
                    continue;
                }
            }
        }
        Collections.sort(arrayList, Cea708CueInfo.c);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        for (int i13 = 0; i13 < arrayList.size(); i13++) {
            arrayList3.add(((Cea708CueInfo) arrayList.get(i13)).a);
        }
        return Collections.unmodifiableList(arrayList3);
    }

    public final void n() {
        for (int i = 0; i < 8; i++) {
            this.l[i].d();
        }
    }

    @Override // androidx.media3.decoder.Decoder
    public final /* bridge */ /* synthetic */ void a() {
    }
}
