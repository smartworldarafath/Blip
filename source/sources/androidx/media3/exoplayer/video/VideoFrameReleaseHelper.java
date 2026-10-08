package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Choreographer$VsyncCallback;
import android.view.Surface;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VideoFrameReleaseHelper {
    public final Context a;
    public boolean b;
    public VSyncSampler c;
    public boolean d;
    public Surface e;
    public float f;
    public float g;
    public float h = 1.0f;
    public int i = 0;
    public long j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VSyncSamplerBase extends VSyncSampler implements Choreographer.FrameCallback {
        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void a() {
            long j;
            this.k.registerDisplayListener(this, Util.k(null));
            this.j.removeFrameCallback(this);
            this.j.postFrameCallback(this);
            if (this.k.getDisplay(0) != null) {
                j = (long) (1.0E9d / r0.getRefreshRate());
            } else {
                Log.f("VideoFrameReleaseHelper", "Unable to query display refresh rate");
                j = -9223372036854775807L;
            }
            this.m = j;
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void b() {
            this.k.unregisterDisplayListener(this);
            this.j.removeFrameCallback(this);
            this.l = -9223372036854775807L;
            this.m = -9223372036854775807L;
        }

        @Override // android.view.Choreographer.FrameCallback
        public final void doFrame(long j) {
            this.l = j;
            this.j.removeFrameCallback(this);
            this.j.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            long j;
            if (i == 0) {
                this.j.removeFrameCallback(this);
                this.j.postFrameCallback(this);
                if (this.k.getDisplay(0) != null) {
                    j = (long) (1.0E9d / r5.getRefreshRate());
                } else {
                    Log.f("VideoFrameReleaseHelper", "Unable to query display refresh rate");
                    j = -9223372036854775807L;
                }
                this.m = j;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VSyncSamplerV33 extends VSyncSampler implements Choreographer$VsyncCallback {
        public final Handler n;

        public VSyncSamplerV33(Choreographer choreographer, DisplayManager displayManager) {
            super(choreographer, displayManager);
            this.n = Util.k(null);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void a() {
            this.k.registerDisplayListener(this, Util.k(null));
            Choreographer choreographer = this.j;
            choreographer.removeVsyncCallback(this);
            choreographer.postVsyncCallback(this);
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.VSyncSampler
        public final void b() {
            this.k.unregisterDisplayListener(this);
            this.n.removeCallbacksAndMessages(null);
            this.j.removeVsyncCallback(this);
            this.l = -9223372036854775807L;
            this.m = -9223372036854775807L;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                this.n.removeCallbacksAndMessages(null);
                Choreographer choreographer = this.j;
                choreographer.removeVsyncCallback(this);
                choreographer.postVsyncCallback(this);
            }
        }

        public final void onVsync(Choreographer.FrameData frameData) {
            long frameTimeNanos;
            Choreographer.FrameTimeline[] frameTimelines;
            long expectedPresentationTimeNanos;
            long expectedPresentationTimeNanos2;
            frameTimeNanos = frameData.getFrameTimeNanos();
            this.l = frameTimeNanos;
            frameTimelines = frameData.getFrameTimelines();
            long j = -9223372036854775807L;
            if (frameTimelines.length >= 2) {
                expectedPresentationTimeNanos = frameTimelines[1].getExpectedPresentationTimeNanos();
                expectedPresentationTimeNanos2 = frameTimelines[0].getExpectedPresentationTimeNanos();
                long j2 = expectedPresentationTimeNanos - expectedPresentationTimeNanos2;
                if (j2 != 0) {
                    j = j2;
                }
                this.m = j;
            } else {
                this.m = -9223372036854775807L;
            }
            this.n.removeCallbacksAndMessages(null);
            this.n.postDelayed(new a(1, this), 500L);
        }
    }

    public VideoFrameReleaseHelper(Context context) {
        this.a = context;
    }

    public final void a() {
        Surface surface;
        if (Build.VERSION.SDK_INT >= 30 && (surface = this.e) != null && this.i != Integer.MIN_VALUE && this.g != 0.0f && surface.isValid()) {
            this.g = 0.0f;
            try {
                this.e.setFrameRate(0.0f, 0);
            } catch (IllegalStateException e) {
                Log.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
            }
        }
    }

    public final void b() {
        this.o = -1L;
        this.l = -1L;
        this.n = -9223372036854775807L;
        this.j = 0L;
        this.k = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(boolean z) {
        Surface surface;
        float f;
        int i;
        if (Build.VERSION.SDK_INT >= 30 && (surface = this.e) != null && this.i != Integer.MIN_VALUE && surface.isValid()) {
            try {
                if (this.d) {
                    float f2 = this.f;
                    if (f2 != -1.0f) {
                        f = f2 * this.h;
                        if (!z || this.g != f) {
                            this.g = f;
                            Surface surface2 = this.e;
                            if (f != 0.0f) {
                                i = 0;
                            } else {
                                i = 1;
                            }
                            surface2.setFrameRate(f, i);
                            return;
                        }
                        return;
                    }
                }
                surface2.setFrameRate(f, i);
                return;
            } catch (IllegalStateException e) {
                Log.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e);
                return;
            }
            f = 0.0f;
            if (!z) {
            }
            this.g = f;
            Surface surface22 = this.e;
            if (f != 0.0f) {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class VSyncSampler implements DisplayManager.DisplayListener {
        public final Choreographer j;
        public final DisplayManager k;
        public volatile long l = -9223372036854775807L;
        public volatile long m = -9223372036854775807L;

        public VSyncSampler(Choreographer choreographer, DisplayManager displayManager) {
            this.j = choreographer;
            this.k = displayManager;
        }

        public abstract void a();

        public abstract void b();

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    }
}
