package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.math.DoubleMath;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Format {
    public static final /* synthetic */ int V = 0;
    public final int A;
    public final float B;
    public final int C;
    public final boolean D;
    public final float E;
    public final byte[] F;
    public final int G;
    public final ColorInfo H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public final int M;
    public final int N;
    public final int O;
    public final int P;
    public final int Q;
    public final int R;
    public final int S;
    public final int T;
    public int U;
    public final String a;
    public final String b;
    public final ImmutableList c;
    public final String d;
    public final int e;
    public final int f;
    public final float g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final String l;
    public final Metadata m;
    public final String n;
    public final String o;
    public final String p;
    public final int q;
    public final int r;
    public final List s;
    public final DrmInitData t;
    public final long u;
    public final boolean v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public int B;
        public boolean C;
        public byte[] E;
        public ColorInfo G;
        public int M;
        public int N;
        public String a;
        public String b;
        public String d;
        public int e;
        public int f;
        public String k;
        public Metadata l;
        public String m;
        public String n;
        public String o;
        public List r;
        public DrmInitData s;
        public boolean u;
        public ImmutableList c = ImmutableList.r();
        public float g = -1.0f;
        public int i = -1;
        public int j = -1;
        public int p = -1;
        public int q = -1;
        public long t = Long.MAX_VALUE;
        public int v = -1;
        public int w = -1;
        public int x = -1;
        public int y = -1;
        public int z = -1;
        public float A = -1.0f;
        public float D = 1.0f;
        public int F = -1;
        public int H = -1;
        public int I = -1;
        public int J = -1;
        public int K = -1;
        public int L = -1;
        public int O = -1;
        public int P = 1;
        public int Q = -1;
        public int R = -1;
        public int S = 0;
        public int h = 0;

        public final Format a() {
            return new Format(this);
        }
    }

    static {
        new Builder().a();
        Util.z(0);
        Util.z(1);
        Util.z(2);
        Util.z(3);
        Util.z(4);
        q.q(5, 6, 7, 8, 9);
        q.q(10, 11, 12, 13, 14);
        q.q(15, 16, 17, 18, 19);
        q.q(20, 21, 22, 23, 24);
        q.q(25, 26, 27, 28, 29);
        q.q(30, 31, 32, 33, 34);
        q.q(35, 36, 37, 38, 39);
        Util.z(40);
        Util.z(41);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Format(Builder builder) {
        boolean z;
        String str;
        boolean z2;
        boolean z3;
        this.a = builder.a;
        String E = Util.E(builder.d);
        this.d = E;
        if (builder.c.isEmpty() && builder.b != null) {
            this.c = ImmutableList.t(new Label(E, builder.b));
            this.b = builder.b;
        } else if (!builder.c.isEmpty() && builder.b == null) {
            ImmutableList immutableList = builder.c;
            this.c = immutableList;
            Iterator<E> it = immutableList.iterator();
            while (true) {
                if (it.hasNext()) {
                    Label label = (Label) it.next();
                    if (TextUtils.equals(label.a, E)) {
                        str = label.b;
                        break;
                    }
                } else {
                    str = ((Label) immutableList.get(0)).b;
                    break;
                }
            }
            this.b = str;
        } else {
            if (!builder.c.isEmpty() || builder.b != null) {
                for (int i = 0; i < builder.c.size(); i++) {
                    if (!((Label) builder.c.get(i)).b.equals(builder.b)) {
                    }
                }
                z = false;
                Preconditions.n(z);
                this.c = builder.c;
                this.b = builder.b;
            }
            z = true;
            Preconditions.n(z);
            this.c = builder.c;
            this.b = builder.b;
        }
        this.e = builder.e;
        if (builder.h != 0 && (builder.f & 32768) == 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.m("Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set", z2);
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        int i2 = builder.i;
        this.i = i2;
        int i3 = builder.j;
        this.j = i3;
        this.k = i3 != -1 ? i3 : i2;
        this.l = builder.k;
        this.m = builder.l;
        this.n = builder.m;
        this.o = builder.n;
        this.p = builder.o;
        this.q = builder.p;
        this.r = builder.q;
        List list = builder.r;
        this.s = list == null ? Collections.EMPTY_LIST : list;
        DrmInitData drmInitData = builder.s;
        this.t = drmInitData;
        this.u = builder.t;
        this.v = builder.u;
        this.w = builder.v;
        this.x = builder.w;
        this.y = builder.x;
        this.z = builder.y;
        this.A = builder.z;
        this.B = builder.A;
        int i4 = builder.B;
        this.C = i4 == -1 ? 0 : i4;
        this.D = builder.C;
        float f = builder.D;
        this.E = f == -1.0f ? 1.0f : f;
        this.F = builder.E;
        this.G = builder.F;
        this.H = builder.G;
        this.I = builder.H;
        int i5 = builder.I;
        this.J = i5;
        int i6 = builder.J;
        this.K = i6;
        if (i5 != -1 && i6 != -1) {
            if (Integer.bitCount(i6) == i5) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3) {
                u2.l(Strings.a("channelCount and channelMask are inconsistent. channelCount=%s, channelMask=%s", Integer.valueOf(i5), Integer.valueOf(i6)));
                throw null;
            }
        }
        this.L = builder.K;
        this.M = builder.L;
        int i7 = builder.M;
        this.N = i7 == -1 ? 0 : i7;
        int i8 = builder.N;
        this.O = i8 != -1 ? i8 : 0;
        this.P = builder.O;
        this.Q = builder.P;
        this.R = builder.Q;
        this.S = builder.R;
        int i9 = builder.S;
        if (i9 == 0 && drmInitData != null) {
            this.T = 1;
        } else {
            this.T = i9;
        }
    }

    public static String c(Format format) {
        float f;
        int i;
        String str;
        String str2;
        String str3;
        float f2;
        if (format == null) {
            return "null";
        }
        int i2 = format.e;
        ImmutableList immutableList = format.c;
        String str4 = format.d;
        int i3 = format.L;
        int i4 = format.K;
        int i5 = format.J;
        int i6 = format.I;
        int i7 = format.C;
        float f3 = format.B;
        int i8 = format.y;
        ColorInfo colorInfo = format.H;
        float f4 = format.E;
        int i9 = format.A;
        int i10 = format.z;
        int i11 = format.x;
        int i12 = format.w;
        DrmInitData drmInitData = format.t;
        String str5 = format.l;
        float f5 = format.g;
        int i13 = format.k;
        String str6 = format.n;
        String str7 = format.o;
        int i14 = format.f;
        Joiner joiner = new Joiner(String.valueOf(','));
        StringBuilder sb = new StringBuilder();
        sb.append("id=");
        sb.append(format.a);
        sb.append(", mimeType=");
        sb.append(format.p);
        if (str7 != null) {
            sb.append(", container=");
            sb.append(str7);
        }
        if (str6 != null) {
            sb.append(", primaryGroupId=");
            sb.append(str6);
        }
        if (i13 != -1) {
            sb.append(", bitrate=");
            sb.append(i13);
        }
        float f6 = -1.0f;
        if (f5 != -1.0f) {
            sb.append(", selectionPriority=");
            sb.append(f5);
        }
        if (str5 != null) {
            sb.append(", codecs=");
            sb.append(str5);
        }
        if (drmInitData != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i15 = 0;
            while (i15 < drmInitData.m) {
                UUID uuid = drmInitData.j[i15].k;
                if (uuid.equals(C.b)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(C.c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(C.e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(C.d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(C.a)) {
                    linkedHashSet.add("universal");
                } else {
                    f2 = f6;
                    linkedHashSet.add("unknown (" + uuid + ")");
                    i15++;
                    f6 = f2;
                }
                f2 = f6;
                i15++;
                f6 = f2;
            }
            f = f6;
            sb.append(", drm=[");
            joiner.a(sb, linkedHashSet.iterator());
            sb.append(']');
        } else {
            f = -1.0f;
        }
        if (i12 != -1 && i11 != -1) {
            sb.append(", res=");
            sb.append(i12);
            sb.append("x");
            sb.append(i11);
        }
        if (i10 != -1 && i9 != -1) {
            sb.append(", decRes=");
            sb.append(i10);
            sb.append("x");
            sb.append(i9);
        }
        double d = f4;
        int i16 = DoubleMath.a;
        if (Math.copySign(d - 1.0d, 1.0d) > 0.001d && d != 1.0d && (!Double.isNaN(d) || !Double.isNaN(1.0d))) {
            sb.append(", par=");
            Object[] objArr = {Float.valueOf(f4)};
            String str8 = Util.a;
            sb.append(String.format(Locale.US, "%.3f", objArr));
        }
        if (colorInfo != null) {
            int i17 = colorInfo.f;
            int i18 = colorInfo.e;
            if ((i18 != -1 && i17 != -1) || colorInfo.d()) {
                sb.append(", color=");
                if (colorInfo.d()) {
                    String b = ColorInfo.b(colorInfo.a);
                    String a = ColorInfo.a(colorInfo.b);
                    String c = ColorInfo.c(colorInfo.c);
                    Locale locale = Locale.US;
                    str2 = b + "/" + a + "/" + c;
                } else {
                    str2 = "NA/NA/NA";
                }
                if (i18 != -1 && i17 != -1) {
                    str3 = i18 + "/" + i17;
                } else {
                    str3 = "NA/NA";
                }
                sb.append(str2 + "/" + str3);
            }
        }
        if (i8 != -1) {
            sb.append(", pixelFormat=");
            sb.append(i8);
        }
        if (f3 != f) {
            sb.append(", fps=");
            sb.append(f3);
        }
        if (i7 != 0) {
            sb.append(", rotation=");
            sb.append(i7);
        }
        if (format.D) {
            sb.append(", mirrorHorizontal");
        }
        if (i6 != -1) {
            sb.append(", maxSubLayers=");
            sb.append(i6);
        }
        if (i5 != -1) {
            sb.append(", channels=");
            sb.append(i5);
        }
        if (i4 != -1) {
            sb.append(", channel_mask=");
            sb.append(i4);
        }
        if (i3 != -1) {
            sb.append(", sample_rate=");
            sb.append(i3);
        }
        if (str4 != null) {
            sb.append(", language=");
            sb.append(str4);
        }
        boolean isEmpty = immutableList.isEmpty();
        int i19 = 4;
        if (!isEmpty) {
            sb.append(", labels=[");
            joiner.a(sb, Lists.b(immutableList, new k8(i19)).iterator());
            sb.append("]");
        }
        if (i2 != 0) {
            sb.append(", selectionFlags=[");
            String str9 = Util.a;
            ArrayList arrayList = new ArrayList();
            if ((i2 & 4) != 0) {
                arrayList.add("auto");
            }
            if ((i2 & 1) != 0) {
                arrayList.add("default");
            }
            if ((i2 & 2) != 0) {
                arrayList.add("forced");
            }
            joiner.a(sb, arrayList.iterator());
            sb.append("]");
        }
        if (i14 != 0) {
            sb.append(", roleFlags=[");
            String str10 = Util.a;
            ArrayList arrayList2 = new ArrayList();
            if ((i14 & 1) != 0) {
                arrayList2.add("main");
            }
            if ((i14 & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((i14 & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((i14 & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((i14 & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((i14 & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((i14 & 64) != 0) {
                arrayList2.add("caption");
            }
            i = i14;
            if ((i & 128) != 0) {
                arrayList2.add("subtitle");
            }
            if ((i & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((i & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((i & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((i & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((i & 4096) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((i & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((i & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            if ((i & 32768) != 0) {
                arrayList2.add("auxiliary");
            }
            joiner.a(sb, arrayList2.iterator());
            sb.append("]");
        } else {
            i = i14;
        }
        if ((i & 32768) != 0) {
            sb.append(", auxiliaryTrackType=");
            int i20 = format.h;
            String str11 = Util.a;
            if (i20 != 0) {
                if (i20 != 1) {
                    if (i20 != 2) {
                        if (i20 != 3) {
                            if (i20 == 4) {
                                str = "depth metadata";
                            } else {
                                u2.l("Unsupported auxiliary track type");
                                return null;
                            }
                        } else {
                            str = "depth-inverse";
                        }
                    } else {
                        str = "depth-linear";
                    }
                } else {
                    str = "original";
                }
            } else {
                str = "undefined";
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.media3.common.Format$Builder] */
    public final Builder a() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.l;
        obj.l = this.m;
        obj.m = this.n;
        obj.n = this.o;
        obj.o = this.p;
        obj.p = this.q;
        obj.q = this.r;
        obj.r = this.s;
        obj.s = this.t;
        obj.t = this.u;
        obj.u = this.v;
        obj.v = this.w;
        obj.w = this.x;
        obj.x = this.y;
        obj.y = this.z;
        obj.z = this.A;
        obj.A = this.B;
        obj.B = this.C;
        obj.C = this.D;
        obj.D = this.E;
        obj.E = this.F;
        obj.F = this.G;
        obj.G = this.H;
        obj.H = this.I;
        obj.I = this.J;
        obj.J = this.K;
        obj.K = this.L;
        obj.L = this.M;
        obj.M = this.N;
        obj.N = this.O;
        obj.O = this.P;
        obj.P = this.Q;
        obj.Q = this.R;
        obj.R = this.S;
        obj.S = this.T;
        return obj;
    }

    public final boolean b(Format format) {
        List list = this.s;
        if (list.size() != format.s.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) format.s.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj != null && Format.class == obj.getClass()) {
            Format format = (Format) obj;
            int i2 = this.U;
            if ((i2 == 0 || (i = format.U) == 0 || i2 == i) && this.e == format.e && this.f == format.f && this.h == format.h && this.i == format.i && this.j == format.j && this.q == format.q && this.u == format.u && this.w == format.w && this.x == format.x && this.y == format.y && this.z == format.z && this.A == format.A && this.C == format.C && this.D == format.D && this.G == format.G && this.I == format.I && this.J == format.J && this.K == format.K && this.L == format.L && this.M == format.M && this.N == format.N && this.O == format.O && this.P == format.P && this.R == format.R && this.S == format.S && this.T == format.T && Float.compare(this.B, format.B) == 0 && Float.compare(this.g, format.g) == 0 && Float.compare(this.E, format.E) == 0 && Objects.equals(this.a, format.a) && Objects.equals(this.b, format.b) && this.c.equals(format.c) && Objects.equals(this.l, format.l) && Objects.equals(this.n, format.n) && Objects.equals(this.o, format.o) && Objects.equals(this.p, format.p) && Objects.equals(this.d, format.d) && Arrays.equals(this.F, format.F) && Objects.equals(this.m, format.m) && Objects.equals(this.H, format.H) && Objects.equals(this.t, format.t) && b(format)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        if (this.U == 0) {
            int i = 0;
            String str = this.a;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = (527 + hashCode) * 31;
            String str2 = this.b;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int hashCode8 = (this.c.hashCode() + ((i2 + hashCode2) * 31)) * 31;
            String str3 = this.d;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int floatToIntBits = (((((((Float.floatToIntBits(this.g) + ((((((hashCode8 + hashCode3) * 31) + this.e) * 31) + this.f) * 31)) * 31) + this.h) * 31) + this.i) * 31) + this.j) * 31;
            String str4 = this.l;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i3 = (floatToIntBits + hashCode4) * 31;
            Metadata metadata = this.m;
            if (metadata == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = metadata.hashCode();
            }
            int i4 = (i3 + hashCode5) * 961;
            String str5 = this.n;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i5 = (i4 + hashCode6) * 31;
            String str6 = this.o;
            if (str6 == null) {
                hashCode7 = 0;
            } else {
                hashCode7 = str6.hashCode();
            }
            int i6 = (i5 + hashCode7) * 31;
            String str7 = this.p;
            if (str7 != null) {
                i = str7.hashCode();
            }
            this.U = ((((((((((((((((((((((((Float.floatToIntBits(this.E) + ((((((Float.floatToIntBits(this.B) + ((((((((((((((((i6 + i) * 31) + this.q) * 31) + ((int) this.u)) * 31) + this.w) * 31) + this.x) * 31) + this.y) * 31) + this.z) * 31) + this.A) * 31)) * 31) + this.C) * 31) + (this.D ? 1 : 0)) * 31)) * 31) + this.G) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.M) * 31) + this.N) * 31) + this.O) * 31) + this.P) * 31) + this.R) * 31) + this.S) * 31) + this.T;
        }
        return this.U;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.a);
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.o);
        sb.append(", ");
        sb.append(this.p);
        sb.append(", ");
        sb.append(this.l);
        sb.append(", ");
        sb.append(this.k);
        sb.append(", ");
        sb.append(this.d);
        sb.append(", [");
        sb.append(this.w);
        sb.append(", ");
        sb.append(this.x);
        sb.append(", ");
        sb.append(this.B);
        sb.append(", ");
        sb.append(this.H);
        sb.append("], [");
        sb.append(this.J);
        sb.append(", ");
        sb.append(this.K);
        sb.append(", ");
        return jb.i(sb, this.L, "])");
    }
}
