package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r3 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;
    public final /* synthetic */ long l;
    public final /* synthetic */ long m;
    public final /* synthetic */ Object n;

    public /* synthetic */ r3(Object obj, String str, long j, long j2, int i) {
        this.j = i;
        this.n = obj;
        this.k = str;
        this.l = j;
        this.m = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.n;
        switch (i) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = ((AudioRendererEventListener.EventDispatcher) obj).b;
                String str = Util.a;
                audioRendererEventListener.F(this.l, this.m, this.k);
                return;
            default:
                VideoRendererEventListener videoRendererEventListener = ((VideoRendererEventListener.EventDispatcher) obj).b;
                String str2 = Util.a;
                videoRendererEventListener.C(this.l, this.m, this.k);
                return;
        }
    }
}
