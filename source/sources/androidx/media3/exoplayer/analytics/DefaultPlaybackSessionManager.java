package androidx.media3.exoplayer.analytics;

import android.media.metrics.PlaybackMetrics;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.MediaSource;
import defpackage.cb;
import defpackage.f7;
import java.util.HashMap;
import java.util.Random;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultPlaybackSessionManager {
    public static final f7 h = new f7(11);
    public static final Random i = new Random();
    public MediaMetricsListener d;
    public String f;
    public final Timeline.Window a = new Timeline.Window();
    public final Timeline.Period b = new Timeline.Period();
    public final HashMap c = new HashMap();
    public Timeline e = Timeline.a;
    public long g = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SessionDescriptor {
        public final String a;
        public int b;
        public long c;
        public final MediaSource.MediaPeriodId d;
        public boolean e;
        public boolean f;

        public SessionDescriptor(String str, int i, MediaSource.MediaPeriodId mediaPeriodId) {
            long j;
            this.a = str;
            this.b = i;
            if (mediaPeriodId == null) {
                j = -1;
            } else {
                j = mediaPeriodId.d;
            }
            this.c = j;
            if (mediaPeriodId != null && mediaPeriodId.c()) {
                this.d = mediaPeriodId;
            }
        }

        public final boolean a(AnalyticsListener.EventTime eventTime) {
            MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
            Timeline timeline = eventTime.b;
            if (mediaPeriodId == null) {
                if (this.b != eventTime.c) {
                    return true;
                }
                return false;
            }
            long j = this.c;
            if (j != -1) {
                if (mediaPeriodId.d <= j) {
                    MediaSource.MediaPeriodId mediaPeriodId2 = this.d;
                    if (mediaPeriodId2 != null) {
                        int i = mediaPeriodId2.b;
                        int b = timeline.b(mediaPeriodId.a);
                        int b2 = timeline.b(mediaPeriodId2.a);
                        if (mediaPeriodId.d >= mediaPeriodId2.d && b >= b2) {
                            if (b <= b2) {
                                if (mediaPeriodId.c()) {
                                    int i2 = mediaPeriodId.b;
                                    int i3 = mediaPeriodId.c;
                                    if (i2 <= i) {
                                        if (i2 == i && i3 > mediaPeriodId2.c) {
                                            return true;
                                        }
                                        return false;
                                    }
                                    return true;
                                }
                                int i4 = mediaPeriodId.e;
                                if (i4 == -1 || i4 > i) {
                                    return true;
                                }
                                return false;
                            }
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
        
            if (r0 < r8.o()) goto L15;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean b(Timeline timeline, Timeline timeline2) {
            MediaSource.MediaPeriodId mediaPeriodId;
            int i = this.b;
            if (i < timeline.o()) {
                DefaultPlaybackSessionManager defaultPlaybackSessionManager = DefaultPlaybackSessionManager.this;
                Timeline.Window window = defaultPlaybackSessionManager.a;
                timeline.n(i, window);
                for (int i2 = window.l; i2 <= window.m; i2++) {
                    int b = timeline2.b(timeline.l(i2));
                    if (b != -1) {
                        i = timeline2.f(b, defaultPlaybackSessionManager.b, false).c;
                        break;
                    }
                }
                i = -1;
            }
            this.b = i;
            if (i == -1 || ((mediaPeriodId = this.d) != null && timeline2.b(mediaPeriodId.a) == -1)) {
                return false;
            }
            return true;
        }
    }

    public final void a(SessionDescriptor sessionDescriptor) {
        long j = sessionDescriptor.c;
        if (j != -1 && sessionDescriptor.e) {
            this.g = j;
        }
        this.f = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r12 != (-1)) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a0 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SessionDescriptor b(int i2, MediaSource.MediaPeriodId mediaPeriodId) {
        long j;
        long j2;
        long j3;
        HashMap hashMap = this.c;
        SessionDescriptor sessionDescriptor = null;
        long j4 = Long.MAX_VALUE;
        for (SessionDescriptor sessionDescriptor2 : hashMap.values()) {
            long j5 = sessionDescriptor2.c;
            MediaSource.MediaPeriodId mediaPeriodId2 = sessionDescriptor2.d;
            if (j5 == -1 && i2 == sessionDescriptor2.b && mediaPeriodId != null) {
                long j6 = mediaPeriodId.d;
                DefaultPlaybackSessionManager defaultPlaybackSessionManager = DefaultPlaybackSessionManager.this;
                j = -1;
                SessionDescriptor sessionDescriptor3 = (SessionDescriptor) defaultPlaybackSessionManager.c.get(defaultPlaybackSessionManager.f);
                if (sessionDescriptor3 != null) {
                    j3 = sessionDescriptor3.c;
                }
                j3 = defaultPlaybackSessionManager.g + 1;
                if (j6 >= j3) {
                    sessionDescriptor2.c = j6;
                }
            } else {
                j = -1;
            }
            if (mediaPeriodId != null) {
                long j7 = mediaPeriodId.d;
                if (j7 != j) {
                    if (mediaPeriodId2 == null) {
                        if (!mediaPeriodId.c() && j7 == sessionDescriptor2.c) {
                            j2 = sessionDescriptor2.c;
                            if (j2 != j && j2 >= j4) {
                                if (j2 == j4) {
                                    String str = Util.a;
                                    if (sessionDescriptor.d != null && mediaPeriodId2 != null) {
                                        sessionDescriptor = sessionDescriptor2;
                                    }
                                }
                            } else {
                                sessionDescriptor = sessionDescriptor2;
                                j4 = j2;
                            }
                        }
                    } else if (j7 == mediaPeriodId2.d && mediaPeriodId.b == mediaPeriodId2.b && mediaPeriodId.c == mediaPeriodId2.c) {
                        j2 = sessionDescriptor2.c;
                        if (j2 != j) {
                        }
                        sessionDescriptor = sessionDescriptor2;
                        j4 = j2;
                    }
                }
            }
            if (i2 == sessionDescriptor2.b) {
                j2 = sessionDescriptor2.c;
                if (j2 != j) {
                }
                sessionDescriptor = sessionDescriptor2;
                j4 = j2;
            }
        }
        if (sessionDescriptor == null) {
            String str2 = (String) h.get();
            SessionDescriptor sessionDescriptor4 = new SessionDescriptor(str2, i2, mediaPeriodId);
            hashMap.put(str2, sessionDescriptor4);
            return sessionDescriptor4;
        }
        return sessionDescriptor;
    }

    public final synchronized String c(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        return b(timeline.g(mediaPeriodId.a, this.b).c, mediaPeriodId).a;
    }

    public final void d(AnalyticsListener.EventTime eventTime) {
        MediaSource.MediaPeriodId mediaPeriodId;
        Timeline timeline = eventTime.b;
        int i2 = eventTime.c;
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.d;
        boolean p = timeline.p();
        String str = this.f;
        HashMap hashMap = this.c;
        if (p) {
            if (str != null) {
                SessionDescriptor sessionDescriptor = (SessionDescriptor) hashMap.get(str);
                sessionDescriptor.getClass();
                a(sessionDescriptor);
                return;
            }
            return;
        }
        SessionDescriptor sessionDescriptor2 = (SessionDescriptor) hashMap.get(str);
        this.f = b(i2, mediaPeriodId2).a;
        e(eventTime);
        if (mediaPeriodId2 != null) {
            long j = mediaPeriodId2.d;
            if (mediaPeriodId2.c()) {
                if (sessionDescriptor2 == null || sessionDescriptor2.c != j || (mediaPeriodId = sessionDescriptor2.d) == null || mediaPeriodId.b != mediaPeriodId2.b || mediaPeriodId.c != mediaPeriodId2.c) {
                    b(i2, new MediaSource.MediaPeriodId(j, mediaPeriodId2.a));
                    this.d.getClass();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void e(AnalyticsListener.EventTime eventTime) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        long j;
        this.d.getClass();
        if (eventTime.b.p()) {
            return;
        }
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId != null) {
            long j2 = mediaPeriodId.d;
            if (j2 != -1) {
                SessionDescriptor sessionDescriptor = (SessionDescriptor) this.c.get(this.f);
                if (sessionDescriptor != null) {
                    j = sessionDescriptor.c;
                    if (j != -1) {
                        if (j2 < j) {
                            return;
                        }
                    }
                }
                j = this.g + 1;
                if (j2 < j) {
                }
            }
            SessionDescriptor sessionDescriptor2 = (SessionDescriptor) this.c.get(this.f);
            if (sessionDescriptor2 != null && sessionDescriptor2.c == -1 && sessionDescriptor2.b != eventTime.c) {
                return;
            }
        }
        SessionDescriptor b = b(eventTime.c, eventTime.d);
        if (this.f == null) {
            this.f = b.a;
        }
        MediaSource.MediaPeriodId mediaPeriodId2 = eventTime.d;
        if (mediaPeriodId2 != null && mediaPeriodId2.c()) {
            MediaSource.MediaPeriodId mediaPeriodId3 = eventTime.d;
            Object obj = mediaPeriodId3.a;
            SessionDescriptor b2 = b(eventTime.c, new MediaSource.MediaPeriodId(mediaPeriodId3.b, mediaPeriodId3.d, obj));
            if (!b2.e) {
                b2.e = true;
                eventTime.b.g(eventTime.d.a, this.b);
                this.b.d(eventTime.d.b);
                Math.max(0L, Util.N(0L) + Util.N(this.b.e));
                this.d.getClass();
            }
        }
        if (!b.e) {
            b.e = true;
            this.d.getClass();
        }
        if (b.a.equals(this.f) && !b.f) {
            b.f = true;
            MediaMetricsListener mediaMetricsListener = this.d;
            String str = b.a;
            mediaMetricsListener.getClass();
            MediaSource.MediaPeriodId mediaPeriodId4 = eventTime.d;
            if (mediaPeriodId4 == null || !mediaPeriodId4.c()) {
                mediaMetricsListener.c();
                mediaMetricsListener.j = str;
                playerName = cb.g().setPlayerName("AndroidXMedia3");
                playerVersion = playerName.setPlayerVersion("1.11.0");
                mediaMetricsListener.k = playerVersion;
                mediaMetricsListener.d(eventTime.b, eventTime.d);
            }
        }
    }
}
