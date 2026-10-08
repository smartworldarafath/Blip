package androidx.media3.exoplayer.mediacodec;

import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.Comparator;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Comparator {
    public final /* synthetic */ MediaCodecUtil.ScoreProvider j;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        HashMap hashMap = MediaCodecUtil.a;
        MediaCodecUtil.ScoreProvider scoreProvider = this.j;
        return scoreProvider.a(obj2) - scoreProvider.a(obj);
    }
}
