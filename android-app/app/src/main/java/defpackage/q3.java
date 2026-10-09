package defpackage;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink$AudioTrackConfig;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q3 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ AudioRendererEventListener.EventDispatcher k;
    public final /* synthetic */ AudioSink$AudioTrackConfig l;

    public /* synthetic */ q3(AudioRendererEventListener.EventDispatcher eventDispatcher, AudioSink$AudioTrackConfig audioSink$AudioTrackConfig, int i) {
        this.j = i;
        this.k = eventDispatcher;
        this.l = audioSink$AudioTrackConfig;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        AudioSink$AudioTrackConfig audioSink$AudioTrackConfig = this.l;
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.k;
        switch (i) {
            case 0:
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.b;
                String str = Util.a;
                audioRendererEventListener.m(audioSink$AudioTrackConfig);
                return;
            default:
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher.b;
                String str2 = Util.a;
                audioRendererEventListener2.k(audioSink$AudioTrackConfig);
                return;
        }
    }
}
