package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlaybackLooperProvider {
    public final Object a = new Object();
    public Looper b = null;
    public HandlerThread c = null;
    public int d = 0;

    public final void a() {
        boolean z;
        HandlerThread handlerThread;
        synchronized (this.a) {
            try {
                if (this.d > 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.n(z);
                int i = this.d - 1;
                this.d = i;
                if (i == 0 && (handlerThread = this.c) != null) {
                    handlerThread.quit();
                    this.c = null;
                    this.b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
