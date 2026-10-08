package androidx.media3.common.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.SystemClock;
import defpackage.e;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioBecomingNoisyManager {
    public final Context a;
    public final AudioBecomingNoisyReceiver b;
    public final HandlerWrapper c;
    public boolean d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver {
        public final Listener a;
        public final HandlerWrapper b;

        public AudioBecomingNoisyReceiver(HandlerWrapper handlerWrapper, Listener listener) {
            this.b = handlerWrapper;
            this.a = listener;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.b.d(new Runnable() { // from class: androidx.media3.common.audio.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioBecomingNoisyManager.AudioBecomingNoisyReceiver audioBecomingNoisyReceiver = AudioBecomingNoisyManager.AudioBecomingNoisyReceiver.this;
                        if (AudioBecomingNoisyManager.this.d) {
                            audioBecomingNoisyReceiver.a.o();
                        }
                    }
                });
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
        void o();
    }

    public AudioBecomingNoisyManager(Context context, Looper looper, Looper looper2, Listener listener, SystemClock systemClock) {
        this.a = context.getApplicationContext();
        this.c = systemClock.a(looper, null);
        this.b = new AudioBecomingNoisyReceiver(systemClock.a(looper2, null), listener);
    }

    public final void a() {
        if (!this.d) {
            return;
        }
        this.c.d(new e(3, this));
        this.d = false;
    }
}
