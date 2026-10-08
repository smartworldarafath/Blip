package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements MediaCodecUtil.ScoreProvider {
    public final /* synthetic */ Context a;
    public final /* synthetic */ Format b;

    public /* synthetic */ e(Context context, Format format) {
        this.a = context;
        this.b = format;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int a(Object obj) {
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) obj;
        HashMap hashMap = MediaCodecUtil.a;
        String str = mediaCodecInfo.b;
        Format format = this.b;
        if ((!str.equals(format.p) && !str.equals(MediaCodecUtil.c(format))) || !mediaCodecInfo.c(this.a, format, false) || !mediaCodecInfo.d(format)) {
            return 0;
        }
        return 1;
    }
}
