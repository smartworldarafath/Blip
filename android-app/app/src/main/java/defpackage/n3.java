package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n3 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher k;
    public final /* synthetic */ DecoderCounters l;

    public /* synthetic */ n3(AudioRendererEventListener.EventDispatcher eventDispatcher, DecoderCounters decoderCounters, int i) {
        this.j = i;
        this.k = eventDispatcher;
        this.l = decoderCounters;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.j) {
            case 0:
                AudioRendererEventListener.EventDispatcher eventDispatcher = this.k;
                DecoderCounters decoderCounters = this.l;
                synchronized (decoderCounters) {
                }
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.b;
                String str = Util.a;
                audioRendererEventListener.E(decoderCounters);
                return;
            default:
                AudioRendererEventListener.EventDispatcher eventDispatcher2 = this.k;
                DecoderCounters decoderCounters2 = this.l;
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher2.b;
                String str2 = Util.a;
                audioRendererEventListener2.q(decoderCounters2);
                return;
        }
    }
}
