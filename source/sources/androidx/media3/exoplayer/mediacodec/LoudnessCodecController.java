package androidx.media3.exoplayer.mediacodec;

import android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener;
import android.media.MediaCodec;
import android.os.Bundle;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.k8;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LoudnessCodecController {
    public final HashSet a = new HashSet();
    public final k8 b = LoudnessParameterUpdateListener.d;
    public android.media.LoudnessCodecController c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface LoudnessParameterUpdateListener {
        public static final k8 d = new k8(18);
    }

    public final void a(MediaCodec mediaCodec) {
        android.media.LoudnessCodecController loudnessCodecController;
        if (this.a.remove(mediaCodec) && (loudnessCodecController = this.c) != null) {
            loudnessCodecController.removeMediaCodec(mediaCodec);
        }
    }

    public final void b(int i) {
        android.media.LoudnessCodecController create;
        boolean addMediaCodec;
        android.media.LoudnessCodecController loudnessCodecController = this.c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.c = null;
        }
        create = android.media.LoudnessCodecController.create(i, MoreExecutors.a(), new LoudnessCodecController$OnLoudnessCodecUpdateListener() { // from class: androidx.media3.exoplayer.mediacodec.LoudnessCodecController.1
            public final Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
                LoudnessCodecController.this.b.getClass();
                return bundle;
            }
        });
        this.c = create;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            addMediaCodec = create.addMediaCodec((MediaCodec) it.next());
            if (!addMediaCodec) {
                it.remove();
            }
        }
    }
}
