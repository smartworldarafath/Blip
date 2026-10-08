package androidx.media3.common.util;

import androidx.media3.common.BasePlayer;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StuckPlayerDetector {
    public final Player a;
    public final Player.Listener b;
    public final Callback c;
    public final Clock d;
    public final Timeline.Period e = new Timeline.Period();
    public final HandlerWrapper f;
    public final StuckBufferingDetector g;
    public final StuckPlayingDetector h;
    public final StuckPlayingNotEndingDetector i;
    public final StuckSuppressedDetector j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Callback {
        void t(StuckPlayerException stuckPlayerException);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StuckBufferingDetector {
        public final int a;
        public Object b;
        public int c;
        public int d;
        public long e;
        public long f;
        public boolean g;
        public long h;

        public StuckBufferingDetector(int i) {
            this.a = i;
        }

        public final void a() {
            Object l;
            int i;
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f;
            Player player = stuckPlayerDetector.a;
            if (player.y() == 2 && player.i() && player.I() == 0) {
                Timeline K = player.K();
                if (K.p()) {
                    l = null;
                } else {
                    l = K.l(player.l());
                }
                int C = player.C();
                int q = player.q();
                long x = player.x();
                long max = Math.max(0L, player.g() - Math.max(0L, x - player.S()));
                if (l != null && C == -1) {
                    x -= Util.N(K.g(l, stuckPlayerDetector.e).e);
                }
                ((SystemClock) stuckPlayerDetector.d).getClass();
                long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                boolean z = this.g;
                int i2 = this.a;
                if (z && Objects.equals(l, this.b) && C == this.c && q == this.d) {
                    i = C;
                    if (x == this.e && max == this.f) {
                        if (elapsedRealtime - this.h >= i2) {
                            stuckPlayerDetector.c.t(new StuckPlayerException(1, i2));
                            return;
                        }
                        return;
                    }
                } else {
                    i = C;
                }
                this.g = true;
                this.h = elapsedRealtime;
                this.b = l;
                this.c = i;
                this.d = q;
                this.e = x;
                this.f = max;
                ((SystemHandlerWrapper) handlerWrapper).j(1);
                ((SystemHandlerWrapper) handlerWrapper).a.sendEmptyMessageDelayed(1, i2);
                return;
            }
            if (this.g) {
                ((SystemHandlerWrapper) handlerWrapper).j(1);
            }
            this.g = false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StuckPlayingDetector {
        public final int a;
        public Object b;
        public int c;
        public int d;
        public long e;
        public boolean f;
        public long g;

        public StuckPlayingDetector(int i) {
            this.a = i;
        }

        public final void a() {
            Object l;
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f;
            Player player = stuckPlayerDetector.a;
            if (!((BasePlayer) player).X()) {
                if (this.f) {
                    ((SystemHandlerWrapper) handlerWrapper).j(2);
                }
                this.f = false;
                return;
            }
            Timeline K = player.K();
            if (K.p()) {
                l = null;
            } else {
                l = K.l(player.l());
            }
            int C = player.C();
            int q = player.q();
            long S = player.S();
            if (l != null && C == -1) {
                S -= Util.N(K.g(l, stuckPlayerDetector.e).e);
            }
            ((SystemClock) stuckPlayerDetector.d).getClass();
            long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
            boolean z = this.f;
            int i = this.a;
            if (z && Objects.equals(l, this.b) && C == this.c && q == this.d && S == this.e) {
                if (elapsedRealtime - this.g >= i) {
                    stuckPlayerDetector.c.t(new StuckPlayerException(2, i));
                    return;
                }
                return;
            }
            this.f = true;
            this.g = elapsedRealtime;
            this.b = l;
            this.c = C;
            this.d = q;
            this.e = S;
            ((SystemHandlerWrapper) handlerWrapper).j(2);
            ((SystemHandlerWrapper) handlerWrapper).a.sendEmptyMessageDelayed(2, i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StuckPlayingNotEndingDetector {
        public final int a;
        public Object b;
        public int c;
        public int d;
        public boolean e;
        public long f;

        public StuckPlayingNotEndingDetector(int i) {
            this.a = i;
        }

        public final void a() {
            Object l;
            long j;
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            Timeline.Period period = stuckPlayerDetector.e;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f;
            Player player = stuckPlayerDetector.a;
            Timeline K = player.K();
            if (K.p()) {
                l = null;
            } else {
                l = K.l(player.l());
            }
            int C = player.C();
            int q = player.q();
            long S = player.S();
            if (l != null && C == -1) {
                K.g(l, period);
                S -= Util.N(period.e);
                j = Util.N(period.d);
            } else if (C != -1) {
                j = player.getDuration();
            } else {
                j = -9223372036854775807L;
            }
            boolean X = ((BasePlayer) player).X();
            if (X && j != -9223372036854775807L && S >= j) {
                ((SystemClock) stuckPlayerDetector.d).getClass();
                long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                boolean z = this.e;
                int i = this.a;
                if (z && Objects.equals(l, this.b) && C == this.c && q == this.d) {
                    if (elapsedRealtime - this.f >= i) {
                        stuckPlayerDetector.c.t(new StuckPlayerException(3, i));
                        return;
                    }
                    return;
                }
                this.e = true;
                this.f = elapsedRealtime;
                this.b = l;
                this.c = C;
                this.d = q;
                ((SystemHandlerWrapper) handlerWrapper).j(3);
                ((SystemHandlerWrapper) handlerWrapper).a.sendEmptyMessageDelayed(3, i);
                return;
            }
            ((SystemHandlerWrapper) handlerWrapper).j(3);
            if (X && j != -9223372036854775807L) {
                ((SystemHandlerWrapper) handlerWrapper).a.sendEmptyMessageDelayed(3, (int) Math.ceil(((float) (j - S)) / player.e().a));
            }
            this.e = false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class StuckSuppressedDetector {
        public final int a;
        public int b;
        public boolean c;
        public long d;

        public StuckSuppressedDetector(int i) {
            this.a = i;
        }

        public final void a() {
            StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
            HandlerWrapper handlerWrapper = stuckPlayerDetector.f;
            Player player = stuckPlayerDetector.a;
            int I = player.I();
            if (player.i() && player.y() != 1 && player.y() != 4 && I != 0 && I != 1) {
                ((SystemClock) stuckPlayerDetector.d).getClass();
                long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                boolean z = this.c;
                int i = this.a;
                if (z && this.b == I) {
                    if (elapsedRealtime - this.d >= i) {
                        stuckPlayerDetector.c.t(new StuckPlayerException(4, i));
                        return;
                    }
                    return;
                } else {
                    this.c = true;
                    this.d = elapsedRealtime;
                    this.b = I;
                    ((SystemHandlerWrapper) handlerWrapper).j(4);
                    ((SystemHandlerWrapper) handlerWrapper).a.sendEmptyMessageDelayed(4, i);
                    return;
                }
            }
            if (this.c) {
                ((SystemHandlerWrapper) handlerWrapper).j(4);
            }
            this.c = false;
        }
    }

    public StuckPlayerDetector(Player player, Callback callback, SystemClock systemClock, int i, int i2, int i3, int i4) {
        this.a = player;
        this.c = callback;
        this.d = systemClock;
        this.f = systemClock.a(player.L(), new b(1, this));
        this.g = new StuckBufferingDetector(i);
        this.h = new StuckPlayingDetector(i2);
        this.i = new StuckPlayingNotEndingDetector(i3);
        this.j = new StuckSuppressedDetector(i4);
        Player.Listener listener = new Player.Listener() { // from class: androidx.media3.common.util.StuckPlayerDetector.1
            @Override // androidx.media3.common.Player.Listener
            public final void k(Player.Events events) {
                StuckPlayerDetector stuckPlayerDetector = StuckPlayerDetector.this;
                stuckPlayerDetector.g.a();
                stuckPlayerDetector.h.a();
                stuckPlayerDetector.i.a();
                stuckPlayerDetector.j.a();
            }
        };
        this.b = listener;
        player.H(listener);
    }

    public final void a() {
        ((SystemHandlerWrapper) this.f).f();
        this.a.B(this.b);
    }
}
