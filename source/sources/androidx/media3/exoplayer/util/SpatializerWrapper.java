package androidx.media3.exoplayer.util;

import android.content.Context;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.audio.AudioManagerCompat;
import defpackage.u3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SpatializerWrapper {
    public final Spatializer a;
    public final boolean b;
    public final Handler c;
    public final Spatializer$OnSpatializerStateChangedListener d;

    public SpatializerWrapper(Context context, final Runnable runnable, Boolean bool) {
        AudioManager a;
        Spatializer spatializer;
        int immersiveAudioLevel;
        boolean z;
        if (context == null) {
            a = null;
        } else {
            a = AudioManagerCompat.a(context);
        }
        if (a != null && (bool == null || !bool.booleanValue())) {
            spatializer = a.getSpatializer();
            this.a = spatializer;
            immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
            if (immersiveAudioLevel != 0) {
                z = true;
            } else {
                z = false;
            }
            this.b = z;
            Looper myLooper = Looper.myLooper();
            myLooper.getClass();
            Handler handler = new Handler(myLooper);
            this.c = handler;
            Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = new Spatializer$OnSpatializerStateChangedListener() { // from class: androidx.media3.exoplayer.util.SpatializerWrapper.1
                public final void onSpatializerAvailableChanged(Spatializer spatializer2, boolean z2) {
                    runnable.run();
                }

                public final void onSpatializerEnabledChanged(Spatializer spatializer2, boolean z2) {
                    runnable.run();
                }
            };
            this.d = spatializer$OnSpatializerStateChangedListener;
            spatializer.addOnSpatializerStateChangedListener(new u3(0, handler), spatializer$OnSpatializerStateChangedListener);
            return;
        }
        this.a = null;
        this.b = false;
        this.c = null;
        this.d = null;
    }
}
