package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.view.Choreographer;
import android.view.Surface;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.video.VideoFrameReleaseHelper;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VideoFrameReleaseControl {
    public final MediaCodecVideoRenderer a;
    public final VideoFrameReleaseHelper b;
    public final long c;
    public boolean d;
    public long g;
    public boolean i;
    public boolean l;
    public boolean m;
    public int e = 0;
    public long f = -9223372036854775807L;
    public long h = -9223372036854775807L;
    public float j = 1.0f;
    public Clock k = Clock.a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FrameReleaseInfo {
        public long a = -9223372036854775807L;
        public long b = -9223372036854775807L;
    }

    public VideoFrameReleaseControl(Context context, MediaCodecVideoRenderer mediaCodecVideoRenderer, long j) {
        this.a = mediaCodecVideoRenderer;
        this.c = j;
        this.b = new VideoFrameReleaseHelper(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x00b4, code lost:
    
        if (r3 > 100000) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x00c0, code lost:
    
        if (r32 >= r36) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e1 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(long j, long j2, long j3, long j4, boolean z, boolean z2, long j5, long j6, FrameReleaseInfo frameReleaseInfo) {
        long j7;
        boolean z3;
        long j8;
        long j9;
        long j10;
        long j11;
        boolean z4;
        float f;
        float f2;
        frameReleaseInfo.a = -9223372036854775807L;
        frameReleaseInfo.b = -9223372036854775807L;
        boolean z5 = this.d;
        if (z5 && this.f == -9223372036854775807L) {
            this.f = j2;
        }
        long j12 = (long) ((j - j2) / this.j);
        if (z5) {
            ((SystemClock) this.k).getClass();
            j12 -= Util.D(android.os.SystemClock.elapsedRealtime()) - j3;
        }
        frameReleaseInfo.a = j12;
        if (!z || z2) {
            if (!this.l) {
                if (!this.a.T0(j12, j2, z2, true)) {
                    if (!this.d || frameReleaseInfo.a >= 30000) {
                        this.m = true;
                        return 5;
                    }
                } else {
                    return 4;
                }
            } else {
                boolean z6 = false;
                if (this.h != -9223372036854775807L && !this.i) {
                    j7 = -9223372036854775807L;
                } else {
                    int i = this.e;
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    ((SystemClock) this.k).getClass();
                                    j7 = -9223372036854775807L;
                                    long D = Util.D(android.os.SystemClock.elapsedRealtime()) - this.g;
                                    if (this.d) {
                                        long j13 = this.f;
                                        if (j13 != -9223372036854775807L) {
                                            if (j13 != j2) {
                                                if (j12 < -30000) {
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    io.sentry.d.d();
                                    return 0;
                                }
                            } else {
                                j7 = -9223372036854775807L;
                            }
                        } else {
                            j7 = -9223372036854775807L;
                        }
                        z3 = true;
                    } else {
                        j7 = -9223372036854775807L;
                        z3 = this.d;
                    }
                    if (!z3) {
                        return 0;
                    }
                    if (!this.d || j2 == this.f) {
                        return 5;
                    }
                    ((SystemClock) this.k).getClass();
                    long nanoTime = System.nanoTime();
                    VideoFrameReleaseHelper videoFrameReleaseHelper = this.b;
                    long j14 = (frameReleaseInfo.a * 1000) + nanoTime;
                    long j15 = videoFrameReleaseHelper.n;
                    if (j != j15) {
                        videoFrameReleaseHelper.o = videoFrameReleaseHelper.l;
                        videoFrameReleaseHelper.p = videoFrameReleaseHelper.m;
                        videoFrameReleaseHelper.q = j15;
                        videoFrameReleaseHelper.j = videoFrameReleaseHelper.k;
                    }
                    long j16 = videoFrameReleaseHelper.o;
                    if (j16 != -1) {
                        if (j5 != j7) {
                            f = (float) ((j6 - j16) * j5);
                            f2 = videoFrameReleaseHelper.h;
                        } else {
                            f = (float) ((j - videoFrameReleaseHelper.q) * 1000);
                            f2 = videoFrameReleaseHelper.h;
                        }
                        long j17 = videoFrameReleaseHelper.p + (f / f2);
                        if (Math.abs(j14 - j17) <= 20000000) {
                            j14 = j17;
                        } else {
                            videoFrameReleaseHelper.b();
                        }
                    }
                    videoFrameReleaseHelper.l = j6;
                    videoFrameReleaseHelper.m = j14;
                    videoFrameReleaseHelper.n = j;
                    VideoFrameReleaseHelper.VSyncSampler vSyncSampler = videoFrameReleaseHelper.c;
                    if (vSyncSampler != null) {
                        long j18 = vSyncSampler.l;
                        long j19 = videoFrameReleaseHelper.c.m;
                        if (j18 != j7 && j19 != j7) {
                            long j20 = (((j14 - j18) / j19) * j19) + j18;
                            if (j14 <= j20) {
                                j8 = j20 - j19;
                            } else {
                                j20 += j19;
                                j8 = j20;
                            }
                            long j21 = j20 - j14;
                            long j22 = j14 - j8;
                            long abs = Math.abs(j21 - j22);
                            if (abs < j19 / 2) {
                                j9 = j8;
                                long j23 = j19 / 4;
                                j10 = nanoTime;
                                if (abs < j23) {
                                    long j24 = videoFrameReleaseHelper.j;
                                    if (j24 != 0) {
                                        videoFrameReleaseHelper.k = j24;
                                    } else {
                                        if (j21 < j22) {
                                            j23 = -j23;
                                        }
                                        videoFrameReleaseHelper.k = j23;
                                    }
                                } else {
                                    videoFrameReleaseHelper.k = 0L;
                                }
                            } else {
                                j9 = j8;
                                j10 = nanoTime;
                                videoFrameReleaseHelper.k = videoFrameReleaseHelper.j;
                            }
                            if (j21 + videoFrameReleaseHelper.k >= j22) {
                                j20 = j9;
                            }
                            j14 = j20 - ((j19 * 80) / 100);
                            frameReleaseInfo.b = j14;
                            j11 = (j14 - j10) / 1000;
                            frameReleaseInfo.a = j11;
                            if (this.h == j7 && !this.i) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (!this.a.T0(j11, j2, z2, z4)) {
                                return 4;
                            }
                            long j25 = frameReleaseInfo.a;
                            if (j25 < -30000 && !z2) {
                                z6 = true;
                            }
                            if (z6) {
                                if (z4) {
                                    return 3;
                                }
                                return 2;
                            }
                            if (j25 > 50000) {
                                return 5;
                            }
                            return 1;
                        }
                    }
                    j10 = nanoTime;
                    frameReleaseInfo.b = j14;
                    j11 = (j14 - j10) / 1000;
                    frameReleaseInfo.a = j11;
                    if (this.h == j7) {
                    }
                    z4 = false;
                    if (!this.a.T0(j11, j2, z2, z4)) {
                    }
                }
                z3 = false;
                if (!z3) {
                }
            }
        }
        return 3;
    }

    public final boolean b(boolean z) {
        if (z && (this.e == 3 || (this.m && !this.l))) {
            this.h = -9223372036854775807L;
            return true;
        }
        if (this.h == -9223372036854775807L) {
            return false;
        }
        ((SystemClock) this.k).getClass();
        if (android.os.SystemClock.elapsedRealtime() < this.h) {
            return true;
        }
        this.h = -9223372036854775807L;
        return false;
    }

    public final void c(boolean z) {
        long j;
        this.i = z;
        long j2 = this.c;
        if (j2 > 0) {
            ((SystemClock) this.k).getClass();
            j = android.os.SystemClock.elapsedRealtime() + j2;
        } else {
            j = -9223372036854775807L;
        }
        this.h = j;
    }

    public final void d() {
        VideoFrameReleaseHelper.VSyncSampler vSyncSampler;
        this.d = true;
        ((SystemClock) this.k).getClass();
        this.g = Util.D(android.os.SystemClock.elapsedRealtime());
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.b;
        videoFrameReleaseHelper.d = true;
        videoFrameReleaseHelper.b();
        if (!videoFrameReleaseHelper.b) {
            DisplayManager displayManager = (DisplayManager) videoFrameReleaseHelper.a.getSystemService("display");
            VideoFrameReleaseHelper.VSyncSampler vSyncSampler2 = null;
            if (displayManager != null) {
                try {
                    Choreographer choreographer = Choreographer.getInstance();
                    if (Build.VERSION.SDK_INT >= 33) {
                        vSyncSampler = new VideoFrameReleaseHelper.VSyncSamplerV33(choreographer, displayManager);
                    } else {
                        vSyncSampler = new VideoFrameReleaseHelper.VSyncSampler(choreographer, displayManager);
                    }
                    vSyncSampler2 = vSyncSampler;
                } catch (RuntimeException e) {
                    Log.g("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e);
                }
            }
            videoFrameReleaseHelper.c = vSyncSampler2;
            videoFrameReleaseHelper.b = true;
        }
        VideoFrameReleaseHelper.VSyncSampler vSyncSampler3 = videoFrameReleaseHelper.c;
        if (vSyncSampler3 != null) {
            vSyncSampler3.a();
        }
        videoFrameReleaseHelper.c(false);
    }

    public final void e(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    this.e = Math.min(this.e, 2);
                } else {
                    io.sentry.d.d();
                    return;
                }
            } else {
                this.e = 0;
            }
        } else {
            this.e = 1;
        }
        this.b.b();
    }

    public final void f(Surface surface) {
        boolean z;
        if (surface != null) {
            z = true;
        } else {
            z = false;
        }
        this.l = z;
        this.m = false;
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.b;
        if (videoFrameReleaseHelper.e != surface) {
            videoFrameReleaseHelper.a();
            videoFrameReleaseHelper.e = surface;
            videoFrameReleaseHelper.c(true);
        }
        this.e = Math.min(this.e, 1);
    }

    public final void g(float f) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        if (f == this.j) {
            return;
        }
        this.j = f;
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.b;
        videoFrameReleaseHelper.h = f;
        videoFrameReleaseHelper.c(false);
    }
}
