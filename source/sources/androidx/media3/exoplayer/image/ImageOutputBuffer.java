package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import androidx.media3.decoder.DecoderOutputBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImageOutputBuffer extends DecoderOutputBuffer {
    public Bitmap m;

    @Override // androidx.media3.decoder.DecoderOutputBuffer
    public final void f() {
        this.m = null;
        this.j = 0;
        this.k = 0L;
        this.l = false;
    }
}
