package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ParsableNalUnitBitArray;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.mediacodec.MediaCodecPerformancePointCoverageProvider;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.z8;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaCodecInfo {
    public static final Supplier m = Suppliers.a(new k8(19));
    public final String a;
    public final String b;
    public final String c;
    public final MediaCodecInfo.CodecCapabilities d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public int j;
    public int k;
    public float l;

    public MediaCodecInfo(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = codecCapabilities;
        this.g = z;
        this.e = z4;
        this.f = z5;
        this.h = z6;
        this.i = MimeTypes.k(str2);
        this.l = -3.4028235E38f;
        this.j = -1;
        this.k = -1;
    }

    public static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        Point point = new Point(Util.e(i, widthAlignment) * widthAlignment, Util.e(i2, heightAlignment) * heightAlignment);
        int i3 = point.x;
        int i4 = point.y;
        if (d != -1.0d && d >= 1.0d) {
            double floor = Math.floor(d);
            if (videoCapabilities.areSizeAndRateSupported(i3, i4, floor)) {
                Range<Double> achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i3, i4);
                if (achievableFrameRatesFor == null || floor <= achievableFrameRatesFor.getUpper().doubleValue()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return videoCapabilities.isSizeSupported(i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        if (r1.equals("Fairphone") == false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaCodecInfo i(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3) {
        boolean z4;
        boolean isFeatureSupported = codecCapabilities.isFeatureSupported("adaptive-playback");
        codecCapabilities.isFeatureSupported("tunneled-playback");
        boolean isFeatureSupported2 = codecCapabilities.isFeatureSupported("secure-playback");
        if (Build.VERSION.SDK_INT >= 35 && codecCapabilities.isFeatureSupported("detached-surface")) {
            Integer num = (Integer) m.get();
            if (num != null && num.intValue() <= 202604) {
                String str4 = Build.MANUFACTURER;
                if (!str4.equals("Xiaomi")) {
                    if (!str4.equals("OPPO")) {
                        if (!str4.equals("realme")) {
                            if (!str4.equals("motorola")) {
                                if (!str4.equals("LENOVO")) {
                                }
                            }
                        }
                    }
                }
            }
            z4 = true;
            return new MediaCodecInfo(str, str2, str3, codecCapabilities, z, z2, z3, isFeatureSupported, isFeatureSupported2, z4);
        }
        z4 = false;
        return new MediaCodecInfo(str, str2, str3, codecCapabilities, z, z2, z3, isFeatureSupported, isFeatureSupported2, z4);
    }

    public final DecoderReuseEvaluation b(Format format, Format format2) {
        int i;
        Format format3;
        Format format4;
        int i2;
        int i3;
        String str = format.p;
        ColorInfo colorInfo = format.H;
        String str2 = format2.p;
        ColorInfo colorInfo2 = format2.H;
        boolean equals = Objects.equals(str, str2);
        boolean z = false;
        if (!equals) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.i) {
            if (format.C != format2.C) {
                i |= 1024;
            }
            if (format.w != format2.w || format.x != format2.x) {
                z = true;
            }
            if (!this.e && z) {
                i |= 512;
            }
            if ((!ColorInfo.e(colorInfo) || !ColorInfo.e(colorInfo2)) && !Objects.equals(colorInfo, colorInfo2)) {
                i |= 2048;
            }
            HashSet hashSet = MediaLibraryInfo.a;
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(this.a) && !format.b(format2)) {
                i |= 2;
            }
            int i4 = format.z;
            if (i4 != -1 && (i3 = format.A) != -1 && i4 == format2.z && i3 == format2.A && z) {
                i |= 2;
            }
            if (i == 0 && Objects.equals(format2.p, "video/dolby-vision")) {
                Pair b = CodecSpecificDataUtil.b(format);
                Pair b2 = CodecSpecificDataUtil.b(format2);
                if (b == null || b2 == null || !((Integer) b.first).equals(b2.first)) {
                    i |= 2;
                }
            }
            if (i == 0) {
                if (format.b(format2)) {
                    i2 = 3;
                } else {
                    i2 = 2;
                }
                return new DecoderReuseEvaluation(this.a, format, format2, i2, 0);
            }
            format3 = format;
            format4 = format2;
        } else {
            format3 = format;
            format4 = format2;
            if (format3.J != format4.J) {
                i |= 4096;
            }
            if (format3.L != format4.L) {
                i |= 8192;
            }
            if (format3.M != format4.M) {
                i |= 16384;
            }
            String str3 = this.b;
            if (i == 0 && (str3.equals("audio/mp4a-latm") || str3.equals("audio/ac4"))) {
                Pair b3 = CodecSpecificDataUtil.b(format3);
                Pair b4 = CodecSpecificDataUtil.b(format4);
                if (b3 != null && b4 != null) {
                    int intValue = ((Integer) b3.first).intValue();
                    int intValue2 = ((Integer) b4.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new DecoderReuseEvaluation(this.a, format3, format4, 3, 0);
                    }
                    if (str3.equals("audio/ac4") && b3.equals(b4)) {
                        return new DecoderReuseEvaluation(this.a, format3, format4, 3, 0);
                    }
                }
            }
            if (i == 0 && (str3.equals("audio/eac3-joc") || str3.equals("audio/eac3"))) {
                return new DecoderReuseEvaluation(this.a, format3, format4, 3, 0);
            }
            if (!format3.b(format4)) {
                i |= 32;
            }
            if ("audio/opus".equals(str3)) {
                i |= 2;
            }
            if (i == 0) {
                return new DecoderReuseEvaluation(this.a, format3, format4, 1, 0);
            }
        }
        return new DecoderReuseEvaluation(this.a, format3, format4, 0, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(Context context, Format format, boolean z) {
        char c;
        boolean z2;
        int i;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        CodecSpecificDataUtil.MediaCodecProfileAndLevel mediaCodecProfileAndLevel;
        boolean z3;
        String str;
        CodecSpecificDataUtil.MediaCodecProfileAndLevel d = CodecSpecificDataUtil.d(format);
        String str2 = format.p;
        String str3 = this.c;
        if (str2 != null && str2.equals("video/mv-hevc")) {
            String l = MimeTypes.l(str3);
            if (l.equals("video/mv-hevc")) {
                return true;
            }
            if (l.equals("video/hevc")) {
                HashMap hashMap = MediaCodecUtil.a;
                List list = format.s;
                int i2 = 0;
                loop0: while (true) {
                    if (i2 < list.size()) {
                        byte[] bArr = (byte[]) list.get(i2);
                        int length = bArr.length;
                        if (length > 3) {
                            boolean[] zArr = new boolean[3];
                            ImmutableList.Builder k = ImmutableList.k();
                            int i3 = 0;
                            z3 = false;
                            while (i3 < bArr.length) {
                                int b = NalUnitUtil.b(bArr, i3, bArr.length, zArr);
                                if (b != bArr.length) {
                                    k.d(Integer.valueOf(b));
                                }
                                i3 = b + 3;
                            }
                            ImmutableList i4 = k.i();
                            for (int i5 = 0; i5 < i4.size(); i5++) {
                                if (((Integer) i4.get(i5)).intValue() + 3 < length) {
                                    ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, ((Integer) i4.get(i5)).intValue() + 3, length);
                                    NalUnitUtil.H265NalHeader f = NalUnitUtil.f(parsableNalUnitBitArray);
                                    if (f.a == 33 && f.b == 0) {
                                        parsableNalUnitBitArray.j(4);
                                        int e = parsableNalUnitBitArray.e(3);
                                        parsableNalUnitBitArray.i();
                                        mediaCodecProfileAndLevel = null;
                                        NalUnitUtil.H265ProfileTierLevel g = NalUnitUtil.g(parsableNalUnitBitArray, true, e, null);
                                        str = CodecSpecificDataUtil.a(g.a, g.b, g.c, g.d, g.e, g.f);
                                        break loop0;
                                    }
                                }
                            }
                        }
                        i2++;
                    } else {
                        mediaCodecProfileAndLevel = null;
                        z3 = false;
                        str = null;
                        break;
                    }
                }
                if (str == null) {
                    d = mediaCodecProfileAndLevel;
                    c = 65535;
                    z2 = z3;
                } else {
                    String trim = str.trim();
                    String str4 = Util.a;
                    c = 65535;
                    d = CodecSpecificDataUtil.c(str, trim.split("\\.", -1), format.H);
                    z2 = z3;
                }
                if (d != null) {
                    return true;
                }
                boolean z4 = d.c;
                if (!z4) {
                    return z2;
                }
                Preconditions.n(z4);
                int i6 = d.a;
                Preconditions.n(z4);
                int i7 = d.b;
                boolean equals = "video/dolby-vision".equals(str2);
                int i8 = 8;
                String str5 = this.b;
                if (equals) {
                    str5.getClass();
                    switch (str5.hashCode()) {
                        case -1662735862:
                            if (str5.equals("video/av01")) {
                                c = z2;
                                break;
                            }
                            break;
                        case -1662541442:
                            if (str5.equals("video/hevc")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 1331836730:
                            if (str5.equals("video/avc")) {
                                c = 2;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                        case 1:
                            i6 = 2;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            i6 = 8;
                            break;
                    }
                    i7 = z2;
                }
                if (!this.i && !str5.equals("audio/ac4") && i6 != 42) {
                    return true;
                }
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr2 = codecCapabilities.profileLevels;
                if (codecProfileLevelArr2 == null) {
                    codecProfileLevelArr2 = new MediaCodecInfo.CodecProfileLevel[z2];
                }
                if (str5.equals("audio/ac4") && codecProfileLevelArr2.length == 0) {
                    MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                    if (audioCapabilities != null) {
                        i = audioCapabilities.getMaxInputChannelCount();
                    } else {
                        i = 2;
                    }
                    if (i > 18) {
                        i8 = 16;
                    }
                    if (context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
                        codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.b(1026, i8)};
                    } else {
                        codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[]{MediaCodecUtil.b(257, i8), MediaCodecUtil.b(513, i8), MediaCodecUtil.b(514, i8), MediaCodecUtil.b(1026, i8), MediaCodecUtil.b(1028, i8)};
                    }
                    codecProfileLevelArr2 = codecProfileLevelArr;
                }
                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr2) {
                    if (codecProfileLevel.profile == i6 && (codecProfileLevel.level >= i7 || !z)) {
                        HashSet hashSet = MediaLibraryInfo.a;
                        if (!"video/hevc".equals(str5) || 2 != i6) {
                            return true;
                        }
                        String str6 = Build.DEVICE;
                        if (!"sailfish".equals(str6) && !"marlin".equals(str6)) {
                            return true;
                        }
                    }
                }
                h("codec.profileLevel, " + format.l + ", " + str3);
                return false;
            }
        }
        c = 65535;
        z2 = 0;
        if (d != null) {
        }
    }

    public final boolean d(Format format) {
        if (Objects.equals(format.p, "audio/flac") && format.M == 22 && Build.VERSION.SDK_INT < 34 && this.a.equals("c2.android.flac.decoder")) {
            return false;
        }
        return true;
    }

    public final boolean e(Context context, Format format) {
        int i;
        int i2;
        String str = format.p;
        String str2 = this.b;
        if ((!str2.equals(str) && !str2.equals(MediaCodecUtil.c(format))) || !c(context, format, true) || !d(format)) {
            return false;
        }
        if (this.i) {
            int i3 = format.w;
            if (i3 > 0 && (i2 = format.x) > 0) {
                return g(i3, i2, format.B);
            }
        } else {
            int i4 = format.L;
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
            if (i4 != -1) {
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    h("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i4)) {
                    h("sampleRate.support, " + i4);
                    return false;
                }
            }
            int i5 = format.J;
            if (i5 != -1) {
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    h("channelCount.aCaps");
                    return false;
                }
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && maxInputChannelCount <= 0 && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2)) {
                    if ("audio/ac3".equals(str2)) {
                        i = 6;
                    } else if ("audio/eac3".equals(str2)) {
                        i = 16;
                    } else {
                        i = 30;
                    }
                    Log.f("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + this.a + ", [" + maxInputChannelCount + " to " + i + "]");
                    maxInputChannelCount = i;
                }
                if (maxInputChannelCount < i5) {
                    h("channelCount.support, " + i5);
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean f(Format format) {
        boolean z;
        if (this.i) {
            return this.e;
        }
        CodecSpecificDataUtil.MediaCodecProfileAndLevel d = CodecSpecificDataUtil.d(format);
        if (d != null && (z = d.c)) {
            Preconditions.n(z);
            if (d.a == 42) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
    
        if (r2 == false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(int i, int i2, double d) {
        char c;
        Boolean bool;
        List g;
        boolean z;
        MediaCodecInfo.VideoCapabilities videoCapabilities = this.d.getVideoCapabilities();
        if (videoCapabilities == null) {
            h("sizeAndRate.vCaps");
            return false;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29) {
            if (i3 >= 29 && (((bool = MediaCodecPerformancePointCoverageProvider.a) == null || !bool.booleanValue()) && (g = z8.g(videoCapabilities)) != null && !g.isEmpty())) {
                z8.h();
                MediaCodecInfo.VideoCapabilities.PerformancePoint d2 = z8.d(i, i2, (int) d);
                int i4 = 0;
                while (true) {
                    if (i4 < g.size()) {
                        if (z8.r(z8.e(g.get(i4)), d2)) {
                            c = 2;
                            break;
                        }
                        i4++;
                    } else {
                        c = 1;
                        break;
                    }
                }
                if (c == 1 && MediaCodecPerformancePointCoverageProvider.a == null) {
                    if (i3 < 37) {
                        int a = MediaCodecPerformancePointCoverageProvider.Api29.a(true);
                        if (i3 < 35 ? MediaCodecPerformancePointCoverageProvider.Api29.a(false) != 2 || a == 1 : a == 1) {
                            z = true;
                            MediaCodecPerformancePointCoverageProvider.a = Boolean.valueOf(z);
                        }
                    }
                    z = false;
                    MediaCodecPerformancePointCoverageProvider.a = Boolean.valueOf(z);
                }
                if (c != 2) {
                    if (c == 1) {
                        StringBuilder k = jb.k("sizeAndRate.cover, ", i, "x", i2, "@");
                        k.append(d);
                        h(k.toString());
                        return false;
                    }
                }
                return true;
            }
            c = 0;
            if (c != 2) {
            }
            return true;
        }
        if (!a(videoCapabilities, i, i2, d)) {
            if (i < i2) {
                HashSet hashSet = MediaLibraryInfo.a;
                String str = this.a;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && a(videoCapabilities, i2, i, d)) {
                    StringBuilder k2 = jb.k("sizeAndRate.rotated, ", i, "x", i2, "@");
                    k2.append(d);
                    StringBuilder o = q.o("AssumedSupport [", k2.toString(), "] [", str, ", ");
                    o.append(this.b);
                    o.append("] [");
                    o.append(Util.a);
                    o.append("]");
                    Log.b("MediaCodecInfo", o.toString());
                    return true;
                }
            }
            StringBuilder k3 = jb.k("sizeAndRate.support, ", i, "x", i2, "@");
            k3.append(d);
            h(k3.toString());
            return false;
        }
        return true;
    }

    public final void h(String str) {
        Log.b("MediaCodecInfo", "NoSupport [" + str + "] [" + this.a + ", " + this.b + "] [" + Util.a + "]");
    }

    public final String toString() {
        return this.a;
    }
}
