package androidx.media3.exoplayer.trackselection;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.trackselection.MappingTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.collect.ComparisonChain;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.primitives.Ints;
import defpackage.o7;
import defpackage.q;
import defpackage.v1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultTrackSelector extends MappingTrackSelector {
    public static final Ordering k = Ordering.b(new v1(3));
    public final Context c;
    public final AdaptiveTrackSelection.Factory d;
    public Parameters e;
    public Parameters f;
    public volatile Thread g;
    public SpatializerWrapper h;
    public AudioAttributes i;
    public Boolean j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AudioTrackInfo extends TrackInfo<AudioTrackInfo> implements Comparable<AudioTrackInfo> {
        public final boolean A;
        public final int B;
        public final int C;
        public final int D;
        public final int E;
        public final boolean F;
        public final boolean G;
        public final boolean H;
        public final int n;
        public final boolean o;
        public final String p;
        public final Parameters q;
        public final boolean r;
        public final int s;
        public final int t;
        public final int u;
        public final int v;
        public final boolean w;
        public final boolean x;
        public final int y;
        public final int z;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00f0 A[LOOP:1: B:36:0x00ed->B:38:0x00f0, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0137  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0142  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0144  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0139  */
        /* JADX WARN: Removed duplicated region for block: B:87:0x012f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:88:0x010d A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public AudioTrackInfo(int i, TrackGroup trackGroup, int i2, Parameters parameters, int i3, boolean z, o7 o7Var, int i4) {
            super(i, trackGroup, i2);
            int i5;
            int i6;
            int i7;
            int bitCount;
            boolean z2;
            boolean z3;
            boolean z4;
            int i8;
            boolean z5;
            String[] split;
            int i9;
            int i10;
            int i11;
            int i12;
            boolean z6;
            boolean z7;
            boolean z8;
            Parameters parameters2;
            boolean z9;
            TrackSelectionParameters.AudioOffloadPreferences audioOffloadPreferences;
            boolean z10;
            this.q = parameters;
            boolean z11 = parameters.A;
            ImmutableList immutableList = parameters.p;
            ImmutableList immutableList2 = parameters.l;
            if (z11) {
                i5 = 24;
            } else {
                i5 = 16;
            }
            int i13 = 0;
            this.w = false;
            this.p = DefaultTrackSelector.i(this.m.d);
            this.r = RendererCapabilities.h(i3, false);
            int i14 = 0;
            while (true) {
                i6 = Integer.MAX_VALUE;
                if (i14 < immutableList2.size()) {
                    i7 = DefaultTrackSelector.h(this.m, (String) immutableList2.get(i14), false);
                    if (i7 > 0) {
                        break;
                    } else {
                        i14++;
                    }
                } else {
                    i7 = 0;
                    i14 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.t = i14;
            this.s = i7;
            int i15 = this.m.f;
            if (i15 != 0 && i15 == 0) {
                bitCount = Integer.MAX_VALUE;
            } else {
                bitCount = Integer.bitCount(0);
            }
            this.u = bitCount;
            this.v = DefaultTrackSelector.b(this.m, parameters.m);
            Format format = this.m;
            int i16 = format.f;
            if (i16 != 0 && (i16 & 1) == 0) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.x = z2;
            if ((format.e & 1) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.A = z3;
            String str = format.p;
            if (str != null) {
                switch (str.hashCode()) {
                    case -2123537834:
                        if (str.equals("audio/eac3-joc")) {
                            z10 = false;
                            break;
                        }
                        z10 = -1;
                        break;
                    case 187078297:
                        if (str.equals("audio/ac4")) {
                            z10 = true;
                            break;
                        }
                        z10 = -1;
                        break;
                    case 1504698186:
                        if (str.equals("audio/iamf")) {
                            z10 = 2;
                            break;
                        }
                        z10 = -1;
                        break;
                    default:
                        z10 = -1;
                        break;
                }
                switch (z10) {
                    case false:
                    case true:
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        z4 = true;
                        break;
                }
                this.H = z4;
                int i17 = format.J;
                this.B = i17;
                this.C = format.L;
                i8 = format.k;
                this.D = i8;
                if ((i8 != -1 || i8 <= parameters.o) && ((i17 == -1 || i17 <= parameters.n) && o7Var.apply(format))) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                this.o = z5;
                split = Resources.getSystem().getConfiguration().getLocales().toLanguageTags().split(",", -1);
                for (i9 = 0; i9 < split.length; i9++) {
                    split[i9] = Util.E(split[i9]);
                }
                i10 = 0;
                while (true) {
                    if (i10 >= split.length) {
                        i11 = DefaultTrackSelector.h(this.m, split[i10], false);
                        if (i11 <= 0) {
                            i10++;
                        }
                    } else {
                        i11 = 0;
                        i10 = Integer.MAX_VALUE;
                    }
                }
                this.y = i10;
                this.z = i11;
                i12 = 0;
                while (true) {
                    if (i12 < immutableList.size()) {
                        String str2 = this.m.p;
                        if (str2 != null && str2.equals(immutableList.get(i12))) {
                            i6 = i12;
                        } else {
                            i12++;
                        }
                    }
                }
                this.E = i6;
                if ((i3 & 384) != 128) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                this.F = z6;
                if ((i3 & 64) != 64) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                this.G = z7;
                z8 = this.o;
                parameters2 = this.q;
                z9 = parameters2.C;
                audioOffloadPreferences = parameters2.q;
                if (RendererCapabilities.h(i3, z9) && (z8 || parameters2.z)) {
                    audioOffloadPreferences.getClass();
                    i13 = (RendererCapabilities.h(i3, false) || !z8 || this.m.k == -1 || (!parameters2.D && z) || (i5 & i3) == 0) ? 1 : 2;
                }
                this.n = i13;
            }
            z4 = false;
            this.H = z4;
            int i172 = format.J;
            this.B = i172;
            this.C = format.L;
            i8 = format.k;
            this.D = i8;
            if (i8 != -1) {
            }
            z5 = true;
            this.o = z5;
            split = Resources.getSystem().getConfiguration().getLocales().toLanguageTags().split(",", -1);
            while (i9 < split.length) {
            }
            i10 = 0;
            while (true) {
                if (i10 >= split.length) {
                }
                i10++;
            }
            this.y = i10;
            this.z = i11;
            i12 = 0;
            while (true) {
                if (i12 < immutableList.size()) {
                }
                i12++;
            }
            this.E = i6;
            if ((i3 & 384) != 128) {
            }
            this.F = z6;
            if ((i3 & 64) != 64) {
            }
            this.G = z7;
            z8 = this.o;
            parameters2 = this.q;
            z9 = parameters2.C;
            audioOffloadPreferences = parameters2.q;
            if (RendererCapabilities.h(i3, z9)) {
                audioOffloadPreferences.getClass();
                if (RendererCapabilities.h(i3, false)) {
                }
            }
            this.n = i13;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.n;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final boolean b(TrackInfo trackInfo) {
            int i;
            String str;
            AudioTrackInfo audioTrackInfo = (AudioTrackInfo) trackInfo;
            Format format = audioTrackInfo.m;
            this.q.getClass();
            Format format2 = this.m;
            int i2 = format2.J;
            if (i2 != -1 && i2 == format.J) {
                if ((this.w || ((str = format2.p) != null && TextUtils.equals(str, format.p))) && (i = format2.L) != -1 && i == format.L && this.F == audioTrackInfo.F && this.G == audioTrackInfo.G) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.lang.Comparable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final int compareTo(AudioTrackInfo audioTrackInfo) {
            Ordering e;
            boolean z = this.r;
            boolean z2 = this.o;
            if (z2 && z) {
                e = DefaultTrackSelector.k;
            } else {
                e = DefaultTrackSelector.k.e();
            }
            boolean z3 = audioTrackInfo.r;
            int i = audioTrackInfo.D;
            ComparisonChain b = ComparisonChain.a.c(z, z3).b(Integer.valueOf(this.t), Integer.valueOf(audioTrackInfo.t), Ordering.c().e()).a(this.s, audioTrackInfo.s).a(this.u, audioTrackInfo.u).b(Integer.valueOf(this.v), Integer.valueOf(audioTrackInfo.v), Ordering.c().e()).c(this.A, audioTrackInfo.A).c(this.x, audioTrackInfo.x).b(Integer.valueOf(this.y), Integer.valueOf(audioTrackInfo.y), Ordering.c().e()).a(this.z, audioTrackInfo.z).c(z2, audioTrackInfo.o).b(Integer.valueOf(this.E), Integer.valueOf(audioTrackInfo.E), Ordering.c().e());
            this.q.getClass();
            ComparisonChain b2 = b.c(this.F, audioTrackInfo.F).c(this.G, audioTrackInfo.G).c(this.H, audioTrackInfo.H).b(Integer.valueOf(this.B), Integer.valueOf(audioTrackInfo.B), e).b(Integer.valueOf(this.C), Integer.valueOf(audioTrackInfo.C), e);
            if (Objects.equals(this.p, audioTrackInfo.p)) {
                b2 = b2.b(Integer.valueOf(this.D), Integer.valueOf(i), e);
            }
            return b2.e();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageTrackInfo extends TrackInfo<ImageTrackInfo> implements Comparable<ImageTrackInfo> {
        public final int n;
        public final int o;

        public ImageTrackInfo(int i, TrackGroup trackGroup, int i2, Parameters parameters, int i3) {
            super(i, trackGroup, i2);
            int i4;
            this.n = RendererCapabilities.h(i3, parameters.C) ? 1 : 0;
            Format format = this.m;
            int i5 = format.w;
            int i6 = -1;
            if (i5 != -1 && (i4 = format.x) != -1) {
                i6 = i5 * i4;
            }
            this.o = i6;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.n;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final /* bridge */ /* synthetic */ boolean b(TrackInfo trackInfo) {
            return false;
        }

        @Override // java.lang.Comparable
        public final int compareTo(ImageTrackInfo imageTrackInfo) {
            return Integer.compare(this.o, imageTrackInfo.o);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OtherTrackScore implements Comparable<OtherTrackScore> {
        public final boolean j;
        public final boolean k;

        public OtherTrackScore(Format format, int i) {
            this.j = (format.e & 1) != 0;
            this.k = RendererCapabilities.h(i, false);
        }

        @Override // java.lang.Comparable
        public final int compareTo(OtherTrackScore otherTrackScore) {
            OtherTrackScore otherTrackScore2 = otherTrackScore;
            return ComparisonChain.a.c(this.k, otherTrackScore2.k).c(this.j, otherTrackScore2.j).e();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextTrackInfo extends TrackInfo<TextTrackInfo> implements Comparable<TextTrackInfo> {
        public final int n;
        public final boolean o;
        public final boolean p;
        public final boolean q;
        public final int r;
        public final int s;
        public final int t;
        public final int u;
        public final int v;
        public final boolean w;

        /* JADX WARN: Multi-variable type inference failed */
        public TextTrackInfo(int i, TrackGroup trackGroup, int i2, Parameters parameters, int i3, String str, String str2) {
            super(i, trackGroup, i2);
            boolean z;
            boolean z2;
            ImmutableList immutableList;
            int i4;
            int i5;
            int bitCount;
            boolean z3;
            boolean z4;
            boolean z5;
            int i6 = 0;
            this.o = RendererCapabilities.h(i3, false);
            int i7 = this.m.e;
            int i8 = parameters.u;
            ImmutableList immutableList2 = parameters.r;
            int i9 = i7 & (~i8);
            if ((i9 & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.p = z;
            if ((i9 & 2) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.q = z2;
            if (str2 != null) {
                immutableList = ImmutableList.t(str2);
            } else if (immutableList2.isEmpty()) {
                immutableList = ImmutableList.t("");
            } else {
                immutableList = immutableList2;
            }
            int i10 = 0;
            while (true) {
                if (i10 < immutableList.size()) {
                    i4 = DefaultTrackSelector.h(this.m, (String) immutableList.get(i10), false);
                    if (i4 > 0) {
                        break;
                    } else {
                        i10++;
                    }
                } else {
                    i4 = 0;
                    i10 = Integer.MAX_VALUE;
                    break;
                }
            }
            this.r = i10;
            this.s = i4;
            if (str2 != null) {
                i5 = 1088;
            } else {
                i5 = 0;
            }
            int i11 = this.m.f;
            Ordering ordering = DefaultTrackSelector.k;
            if (i11 != 0 && i11 == i5) {
                bitCount = Integer.MAX_VALUE;
            } else {
                bitCount = Integer.bitCount(i5 & i11);
            }
            this.t = bitCount;
            Format format = this.m;
            if ((1088 & format.f) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            this.w = z3;
            int b = DefaultTrackSelector.b(format, parameters.s);
            this.u = b;
            if (DefaultTrackSelector.i(str) == null) {
                z4 = true;
            } else {
                z4 = false;
            }
            int h = DefaultTrackSelector.h(this.m, str, z4);
            this.v = h;
            if (i4 <= 0 && ((!immutableList2.isEmpty() || bitCount <= 0) && ((!immutableList2.isEmpty() || b == Integer.MAX_VALUE) && !this.p && (!this.q || h <= 0)))) {
                z5 = false;
            } else {
                z5 = true;
            }
            if (RendererCapabilities.h(i3, parameters.C) && z5) {
                i6 = 1;
            }
            this.n = i6;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.n;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final /* bridge */ /* synthetic */ boolean b(TrackInfo trackInfo) {
            return false;
        }

        @Override // java.lang.Comparable
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final int compareTo(TextTrackInfo textTrackInfo) {
            Ordering e;
            ComparisonChain b = ComparisonChain.a.c(this.o, textTrackInfo.o).b(Integer.valueOf(this.r), Integer.valueOf(textTrackInfo.r), Ordering.c().e());
            int i = textTrackInfo.s;
            int i2 = this.s;
            ComparisonChain a = b.a(i2, i);
            int i3 = textTrackInfo.t;
            int i4 = this.t;
            ComparisonChain c = a.a(i4, i3).b(Integer.valueOf(this.u), Integer.valueOf(textTrackInfo.u), Ordering.c().e()).c(this.p, textTrackInfo.p);
            Boolean valueOf = Boolean.valueOf(this.q);
            Boolean valueOf2 = Boolean.valueOf(textTrackInfo.q);
            if (i2 == 0) {
                e = Ordering.c();
            } else {
                e = Ordering.c().e();
            }
            ComparisonChain a2 = c.b(valueOf, valueOf2, e).a(this.v, textTrackInfo.v);
            if (i4 == 0) {
                a2 = a2.d(this.w, textTrackInfo.w);
            }
            return a2.e();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class TrackInfo<T extends TrackInfo<T>> {
        public final int j;
        public final TrackGroup k;
        public final int l;
        public final Format m;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public interface Factory<T extends TrackInfo<T>> {
            List a(int i, TrackGroup trackGroup, int[] iArr);
        }

        public TrackInfo(int i, TrackGroup trackGroup, int i2) {
            this.j = i;
            this.k = trackGroup;
            this.l = i2;
            this.m = trackGroup.d[i2];
        }

        public abstract int a();

        public abstract boolean b(TrackInfo trackInfo);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VideoTrackInfo extends TrackInfo<VideoTrackInfo> {
        public final int A;
        public final boolean B;
        public final int C;
        public final boolean D;
        public final boolean E;
        public final boolean F;
        public final int G;
        public final boolean H;
        public final String I;
        public final boolean n;
        public final Parameters o;
        public final boolean p;
        public final boolean q;
        public final boolean r;
        public final int s;
        public final int t;
        public final int u;
        public final int v;
        public final int w;
        public final int x;
        public final int y;
        public final boolean z;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0196  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x01b8  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x013c  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x0131  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x0115 A[EDGE_INSN: B:155:0x0115->B:81:0x0115 BREAK  A[LOOP:1: B:74:0x00fe->B:153:0x0112], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:156:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x00b4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00c2 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00f6  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0104  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0125 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:87:0x012f  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0145  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public VideoTrackInfo(int i, TrackGroup trackGroup, int i2, Parameters parameters, int i3, String str, int i4, boolean z) {
            super(i, trackGroup, i2);
            int i5;
            boolean z2;
            boolean z3;
            float f;
            boolean z4;
            int i6;
            int i7;
            int i8;
            int i9;
            int i10;
            int i11;
            int bitCount;
            int i12;
            boolean z5;
            boolean z6;
            String str2;
            int i13;
            int i14;
            boolean z7;
            boolean z8;
            boolean z9;
            int i15;
            boolean z10;
            boolean z11;
            Format format;
            boolean z12;
            String c;
            int i16;
            Format format2;
            int i17;
            int i18;
            float f2;
            int i19;
            Format format3;
            int i20;
            int i21;
            int i22;
            this.o = parameters;
            boolean z13 = parameters.y;
            ImmutableList immutableList = parameters.i;
            ImmutableList immutableList2 = parameters.k;
            if (z13) {
                i5 = 24;
            } else {
                i5 = 16;
            }
            int i23 = 0;
            this.B = false;
            if (z && (((i20 = (format3 = this.m).w) == -1 || i20 <= parameters.a) && ((i21 = format3.x) == -1 || i21 <= parameters.b))) {
                float f3 = format3.B;
                if ((f3 == -1.0f || f3 <= parameters.c) && ((i22 = format3.k) == -1 || i22 <= parameters.d)) {
                    z2 = true;
                    this.n = z2;
                    if (z && (((i17 = (format2 = this.m).w) == -1 || i17 >= 0) && ((i18 = format2.x) == -1 || i18 >= 0))) {
                        f2 = format2.B;
                        if ((f2 != -1.0f || f2 >= 0.0f) && ((i19 = format2.k) == -1 || i19 >= 0)) {
                            z3 = true;
                            this.p = z3;
                            this.q = RendererCapabilities.h(i3, false);
                            Format format4 = this.m;
                            f = format4.B;
                            if (f == -1.0f && f >= 10.0f) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            this.r = z4;
                            this.s = format4.k;
                            i6 = format4.w;
                            if (i6 == -1 && (i16 = format4.x) != -1) {
                                i7 = i6 * i16;
                            } else {
                                i7 = -1;
                            }
                            this.t = i7;
                            i8 = 0;
                            while (true) {
                                i9 = Integer.MAX_VALUE;
                                if (i8 >= immutableList2.size()) {
                                    i10 = DefaultTrackSelector.h(this.m, (String) immutableList2.get(i8), false);
                                    if (i10 > 0) {
                                        break;
                                    } else {
                                        i8++;
                                    }
                                } else {
                                    i10 = 0;
                                    i8 = Integer.MAX_VALUE;
                                    break;
                                }
                            }
                            this.v = i8;
                            this.w = i10;
                            i11 = this.m.f;
                            Ordering ordering = DefaultTrackSelector.k;
                            if (i11 == 0 && i11 == 0) {
                                bitCount = Integer.MAX_VALUE;
                            } else {
                                bitCount = Integer.bitCount(0);
                            }
                            this.x = bitCount;
                            i12 = this.m.f;
                            if (i12 == 0 && (i12 & 1) == 0) {
                                z5 = false;
                            } else {
                                z5 = true;
                            }
                            this.z = z5;
                            if (DefaultTrackSelector.i(str) != null) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            this.A = DefaultTrackSelector.h(this.m, str, z6);
                            Format format5 = this.m;
                            str2 = format5.p;
                            i13 = i3 & 384;
                            if (i13 == 256 && (c = MediaCodecUtil.c(format5)) != null) {
                                str2 = c;
                            }
                            i14 = 0;
                            while (true) {
                                if (i14 < immutableList.size()) {
                                    if (str2 != null && str2.equals(immutableList.get(i14))) {
                                        i9 = i14;
                                        break;
                                    }
                                    i14++;
                                } else {
                                    break;
                                }
                            }
                            this.u = i9;
                            this.y = DefaultTrackSelector.b(this.m, parameters.j);
                            if (i13 == 128 && i13 != 256) {
                                z7 = false;
                            } else {
                                z7 = true;
                            }
                            this.D = z7;
                            if (i13 != 128) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            this.E = z8;
                            if ((i3 & 64) != 64) {
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            this.F = z9;
                            this.I = str2;
                            if (str2 != null) {
                                i15 = 4;
                                switch (str2.hashCode()) {
                                    case -1851077871:
                                        if (str2.equals("video/dolby-vision")) {
                                            z12 = false;
                                            break;
                                        }
                                        z12 = -1;
                                        break;
                                    case -1662735862:
                                        if (str2.equals("video/av01")) {
                                            z12 = true;
                                            break;
                                        }
                                        z12 = -1;
                                        break;
                                    case -1662541442:
                                        if (str2.equals("video/hevc")) {
                                            z12 = 2;
                                            break;
                                        }
                                        z12 = -1;
                                        break;
                                    case 1331836730:
                                        if (str2.equals("video/avc")) {
                                            z12 = 3;
                                            break;
                                        }
                                        z12 = -1;
                                        break;
                                    case 1599127257:
                                        if (str2.equals("video/x-vnd.on2.vp9")) {
                                            z12 = 4;
                                            break;
                                        }
                                        z12 = -1;
                                        break;
                                    default:
                                        z12 = -1;
                                        break;
                                }
                                switch (z12) {
                                    case false:
                                        i15 = 5;
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        i15 = 3;
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        i15 = 1;
                                        break;
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                        i15 = 2;
                                        break;
                                }
                                this.G = i15;
                                if (z8) {
                                    ColorInfo colorInfo = this.m.H;
                                    if (colorInfo != null) {
                                        int i24 = colorInfo.c;
                                        if (i24 == 7 || i24 == 6) {
                                            z10 = true;
                                            this.H = z10;
                                            z11 = this.n;
                                            Parameters parameters2 = this.o;
                                            format = this.m;
                                            if ((format.f & 16384) == 0 && RendererCapabilities.h(i3, parameters2.C) && (z11 || parameters2.x)) {
                                                i23 = (RendererCapabilities.h(i3, false) || !this.p || !z11 || format.k == -1 || (i5 & i3) == 0) ? 1 : 2;
                                            }
                                            this.C = i23;
                                        }
                                    } else {
                                        ColorInfo colorInfo2 = ColorInfo.h;
                                    }
                                }
                                z10 = false;
                                this.H = z10;
                                z11 = this.n;
                                Parameters parameters22 = this.o;
                                format = this.m;
                                if ((format.f & 16384) == 0) {
                                    if (RendererCapabilities.h(i3, false)) {
                                    }
                                }
                                this.C = i23;
                            }
                            i15 = 0;
                            this.G = i15;
                            if (z8) {
                            }
                            z10 = false;
                            this.H = z10;
                            z11 = this.n;
                            Parameters parameters222 = this.o;
                            format = this.m;
                            if ((format.f & 16384) == 0) {
                            }
                            this.C = i23;
                        }
                    }
                    z3 = false;
                    this.p = z3;
                    this.q = RendererCapabilities.h(i3, false);
                    Format format42 = this.m;
                    f = format42.B;
                    if (f == -1.0f) {
                    }
                    z4 = false;
                    this.r = z4;
                    this.s = format42.k;
                    i6 = format42.w;
                    if (i6 == -1) {
                    }
                    i7 = -1;
                    this.t = i7;
                    i8 = 0;
                    while (true) {
                        i9 = Integer.MAX_VALUE;
                        if (i8 >= immutableList2.size()) {
                        }
                        i8++;
                    }
                    this.v = i8;
                    this.w = i10;
                    i11 = this.m.f;
                    Ordering ordering2 = DefaultTrackSelector.k;
                    if (i11 == 0) {
                    }
                    bitCount = Integer.bitCount(0);
                    this.x = bitCount;
                    i12 = this.m.f;
                    if (i12 == 0) {
                    }
                    z5 = true;
                    this.z = z5;
                    if (DefaultTrackSelector.i(str) != null) {
                    }
                    this.A = DefaultTrackSelector.h(this.m, str, z6);
                    Format format52 = this.m;
                    str2 = format52.p;
                    i13 = i3 & 384;
                    if (i13 == 256) {
                        str2 = c;
                    }
                    i14 = 0;
                    while (true) {
                        if (i14 < immutableList.size()) {
                        }
                        i14++;
                    }
                    this.u = i9;
                    this.y = DefaultTrackSelector.b(this.m, parameters.j);
                    if (i13 == 128) {
                    }
                    z7 = true;
                    this.D = z7;
                    if (i13 != 128) {
                    }
                    this.E = z8;
                    if ((i3 & 64) != 64) {
                    }
                    this.F = z9;
                    this.I = str2;
                    if (str2 != null) {
                    }
                    i15 = 0;
                    this.G = i15;
                    if (z8) {
                    }
                    z10 = false;
                    this.H = z10;
                    z11 = this.n;
                    Parameters parameters2222 = this.o;
                    format = this.m;
                    if ((format.f & 16384) == 0) {
                    }
                    this.C = i23;
                }
            }
            z2 = false;
            this.n = z2;
            if (z) {
                f2 = format2.B;
                if (f2 != -1.0f) {
                }
                z3 = true;
                this.p = z3;
                this.q = RendererCapabilities.h(i3, false);
                Format format422 = this.m;
                f = format422.B;
                if (f == -1.0f) {
                }
                z4 = false;
                this.r = z4;
                this.s = format422.k;
                i6 = format422.w;
                if (i6 == -1) {
                }
                i7 = -1;
                this.t = i7;
                i8 = 0;
                while (true) {
                    i9 = Integer.MAX_VALUE;
                    if (i8 >= immutableList2.size()) {
                    }
                    i8++;
                }
                this.v = i8;
                this.w = i10;
                i11 = this.m.f;
                Ordering ordering22 = DefaultTrackSelector.k;
                if (i11 == 0) {
                }
                bitCount = Integer.bitCount(0);
                this.x = bitCount;
                i12 = this.m.f;
                if (i12 == 0) {
                }
                z5 = true;
                this.z = z5;
                if (DefaultTrackSelector.i(str) != null) {
                }
                this.A = DefaultTrackSelector.h(this.m, str, z6);
                Format format522 = this.m;
                str2 = format522.p;
                i13 = i3 & 384;
                if (i13 == 256) {
                }
                i14 = 0;
                while (true) {
                    if (i14 < immutableList.size()) {
                    }
                    i14++;
                }
                this.u = i9;
                this.y = DefaultTrackSelector.b(this.m, parameters.j);
                if (i13 == 128) {
                }
                z7 = true;
                this.D = z7;
                if (i13 != 128) {
                }
                this.E = z8;
                if ((i3 & 64) != 64) {
                }
                this.F = z9;
                this.I = str2;
                if (str2 != null) {
                }
                i15 = 0;
                this.G = i15;
                if (z8) {
                }
                z10 = false;
                this.H = z10;
                z11 = this.n;
                Parameters parameters22222 = this.o;
                format = this.m;
                if ((format.f & 16384) == 0) {
                }
                this.C = i23;
            }
            z3 = false;
            this.p = z3;
            this.q = RendererCapabilities.h(i3, false);
            Format format4222 = this.m;
            f = format4222.B;
            if (f == -1.0f) {
            }
            z4 = false;
            this.r = z4;
            this.s = format4222.k;
            i6 = format4222.w;
            if (i6 == -1) {
            }
            i7 = -1;
            this.t = i7;
            i8 = 0;
            while (true) {
                i9 = Integer.MAX_VALUE;
                if (i8 >= immutableList2.size()) {
                }
                i8++;
            }
            this.v = i8;
            this.w = i10;
            i11 = this.m.f;
            Ordering ordering222 = DefaultTrackSelector.k;
            if (i11 == 0) {
            }
            bitCount = Integer.bitCount(0);
            this.x = bitCount;
            i12 = this.m.f;
            if (i12 == 0) {
            }
            z5 = true;
            this.z = z5;
            if (DefaultTrackSelector.i(str) != null) {
            }
            this.A = DefaultTrackSelector.h(this.m, str, z6);
            Format format5222 = this.m;
            str2 = format5222.p;
            i13 = i3 & 384;
            if (i13 == 256) {
            }
            i14 = 0;
            while (true) {
                if (i14 < immutableList.size()) {
                }
                i14++;
            }
            this.u = i9;
            this.y = DefaultTrackSelector.b(this.m, parameters.j);
            if (i13 == 128) {
            }
            z7 = true;
            this.D = z7;
            if (i13 != 128) {
            }
            this.E = z8;
            if ((i3 & 64) != 64) {
            }
            this.F = z9;
            this.I = str2;
            if (str2 != null) {
            }
            i15 = 0;
            this.G = i15;
            if (z8) {
            }
            z10 = false;
            this.H = z10;
            z11 = this.n;
            Parameters parameters222222 = this.o;
            format = this.m;
            if ((format.f & 16384) == 0) {
            }
            this.C = i23;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final int a() {
            return this.C;
        }

        @Override // androidx.media3.exoplayer.trackselection.DefaultTrackSelector.TrackInfo
        public final boolean b(TrackInfo trackInfo) {
            VideoTrackInfo videoTrackInfo = (VideoTrackInfo) trackInfo;
            if (this.B || Objects.equals(this.I, videoTrackInfo.I)) {
                this.o.getClass();
                if (this.D == videoTrackInfo.D && this.F == videoTrackInfo.F) {
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection$Factory] */
    public DefaultTrackSelector(Context context) {
        Context context2;
        ?? obj = new Object();
        Parameters parameters = Parameters.G;
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.c = context2;
        this.d = obj;
        if (parameters == null) {
            parameters.getClass();
            Parameters.Builder builder = new Parameters.Builder(parameters);
            builder.c(parameters);
            parameters = new Parameters(builder);
        }
        this.e = parameters;
        this.f = parameters;
        this.i = AudioAttributes.b;
        if (parameters.B && context == null) {
            Log.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int b(Format format, ImmutableList immutableList) {
        for (int i = 0; i < immutableList.size(); i++) {
            for (int i2 = 0; i2 < format.c.size(); i2++) {
                if (((Label) format.c.get(i2)).b.equals(immutableList.get(i))) {
                    return i;
                }
            }
        }
        return Integer.MAX_VALUE;
    }

    public static void c(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, ExoTrackSelection.Definition[] definitionArr) {
        int i = mappedTrackInfo.a;
        for (int i2 = 0; i2 < i; i2++) {
            TrackGroupArray trackGroupArray = mappedTrackInfo.c[i2];
            Map map = (Map) parameters.E.get(i2);
            if (map != null && map.containsKey(trackGroupArray)) {
                Map map2 = (Map) parameters.E.get(i2);
                if (map2 != null && map2.get(trackGroupArray) != null) {
                    io.sentry.d.i();
                    return;
                }
                definitionArr[i2] = null;
            }
        }
    }

    public static void d(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, ExoTrackSelection.Definition[] definitionArr) {
        for (int i = 0; i < mappedTrackInfo.a; i++) {
            int i2 = mappedTrackInfo.b[i];
            if (parameters.F.get(i) || parameters.w.contains(Integer.valueOf(i2))) {
                definitionArr[i] = null;
            }
        }
    }

    public static void e(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, Parameters parameters, ExoTrackSelection.Definition[] definitionArr) {
        ExoTrackSelection.Definition definition;
        int i = mappedTrackInfo.a;
        TrackGroupArray[] trackGroupArrayArr = mappedTrackInfo.c;
        HashMap hashMap = new HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            f(trackGroupArrayArr[i2], parameters, hashMap);
        }
        f(mappedTrackInfo.f, parameters, hashMap);
        for (int i3 = 0; i3 < i; i3++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) hashMap.get(Integer.valueOf(mappedTrackInfo.b[i3]));
            if (trackSelectionOverride != null) {
                TrackGroup trackGroup = trackSelectionOverride.a;
                ImmutableList immutableList = trackSelectionOverride.b;
                if (!immutableList.isEmpty()) {
                    int indexOf = trackGroupArrayArr[i3].b.indexOf(trackGroup);
                    if (indexOf < 0) {
                        indexOf = -1;
                    }
                    if (indexOf != -1) {
                        definition = new ExoTrackSelection.Definition(0, trackGroup, Ints.e(immutableList));
                        definitionArr[i3] = definition;
                    }
                }
                definition = null;
                definitionArr[i3] = definition;
            }
        }
    }

    public static void f(TrackGroupArray trackGroupArray, TrackSelectionParameters trackSelectionParameters, HashMap hashMap) {
        for (int i = 0; i < trackGroupArray.a; i++) {
            TrackSelectionOverride trackSelectionOverride = (TrackSelectionOverride) trackSelectionParameters.v.get(trackGroupArray.a(i));
            if (trackSelectionOverride != null) {
                TrackGroup trackGroup = trackSelectionOverride.a;
                TrackSelectionOverride trackSelectionOverride2 = (TrackSelectionOverride) hashMap.get(Integer.valueOf(trackGroup.c));
                if (trackSelectionOverride2 == null || (trackSelectionOverride2.b.isEmpty() && !trackSelectionOverride.b.isEmpty())) {
                    hashMap.put(Integer.valueOf(trackGroup.c), trackSelectionOverride);
                }
            }
        }
    }

    public static Pair g(ExoTrackSelection.Definition[] definitionArr, int i) {
        for (int i2 = 0; i2 < definitionArr.length; i2++) {
            ExoTrackSelection.Definition definition = definitionArr[i2];
            if (definition != null && definition.a.c == i) {
                return Pair.create(definition, Integer.valueOf(i2));
            }
        }
        return null;
    }

    public static int h(Format format, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(format.d)) {
            return 4;
        }
        String i = i(str);
        String i2 = i(format.d);
        if (i2 != null && i != null) {
            if (!i2.startsWith(i) && !i.startsWith(i2)) {
                String str2 = Util.a;
                if (!i2.split("-", 2)[0].equals(i.split("-", 2)[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        }
        if (!z || i2 != null) {
            return 0;
        }
        return 1;
    }

    public static String i(String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "und")) {
            return str;
        }
        return null;
    }

    public static ExoTrackSelection.Definition j(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) {
        parameters.q.getClass();
        TrackGroup trackGroup = null;
        OtherTrackScore otherTrackScore = null;
        int i = 0;
        for (int i2 = 0; i2 < trackGroupArray.a; i2++) {
            TrackGroup a = trackGroupArray.a(i2);
            int[] iArr2 = iArr[i2];
            for (int i3 = 0; i3 < a.a; i3++) {
                if (RendererCapabilities.h(iArr2[i3], parameters.C)) {
                    OtherTrackScore otherTrackScore2 = new OtherTrackScore(a.d[i3], iArr2[i3]);
                    if (otherTrackScore != null) {
                        if (ComparisonChain.a.c(otherTrackScore2.k, otherTrackScore.k).c(otherTrackScore2.j, otherTrackScore.j).e() <= 0) {
                        }
                    }
                    trackGroup = a;
                    i = i3;
                    otherTrackScore = otherTrackScore2;
                }
            }
        }
        if (trackGroup == null) {
            return null;
        }
        return new ExoTrackSelection.Definition(0, trackGroup, new int[]{i});
    }

    public static Pair k(int i, MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, TrackInfo.Factory factory, Comparator comparator) {
        int i2;
        RandomAccess randomAccess;
        MappingTrackSelector.MappedTrackInfo mappedTrackInfo2 = mappedTrackInfo;
        ArrayList arrayList = new ArrayList();
        int i3 = mappedTrackInfo2.a;
        int i4 = 0;
        while (i4 < i3) {
            if (i == mappedTrackInfo2.b[i4]) {
                TrackGroupArray trackGroupArray = mappedTrackInfo2.c[i4];
                for (int i5 = 0; i5 < trackGroupArray.a; i5++) {
                    TrackGroup a = trackGroupArray.a(i5);
                    List a2 = factory.a(i4, a, iArr[i4][i5]);
                    int i6 = a.a;
                    boolean[] zArr = new boolean[i6];
                    int i7 = 0;
                    while (i7 < i6) {
                        TrackInfo trackInfo = (TrackInfo) a2.get(i7);
                        int a3 = trackInfo.a();
                        if (zArr[i7] || a3 == 0) {
                            i2 = i3;
                        } else {
                            if (a3 == 1) {
                                randomAccess = ImmutableList.t(trackInfo);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(trackInfo);
                                int i8 = i7 + 1;
                                while (i8 < i6) {
                                    TrackInfo trackInfo2 = (TrackInfo) a2.get(i8);
                                    int i9 = i3;
                                    if (trackInfo2.a() == 2 && trackInfo.b(trackInfo2)) {
                                        arrayList2.add(trackInfo2);
                                        zArr[i8] = true;
                                    }
                                    i8++;
                                    i3 = i9;
                                }
                                randomAccess = arrayList2;
                            }
                            i2 = i3;
                            arrayList.add(randomAccess);
                        }
                        i7++;
                        i3 = i2;
                    }
                }
            }
            i4++;
            mappedTrackInfo2 = mappedTrackInfo;
            i3 = i3;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            iArr2[i10] = ((TrackInfo) list.get(i10)).l;
        }
        TrackInfo trackInfo3 = (TrackInfo) list.get(0);
        return Pair.create(new ExoTrackSelection.Definition(0, trackInfo3.k, iArr2), Integer.valueOf(trackInfo3.j));
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void a(TrackSelectionParameters trackSelectionParameters) {
        if (trackSelectionParameters == null) {
            return;
        }
        if (trackSelectionParameters instanceof Parameters) {
            this.f = (Parameters) trackSelectionParameters;
            return;
        }
        Parameters.Builder builder = new Parameters.Builder(this.f);
        builder.c(trackSelectionParameters);
        this.f = new Parameters(builder);
    }

    public final void l(Parameters parameters) {
        boolean equals = this.e.equals(parameters);
        this.e = parameters;
        if (!equals) {
            if (parameters.B && this.c == null) {
                Log.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            TrackSelector.InvalidationListener invalidationListener = this.a;
            if (invalidationListener != null) {
                invalidationListener.a(parameters);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Parameters extends TrackSelectionParameters {
        public static final Parameters G = new Parameters(new Builder());
        public final boolean A;
        public final boolean B;
        public final boolean C;
        public final boolean D;
        public final SparseArray E;
        public final SparseBooleanArray F;
        public final boolean x;
        public final boolean y;
        public final boolean z;

        static {
            q.q(1000, 1001, 1002, 1003, 1004);
            q.q(1005, 1006, 1007, 1008, 1009);
            q.q(1010, 1011, 1012, 1013, 1014);
            Util.z(1015);
            Util.z(1016);
            Util.z(1017);
            Util.z(1018);
        }

        public Parameters(Builder builder) {
            super(builder);
            this.x = builder.x;
            this.y = builder.y;
            this.z = builder.z;
            this.A = builder.A;
            this.B = builder.B;
            this.C = builder.C;
            this.D = builder.D;
            this.E = builder.E;
            this.F = builder.F;
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final TrackSelectionParameters.Builder a() {
            return new Builder(this);
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && Parameters.class == obj.getClass()) {
                    Parameters parameters = (Parameters) obj;
                    if (super.equals(parameters) && this.x == parameters.x && this.y == parameters.y && this.z == parameters.z && this.A == parameters.A && this.B == parameters.B && this.C == parameters.C && this.D == parameters.D) {
                        SparseBooleanArray sparseBooleanArray = parameters.F;
                        SparseBooleanArray sparseBooleanArray2 = this.F;
                        int size = sparseBooleanArray2.size();
                        if (sparseBooleanArray.size() == size) {
                            int i = 0;
                            while (true) {
                                if (i < size) {
                                    if (sparseBooleanArray.indexOfKey(sparseBooleanArray2.keyAt(i)) < 0) {
                                        break;
                                    }
                                    i++;
                                } else {
                                    SparseArray sparseArray = parameters.E;
                                    SparseArray sparseArray2 = this.E;
                                    int size2 = sparseArray2.size();
                                    if (sparseArray.size() == size2) {
                                        for (int i2 = 0; i2 < size2; i2++) {
                                            int indexOfKey = sparseArray.indexOfKey(sparseArray2.keyAt(i2));
                                            if (indexOfKey >= 0) {
                                                Map map = (Map) sparseArray2.valueAt(i2);
                                                Map map2 = (Map) sparseArray.valueAt(indexOfKey);
                                                if (map2.size() == map.size()) {
                                                    for (Map.Entry entry : map.entrySet()) {
                                                        TrackGroupArray trackGroupArray = (TrackGroupArray) entry.getKey();
                                                        if (map2.containsKey(trackGroupArray) && Objects.equals(entry.getValue(), map2.get(trackGroupArray))) {
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        @Override // androidx.media3.common.TrackSelectionParameters
        public final int hashCode() {
            return (((((((((((((((super.hashCode() + 31) * 31) + (this.x ? 1 : 0)) * 961) + (this.y ? 1 : 0)) * 961) + (this.z ? 1 : 0)) * 28629151) + (this.A ? 1 : 0)) * 31) + (this.B ? 1 : 0)) * 31) + (this.C ? 1 : 0)) * 961) + (this.D ? 1 : 0)) * 31;
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder extends TrackSelectionParameters.Builder {
            public final boolean A;
            public final boolean B;
            public final boolean C;
            public final boolean D;
            public final SparseArray E;
            public final SparseBooleanArray F;
            public final boolean x;
            public final boolean y;
            public final boolean z;

            public Builder(Parameters parameters) {
                c(parameters);
                this.x = parameters.x;
                this.y = parameters.y;
                this.z = parameters.z;
                this.A = parameters.A;
                this.B = parameters.B;
                this.C = parameters.C;
                this.D = parameters.D;
                SparseArray sparseArray = parameters.E;
                SparseArray sparseArray2 = new SparseArray();
                for (int i = 0; i < sparseArray.size(); i++) {
                    sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
                }
                this.E = sparseArray2;
                this.F = parameters.F.clone();
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters a() {
                return new Parameters(this);
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder b(int i) {
                super.b(i);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder d() {
                this.u = -3;
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder e(TrackSelectionOverride trackSelectionOverride) {
                super.e(trackSelectionOverride);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder f() {
                super.f();
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder g(String[] strArr) {
                super.g(strArr);
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder h() {
                this.s = false;
                return this;
            }

            @Override // androidx.media3.common.TrackSelectionParameters.Builder
            public final TrackSelectionParameters.Builder i(int i, boolean z) {
                super.i(i, z);
                return this;
            }

            public final void j(Set set) {
                this.w.clear();
                this.w.addAll(set);
            }

            public Builder() {
                this.E = new SparseArray();
                this.F = new SparseBooleanArray();
                this.x = true;
                this.y = true;
                this.z = true;
                this.A = true;
                this.B = true;
                this.C = true;
                this.D = true;
            }
        }
    }
}
