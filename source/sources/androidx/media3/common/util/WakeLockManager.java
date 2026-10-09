package androidx.media3.common.util;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import androidx.media3.common.util.WakeLockManager;
import defpackage.f3;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WakeLockManager {
    public final WakeLockManagerInternal a;
    public final HandlerWrapper b;
    public final HandlerWrapper c;
    public boolean d;
    public boolean e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WakeLockManagerInternal {
        public final Context a;
        public PowerManager.WakeLock b;

        public WakeLockManagerInternal(Context context) {
            this.a = context;
        }

        public static void a(WakeLockManagerInternal wakeLockManagerInternal, boolean z, boolean z2) {
            synchronized (wakeLockManagerInternal) {
                boolean z3 = false;
                if (z) {
                    if (wakeLockManagerInternal.b == null) {
                        if (wakeLockManagerInternal.a.checkSelfPermission("android.permission.WAKE_LOCK") != 0) {
                            Log.f("WakeLockManager", "WAKE_LOCK permission not granted, can't acquire wake lock for playback");
                            return;
                        }
                        PowerManager powerManager = (PowerManager) wakeLockManagerInternal.a.getSystemService("power");
                        if (powerManager == null) {
                            Log.f("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                            return;
                        } else {
                            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                            wakeLockManagerInternal.b = newWakeLock;
                            newWakeLock.setReferenceCounted(false);
                        }
                    }
                }
                PowerManager.WakeLock wakeLock = wakeLockManagerInternal.b;
                if (wakeLock == null) {
                    return;
                }
                if (z && z2) {
                    z3 = true;
                }
                if (z3) {
                    wakeLock.acquire();
                } else {
                    wakeLock.release();
                }
            }
        }
    }

    public WakeLockManager(Context context, Looper looper, SystemClock systemClock) {
        this.a = new WakeLockManagerInternal(context.getApplicationContext());
        this.b = systemClock.a(looper, null);
        this.c = systemClock.a(Looper.getMainLooper(), null);
    }

    public final void a(final boolean z, final boolean z2) {
        HandlerWrapper handlerWrapper = this.b;
        if (z && z2) {
            ((SystemHandlerWrapper) handlerWrapper).d(new Runnable() { // from class: androidx.media3.common.util.e
                @Override // java.lang.Runnable
                public final void run() {
                    WakeLockManager.WakeLockManagerInternal.a(WakeLockManager.this.a, z, z2);
                }
            });
            return;
        }
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        ((SystemHandlerWrapper) this.c).a.postDelayed(new f3(27, this, atomicBoolean), 1000L);
        ((SystemHandlerWrapper) handlerWrapper).d(new Runnable() { // from class: androidx.media3.common.util.f
            @Override // java.lang.Runnable
            public final void run() {
                atomicBoolean.set(false);
                WakeLockManager.WakeLockManagerInternal.a(WakeLockManager.this.a, z, z2);
            }
        });
    }

    public final void b(boolean z) {
        if (this.e != z) {
            this.e = z;
            if (this.d) {
                a(true, z);
            }
        }
    }
}
