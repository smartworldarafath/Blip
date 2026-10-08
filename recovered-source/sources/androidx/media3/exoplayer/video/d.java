package androidx.media3.exoplayer.video;

import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Supplier {
    @Override // com.google.common.base.Supplier
    public final Object get() {
        int i = PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory.a;
        try {
            return Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
        } catch (Exception e) {
            throw new IllegalStateException(e);
        }
    }
}
