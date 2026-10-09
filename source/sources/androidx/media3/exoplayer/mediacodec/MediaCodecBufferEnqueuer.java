package androidx.media3.exoplayer.mediacodec;

import android.os.Bundle;
import androidx.media3.decoder.CryptoInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
interface MediaCodecBufferEnqueuer {
    void a();

    void b(int i, CryptoInfo cryptoInfo, long j, int i2);

    void c(Bundle bundle);

    void d(int i, int i2, int i3, long j);

    void flush();

    void shutdown();

    void start();
}
