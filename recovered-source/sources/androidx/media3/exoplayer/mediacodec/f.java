package androidx.media3.exoplayer.mediacodec;

import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements MediaCodecUtil.ScoreProvider {
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int a(Object obj) {
        HashMap hashMap = MediaCodecUtil.a;
        String str = ((MediaCodecInfo) obj).a;
        if (!str.startsWith("OMX.google") && !str.startsWith("c2.android")) {
            return 0;
        }
        return 1;
    }
}
