package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.os.Build;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    public final Context a;

    public DefaultMediaCodecAdapterFactory(Context context) {
        this.a = context;
    }

    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter$Factory, java.lang.Object] */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
    public final MediaCodecAdapter a(MediaCodecAdapter.Configuration configuration) {
        Context context;
        if (Build.VERSION.SDK_INT >= 31 || ((context = this.a) != null && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen"))) {
            int g = MimeTypes.g(configuration.c.p);
            Log.e("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type ".concat(Util.w(g)));
            AsynchronousMediaCodecAdapter.Factory factory = new AsynchronousMediaCodecAdapter.Factory(new c(g, 0), new c(g, 1));
            factory.c = true;
            return factory.a(configuration);
        }
        return new Object().a(configuration);
    }
}
