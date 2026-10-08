package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import com.google.common.collect.ImmutableList;
import defpackage.z8;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MediaCodecPerformancePointCoverageProvider {
    public static Boolean a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api29 {
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0055, code lost:
        
            r2 = r2.getSupportedPerformancePoints();
         */
        /* JADX WARN: Multi-variable type inference failed */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int a(boolean z) {
            List e;
            List supportedPerformancePoints;
            boolean covers;
            try {
                Format.Builder builder = new Format.Builder();
                builder.o = MimeTypes.l("video/avc");
                Format format = new Format(builder);
                String str = format.p;
                if (str != null) {
                    List e2 = MediaCodecUtil.e(str, z, false);
                    String c = MediaCodecUtil.c(format);
                    if (c == null) {
                        e = ImmutableList.r();
                    } else {
                        e = MediaCodecUtil.e(c, z, false);
                    }
                    ImmutableList.Builder k = ImmutableList.k();
                    k.f(e2);
                    k.f(e);
                    ImmutableList i = k.i();
                    for (int i2 = 0; i2 < i.size(); i2++) {
                        MediaCodecInfo.CodecCapabilities codecCapabilities = ((MediaCodecInfo) i.get(i2)).d;
                        MediaCodecInfo.VideoCapabilities videoCapabilities = ((MediaCodecInfo) i.get(i2)).d.getVideoCapabilities();
                        if (videoCapabilities != null && supportedPerformancePoints != null && !supportedPerformancePoints.isEmpty()) {
                            z8.h();
                            MediaCodecInfo.VideoCapabilities.PerformancePoint c2 = z8.c();
                            for (int i3 = 0; i3 < supportedPerformancePoints.size(); i3++) {
                                covers = z8.e(supportedPerformancePoints.get(i3)).covers(c2);
                                if (covers) {
                                    return 2;
                                }
                            }
                            return 1;
                        }
                    }
                }
            } catch (MediaCodecUtil.DecoderQueryException unused) {
            }
            return 0;
        }
    }
}
