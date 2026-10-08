package androidx.media3.exoplayer.video;

import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import defpackage.f3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface VideoRendererEventListener {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EventDispatcher {
        public final Handler a;
        public final VideoRendererEventListener b;

        public EventDispatcher(Handler handler, VideoRendererEventListener videoRendererEventListener) {
            if (videoRendererEventListener != null) {
                handler.getClass();
            } else {
                handler = null;
            }
            this.a = handler;
            this.b = videoRendererEventListener;
        }

        public final void a(VideoSize videoSize) {
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new f3(24, this, videoSize));
            }
        }
    }

    void A(Exception exc);

    void B(long j, Object obj);

    void C(long j, long j2, String str);

    void a(VideoSize videoSize);

    void g(DecoderCounters decoderCounters);

    void h(String str);

    void i(CodecParameters codecParameters);

    void j(int i, long j);

    void n(int i, long j);

    void s(DecoderCounters decoderCounters);

    void v(Format format, DecoderReuseEvaluation decoderReuseEvaluation);
}
