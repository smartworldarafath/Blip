package androidx.media3.exoplayer.mediacodec;

import android.os.HandlerThread;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Supplier {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;

    public /* synthetic */ c(int i, int i2) {
        this.j = i2;
        this.k = i;
    }

    @Override // com.google.common.base.Supplier
    public final Object get() {
        int i = this.j;
        int i2 = this.k;
        switch (i) {
            case 0:
                return new HandlerThread(AsynchronousMediaCodecAdapter.u(i2, "ExoPlayer:MediaCodecAsyncAdapter:"));
            default:
                return new HandlerThread(AsynchronousMediaCodecAdapter.u(i2, "ExoPlayer:MediaCodecQueueingThread:"));
        }
    }
}
