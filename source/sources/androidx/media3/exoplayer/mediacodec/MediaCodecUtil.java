package androidx.media3.exoplayer.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.jb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public abstract class MediaCodecUtil {
    public static final HashMap a = new HashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CodecKey {
        public final String a;
        public final boolean b;
        public final boolean c;

        public CodecKey(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.c = z2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == CodecKey.class) {
                CodecKey codecKey = (CodecKey) obj;
                if (TextUtils.equals(this.a, codecKey.a) && this.b == codecKey.b && this.c == codecKey.c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int c = jb.c(this.a, 31, 31);
            int i2 = 1237;
            if (this.b) {
                i = 1231;
            } else {
                i = 1237;
            }
            int i3 = (c + i) * 31;
            if (this.c) {
                i2 = 1231;
            }
            return i3 + i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DecoderQueryException extends Exception {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaCodecListCompatV21 {
        public final int a;
        public android.media.MediaCodecInfo[] b;

        public MediaCodecListCompatV21(boolean z, boolean z2, boolean z3) {
            int i;
            if (!z && !z2 && !z3) {
                i = 0;
            } else {
                i = 1;
            }
            this.a = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ScoreProvider<T> {
        int a(Object obj);
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object, androidx.media3.exoplayer.mediacodec.MediaCodecUtil$ScoreProvider] */
    public static void a(String str, ArrayList arrayList) {
        if ("audio/raw".equals(str)) {
            Collections.sort(arrayList, new g(new Object()));
        }
        if (Build.VERSION.SDK_INT < 32 && arrayList.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((MediaCodecInfo) arrayList.get(0)).a)) {
            arrayList.add((MediaCodecInfo) arrayList.remove(0));
        }
    }

    public static MediaCodecInfo.CodecProfileLevel b(int i, int i2) {
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = i;
        codecProfileLevel.level = i2;
        return codecProfileLevel;
    }

    public static String c(Format format) {
        CodecSpecificDataUtil.MediaCodecProfileAndLevel d;
        boolean z;
        String str = format.p;
        if ("audio/eac3-joc".equals(str)) {
            if (!Objects.equals(Build.MANUFACTURER, "Google")) {
                return "audio/eac3";
            }
            return null;
        }
        if (!"audio/vnd.dts.hd".equals(str) && !"audio/vnd.dts.uhd;profile=p2".equals(str)) {
            if ("video/dolby-vision".equals(str) && (d = CodecSpecificDataUtil.d(format)) != null && (z = d.c)) {
                Preconditions.n(z);
                int i = d.a;
                if (i != 16 && i != 256) {
                    if (i == 512) {
                        return "video/avc";
                    }
                    if (i == 1024) {
                        ColorInfo colorInfo = format.H;
                        if (colorInfo == null || colorInfo.c != 6 || colorInfo.b != 1) {
                            return "video/av01";
                        }
                        return null;
                    }
                } else {
                    return "video/hevc";
                }
            }
            if ("video/mv-hevc".equals(str)) {
                return "video/hevc";
            }
            return null;
        }
        return "audio/vnd.dts";
    }

    public static String d(android.media.MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static synchronized List e(String str, boolean z, boolean z2) {
        synchronized (MediaCodecUtil.class) {
            try {
                CodecKey codecKey = new CodecKey(str, z, z2);
                HashMap hashMap = a;
                List list = (List) hashMap.get(codecKey);
                if (list != null) {
                    return list;
                }
                ArrayList f = f(codecKey, new MediaCodecListCompatV21(z, z2, str.equals("video/mv-hevc")));
                if (z) {
                    f.isEmpty();
                }
                a(str, f);
                ImmutableList m = ImmutableList.m(f);
                hashMap.put(codecKey, m);
                return m;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ArrayList f(CodecKey codecKey, MediaCodecListCompatV21 mediaCodecListCompatV21) {
        String d;
        String str;
        boolean z;
        int i;
        boolean isAlias;
        CodecKey codecKey2 = codecKey;
        int i2 = mediaCodecListCompatV21.a;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = codecKey2.a;
            boolean z2 = codecKey2.b;
            if (mediaCodecListCompatV21.b == null) {
                mediaCodecListCompatV21.b = new MediaCodecList(i2).getCodecInfos();
            }
            int length = mediaCodecListCompatV21.b.length;
            int i3 = 0;
            while (i3 < length) {
                if (mediaCodecListCompatV21.b == null) {
                    mediaCodecListCompatV21.b = new MediaCodecList(i2).getCodecInfos();
                }
                android.media.MediaCodecInfo mediaCodecInfo = mediaCodecListCompatV21.b[i3];
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 29) {
                    isAlias = mediaCodecInfo.isAlias();
                    if (isAlias) {
                        i = i3;
                        i3 = i + 1;
                        codecKey2 = codecKey;
                    }
                }
                int i5 = i3;
                String name = mediaCodecInfo.getName();
                if (!mediaCodecInfo.isEncoder() && (d = d(mediaCodecInfo, name, str2)) != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(d);
                        boolean isFeatureSupported = capabilitiesForType.isFeatureSupported("tunneled-playback");
                        boolean isFeatureRequired = capabilitiesForType.isFeatureRequired("tunneled-playback");
                        boolean z3 = codecKey2.c;
                        if ((z3 || !isFeatureRequired) && (!z3 || isFeatureSupported)) {
                            boolean isFeatureSupported2 = capabilitiesForType.isFeatureSupported("secure-playback");
                            boolean isFeatureRequired2 = capabilitiesForType.isFeatureRequired("secure-playback");
                            if ((z2 || !isFeatureRequired2) && (!z2 || isFeatureSupported2)) {
                                boolean z4 = true;
                                if (i4 >= 29) {
                                    z = mediaCodecInfo.isHardwareAccelerated();
                                } else {
                                    z = !h(mediaCodecInfo, str2);
                                }
                                i = i5;
                                boolean h = h(mediaCodecInfo, str2);
                                boolean z5 = z;
                                if (i4 >= 29) {
                                    z4 = mediaCodecInfo.isVendor();
                                } else {
                                    String c = Ascii.c(mediaCodecInfo.getName());
                                    if (c.startsWith("omx.google.") || c.startsWith("c2.android.") || c.startsWith("c2.google.")) {
                                        z4 = false;
                                    }
                                }
                                if (z2 != isFeatureSupported2) {
                                    continue;
                                } else {
                                    str = d;
                                    try {
                                        arrayList.add(MediaCodecInfo.i(name, str2, str, capabilitiesForType, z5, h, z4));
                                    } catch (Exception e) {
                                        e = e;
                                        Log.c("MediaCodecUtil", "Failed to query codec " + name + " (" + str + ")");
                                        throw e;
                                    }
                                }
                                i3 = i + 1;
                                codecKey2 = codecKey;
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        str = d;
                    }
                }
                i = i5;
                i3 = i + 1;
                codecKey2 = codecKey;
            }
            return arrayList;
        } catch (Exception e3) {
            throw new Exception("Failed to query underlying media codecs", e3);
        }
    }

    public static List g(MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) {
        List c;
        List c2 = mediaCodecSelector.c(format.p, z, z2);
        String c3 = c(format);
        if (c3 == null) {
            c = ImmutableList.r();
        } else {
            c = mediaCodecSelector.c(c3, z, z2);
        }
        ImmutableList.Builder k = ImmutableList.k();
        k.f(c2);
        k.f(c);
        return k.i();
    }

    public static boolean h(android.media.MediaCodecInfo mediaCodecInfo, String str) {
        boolean isSoftwareOnly;
        if (Build.VERSION.SDK_INT >= 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        }
        if (!MimeTypes.h(str)) {
            String c = Ascii.c(mediaCodecInfo.getName());
            if (!c.startsWith("arc.")) {
                if (!c.startsWith("omx.google.") && !c.startsWith("omx.ffmpeg.")) {
                    if ((!c.startsWith("omx.sec.") || !c.contains(".sw.")) && !c.equals("omx.qcom.video.decoder.hevcswvdec") && !c.startsWith("c2.android.") && !c.startsWith("c2.google.")) {
                        if (c.startsWith("omx.") || c.startsWith("c2.")) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
