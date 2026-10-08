package androidx.media3.exoplayer.audio;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import defpackage.n3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface AudioRendererEventListener {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EventDispatcher {
        public final Handler a;
        public final AudioRendererEventListener b;

        public EventDispatcher(Handler handler, AudioRendererEventListener audioRendererEventListener) {
            this.a = handler;
            this.b = audioRendererEventListener;
        }

        public final void a(DecoderCounters decoderCounters) {
            synchronized (decoderCounters) {
            }
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new n3(this, decoderCounters, 0));
            }
        }
    }

    void D(int i, long j, long j2);

    void E(DecoderCounters decoderCounters);

    void F(long j, long j2, String str);

    void b(int i);

    void e(boolean z);

    void k(AudioSink$AudioTrackConfig audioSink$AudioTrackConfig);

    void l(String str);

    void m(AudioSink$AudioTrackConfig audioSink$AudioTrackConfig);

    void p(CodecParameters codecParameters);

    void q(DecoderCounters decoderCounters);

    void w(Exception exc);

    void x(long j);

    void y(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void z(Exception exc);
}
