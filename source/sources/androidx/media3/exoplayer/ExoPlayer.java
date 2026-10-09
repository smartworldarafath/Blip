package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Player;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.image.ImageOutput;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import defpackage.e3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ExoPlayer extends Player {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface AudioOffloadListener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public static final int C;
        public static final boolean D;
        public final boolean A;
        public final boolean B;
        public final Context a;
        public final SystemClock b;
        public final e3 c;
        public final e3 d;
        public final e3 e;
        public final e3 f;
        public final Looper g;
        public final int h;
        public final AudioAttributes i;
        public final int j;
        public final boolean k;
        public final SeekParameters l;
        public final ScrubbingModeParameters m;
        public final long n;
        public final long o;
        public final long p;
        public final DefaultLivePlaybackSpeedControl q;
        public final long r;
        public final long s;
        public final int t;
        public final int u;
        public final int v;
        public final int w;
        public final boolean x;
        public boolean y;
        public final String z;

        static {
            int i;
            String str = Util.a;
            String c = Ascii.c(Build.DEVICE);
            if (!c.contains("emulator") && !c.contains("emu64a") && !c.contains("emu64x") && !c.contains("generic") && !c.contains("vsoc")) {
                i = 10000;
            } else {
                i = 30000;
            }
            C = i;
            D = true;
        }

        public Builder(Context context) {
            int i;
            e3 e3Var = new e3(context, 1);
            e3 e3Var2 = new e3(context, 2);
            e3 e3Var3 = new e3(context, 3);
            e3 e3Var4 = new e3(context, 4);
            context.getClass();
            this.a = context;
            this.c = e3Var;
            this.d = e3Var2;
            this.e = e3Var3;
            this.f = e3Var4;
            String str = Util.a;
            Looper myLooper = Looper.myLooper();
            this.g = myLooper == null ? Looper.getMainLooper() : myLooper;
            this.i = AudioAttributes.b;
            this.j = 1;
            this.k = true;
            this.l = SeekParameters.e;
            this.n = 5000L;
            this.o = 15000L;
            this.p = 3000L;
            this.m = ScrubbingModeParameters.g;
            this.q = new DefaultLivePlaybackSpeedControl(Util.D(20L), Util.D(500L), 0.999f);
            this.b = Clock.a;
            this.r = 500L;
            this.s = 2000L;
            this.t = 600000;
            boolean z = D;
            if (z) {
                i = C;
            } else {
                i = Integer.MAX_VALUE;
            }
            this.u = i;
            this.v = z ? 60000 : Integer.MAX_VALUE;
            this.w = 600000;
            this.x = true;
            this.z = "";
            this.h = -1000;
            if (Build.VERSION.SDK_INT >= 35) {
            }
            this.A = true;
            this.B = true;
        }

        public final ExoPlayer a() {
            Preconditions.n(!this.y);
            this.y = true;
            return new ExoPlayerImpl(this);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class PreloadConfiguration {
        public static final PreloadConfiguration a = new Object();
    }

    void M(AnalyticsListener analyticsListener);

    void a();

    void b(ProgressiveMediaSource progressiveMediaSource);

    void d();

    boolean isScrubbingModeEnabled();

    void p(SeekParameters seekParameters);

    void s();

    void setImageOutput(ImageOutput imageOutput);

    void setScrubbingModeEnabled(boolean z);
}
