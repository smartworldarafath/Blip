package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.decoder.CryptoInfo;
import defpackage.f3;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MediaCodecAdapter {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Configuration {
        public final MediaCodecInfo a;
        public final MediaFormat b;
        public final Format c;
        public final Surface d;
        public final MediaCrypto e;
        public final LoudnessCodecController f;

        public Configuration(MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat, Format format, Surface surface, MediaCrypto mediaCrypto, LoudnessCodecController loudnessCodecController) {
            this.a = mediaCodecInfo;
            this.b = mediaFormat;
            this.c = format;
            this.d = surface;
            this.e = mediaCrypto;
            this.f = loudnessCodecController;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory {
        MediaCodecAdapter a(Configuration configuration);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnBufferAvailableListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OnFrameRenderedListener {
        void a(long j);
    }

    void a();

    void b(int i, CryptoInfo cryptoInfo, long j, int i2);

    void c(Bundle bundle);

    void d(int i, int i2, int i3, long j);

    default boolean e(OnBufferAvailableListener onBufferAvailableListener) {
        return false;
    }

    void f(int i);

    void flush();

    void g(OnFrameRenderedListener onFrameRenderedListener, Handler handler);

    MediaFormat h();

    void i();

    void j(int i, long j);

    int k();

    default void l(f3 f3Var) {
        f3Var.run();
    }

    int m(MediaCodec.BufferInfo bufferInfo);

    void n(int i);

    ByteBuffer o(int i);

    void p(Surface surface);

    ByteBuffer q(int i);

    void r(ArrayList arrayList);

    void s(ArrayList arrayList);
}
