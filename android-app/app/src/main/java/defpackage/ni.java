package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ni implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ VideoRendererEventListener.EventDispatcher k;
    public final /* synthetic */ DecoderCounters l;

    public /* synthetic */ ni(VideoRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i) {
        this.j = i;
        this.k = eventDispatcher;
        this.l = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.j) {
            case 0:
                VideoRendererEventListener.EventDispatcher eventDispatcher = this.k;
                DecoderCounters decoderCounters = this.l;
                VideoRendererEventListener videoRendererEventListener = eventDispatcher.b;
                String str = Util.a;
                videoRendererEventListener.s(decoderCounters);
                return;
            default:
                VideoRendererEventListener.EventDispatcher eventDispatcher2 = this.k;
                DecoderCounters decoderCounters2 = this.l;
                synchronized (decoderCounters2) {
                }
                VideoRendererEventListener videoRendererEventListener2 = eventDispatcher2.b;
                String str2 = Util.a;
                videoRendererEventListener2.g(decoderCounters2);
                return;
        }
    }
}
