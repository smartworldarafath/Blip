package androidx.media3.exoplayer.analytics;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.net.Uri;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import android.util.SparseBooleanArray;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.HttpDataSource$HttpDataSourceException;
import androidx.media3.datasource.HttpDataSource$InvalidContentTypeException;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import androidx.media3.datasource.UdpDataSource;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultPlaybackSessionManager;
import androidx.media3.exoplayer.audio.AudioSink$InitializationException;
import androidx.media3.exoplayer.audio.AudioSink$WriteException;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager$MissingSchemeDataException;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.cb;
import defpackage.f3;
import defpackage.o6;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaMetricsListener implements AnalyticsListener {
    public int A;
    public boolean B;
    public final Context a;
    public final DefaultPlaybackSessionManager c;
    public final PlaybackSession d;
    public String j;
    public PlaybackMetrics.Builder k;
    public int l;
    public PlaybackException o;
    public PendingFormatUpdate p;
    public PendingFormatUpdate q;
    public PendingFormatUpdate r;
    public Format s;
    public Format t;
    public Format u;
    public boolean v;
    public int w;
    public boolean x;
    public int y;
    public int z;
    public final Executor b = BackgroundExecutor.a();
    public final Timeline.Window f = new Timeline.Window();
    public final Timeline.Period g = new Timeline.Period();
    public final HashMap i = new HashMap();
    public final HashMap h = new HashMap();
    public final long e = SystemClock.elapsedRealtime();
    public int m = 0;
    public int n = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ErrorInfo {
        public final int a;
        public final int b;

        public ErrorInfo(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PendingFormatUpdate {
        public final Format a;
        public final String b;

        public PendingFormatUpdate(Format format, String str) {
            this.a = format;
            this.b = str;
        }
    }

    public MediaMetricsListener(Context context, PlaybackSession playbackSession) {
        this.a = context.getApplicationContext();
        this.d = playbackSession;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.c = defaultPlaybackSessionManager;
        defaultPlaybackSessionManager.d = this;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void a(VideoSize videoSize) {
        PendingFormatUpdate pendingFormatUpdate = this.p;
        if (pendingFormatUpdate != null) {
            Format format = pendingFormatUpdate.a;
            if (format.x == -1) {
                Format.Builder a = format.a();
                a.v = videoSize.a;
                a.w = videoSize.b;
                this.p = new PendingFormatUpdate(new Format(a), pendingFormatUpdate.b);
            }
        }
    }

    public final boolean b(PendingFormatUpdate pendingFormatUpdate) {
        String str;
        if (pendingFormatUpdate != null) {
            String str2 = pendingFormatUpdate.b;
            DefaultPlaybackSessionManager defaultPlaybackSessionManager = this.c;
            synchronized (defaultPlaybackSessionManager) {
                str = defaultPlaybackSessionManager.f;
            }
            if (str2.equals(str)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void c() {
        long longValue;
        long longValue2;
        int i;
        PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.k;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.k.setVideoFramesDropped(this.y);
            this.k.setVideoFramesPlayed(this.z);
            Long l = (Long) this.h.get(this.j);
            PlaybackMetrics.Builder builder2 = this.k;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l2 = (Long) this.i.get(this.j);
            PlaybackMetrics.Builder builder3 = this.k;
            if (l2 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l2.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.k;
            if (l2 != null && l2.longValue() > 0) {
                i = 1;
            } else {
                i = 0;
            }
            builder4.setStreamSource(i);
            build = this.k.build();
            this.b.execute(new f3(13, this, build));
        }
        this.k = null;
        this.j = null;
        this.A = 0;
        this.y = 0;
        this.z = 0;
        this.s = null;
        this.t = null;
        this.u = null;
        this.B = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x00cd, code lost:
    
        if (r10.contains("format=m3u8-aapl") != false) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId) {
        int i;
        PlaybackMetrics.Builder builder = this.k;
        if (mediaPeriodId != null) {
            int b = timeline.b(mediaPeriodId.a);
            char c = 65535;
            if (b == -1) {
                return;
            }
            Timeline.Period period = this.g;
            int i2 = 0;
            timeline.f(b, period, false);
            int i3 = period.c;
            Timeline.Window window = this.f;
            timeline.n(i3, window);
            MediaItem.LocalConfiguration localConfiguration = window.b.b;
            int i4 = 2;
            if (localConfiguration != null) {
                Uri uri = localConfiguration.a;
                String str = localConfiguration.b;
                if (str == null) {
                    String scheme = uri.getScheme();
                    if (scheme == null || (!Ascii.a("rtsp", scheme) && !Ascii.a("rtspt", scheme))) {
                        String lastPathSegment = uri.getLastPathSegment();
                        if (lastPathSegment != null) {
                            int lastIndexOf = lastPathSegment.lastIndexOf(46);
                            if (lastIndexOf >= 0) {
                                String c2 = Ascii.c(lastPathSegment.substring(lastIndexOf + 1));
                                c2.getClass();
                                switch (c2.hashCode()) {
                                    case 104579:
                                        if (c2.equals("ism")) {
                                            c = 0;
                                            break;
                                        }
                                        break;
                                    case 108321:
                                        if (c2.equals("mpd")) {
                                            c = 1;
                                            break;
                                        }
                                        break;
                                    case 3242057:
                                        if (c2.equals("isml")) {
                                            c = 2;
                                            break;
                                        }
                                        break;
                                    case 3299913:
                                        if (c2.equals("m3u8")) {
                                            c = 3;
                                            break;
                                        }
                                        break;
                                }
                                switch (c) {
                                    case 0:
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        i = 1;
                                        break;
                                    case 1:
                                        i = 0;
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        i = 2;
                                        break;
                                    default:
                                        i = 4;
                                        break;
                                }
                                if (i != 4) {
                                    i2 = i;
                                    if (i2 == 0) {
                                        if (i2 != 1) {
                                            if (i2 != 2) {
                                                i2 = 1;
                                            } else {
                                                i2 = 4;
                                            }
                                        } else {
                                            i2 = 5;
                                        }
                                    } else {
                                        i2 = 3;
                                    }
                                }
                            }
                            Pattern pattern = Util.c;
                            String path = uri.getPath();
                            path.getClass();
                            Matcher matcher = pattern.matcher(path);
                            if (matcher.matches()) {
                                String group = matcher.group(2);
                                if (group != null) {
                                    if (!group.contains("format=mpd-time-csf")) {
                                    }
                                    if (i2 == 0) {
                                    }
                                }
                                i2 = 1;
                                if (i2 == 0) {
                                }
                            }
                        }
                        i2 = 4;
                        if (i2 == 0) {
                        }
                    }
                    i2 = 3;
                    if (i2 == 0) {
                    }
                } else {
                    switch (str.hashCode()) {
                        case -979127466:
                            if (str.equals("application/x-mpegURL")) {
                                c = 0;
                                break;
                            }
                            break;
                        case -156749520:
                            if (str.equals("application/vnd.ms-sstr+xml")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 64194685:
                            if (str.equals("application/dash+xml")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1154777587:
                            if (str.equals("application/x-rtsp")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            i2 = 2;
                            break;
                        case 1:
                            i2 = 1;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            i2 = 3;
                            break;
                        default:
                            i2 = 4;
                            break;
                    }
                    if (i2 == 0) {
                    }
                }
            }
            builder.setStreamType(i2);
            if (window.k != -9223372036854775807L && !window.i && !window.g && !window.a()) {
                builder.setMediaDurationMillis(Util.N(window.k));
            }
            if (!window.a()) {
                i4 = 1;
            }
            builder.setPlaybackType(i4);
            this.B = true;
        }
    }

    public final void e(AnalyticsListener.EventTime eventTime, String str) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if ((mediaPeriodId == null || !mediaPeriodId.c()) && str.equals(this.j)) {
            c();
        }
        this.h.remove(str);
        this.i.remove(str);
    }

    public final void f(int i, long j, Format format) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        TrackChangeEvent build;
        String str;
        timeSinceCreatedMillis = cb.m(i).setTimeSinceCreatedMillis(j - this.e);
        if (format != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(2);
            String str2 = format.o;
            if (str2 != null) {
                timeSinceCreatedMillis.setContainerMimeType(str2);
            }
            String str3 = format.p;
            if (str3 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str3);
            }
            String str4 = format.l;
            if (str4 != null) {
                timeSinceCreatedMillis.setCodecName(str4);
            }
            int i2 = format.k;
            if (i2 != -1) {
                timeSinceCreatedMillis.setBitrate(i2);
            }
            int i3 = format.w;
            if (i3 != -1) {
                timeSinceCreatedMillis.setWidth(i3);
            }
            int i4 = format.x;
            if (i4 != -1) {
                timeSinceCreatedMillis.setHeight(i4);
            }
            int i5 = format.J;
            if (i5 != -1) {
                timeSinceCreatedMillis.setChannelCount(i5);
            }
            int i6 = format.L;
            if (i6 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i6);
            }
            String str5 = format.d;
            if (str5 != null) {
                String str6 = Util.a;
                String[] split = str5.split("-", -1);
                String str7 = split[0];
                if (split.length >= 2) {
                    str = split[1];
                } else {
                    str = null;
                }
                Pair create = Pair.create(str7, str);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = format.B;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        build = timeSinceCreatedMillis.build();
        this.b.execute(new f3(10, this, build));
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void g(DecoderCounters decoderCounters) {
        this.y += decoderCounters.g;
        this.z += decoderCounters.e;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void h(PlaybackException playbackException) {
        this.o = playbackException;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void i(int i) {
        if (i == 1) {
            this.v = true;
        }
        this.l = i;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void k(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId != null) {
            Format format = mediaLoadData.c;
            format.getClass();
            Timeline timeline = eventTime.b;
            mediaPeriodId.getClass();
            PendingFormatUpdate pendingFormatUpdate = new PendingFormatUpdate(format, this.c.c(timeline, mediaPeriodId));
            int i = mediaLoadData.b;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        this.r = pendingFormatUpdate;
                        return;
                    }
                } else {
                    this.q = pendingFormatUpdate;
                    return;
                }
            }
            this.p = pendingFormatUpdate;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:194:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x05dd  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x062b A[ORIG_RETURN, RETURN] */
    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(Player player, AnalyticsListener.Events events) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        ErrorInfo errorInfo;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        PlaybackErrorEvent.Builder timeSinceCreatedMillis;
        PlaybackErrorEvent.Builder errorCode;
        PlaybackErrorEvent.Builder subErrorCode;
        PlaybackErrorEvent.Builder exception;
        PlaybackErrorEvent build;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z3;
        int i17;
        MediaMetricsListener mediaMetricsListener;
        PlaybackStateEvent.Builder state;
        PlaybackStateEvent.Builder timeSinceCreatedMillis2;
        PlaybackStateEvent build2;
        NetworkEvent.Builder networkType;
        NetworkEvent.Builder timeSinceCreatedMillis3;
        NetworkEvent build3;
        Format format;
        DrmInitData drmInitData;
        int i18;
        if (events.a.a.size() != 0) {
            int i19 = 0;
            while (true) {
                boolean z4 = true;
                if (i19 >= events.a.a.size()) {
                    break;
                }
                SparseBooleanArray sparseBooleanArray = events.a.a;
                Preconditions.h(i19, sparseBooleanArray.size());
                int keyAt = sparseBooleanArray.keyAt(i19);
                AnalyticsListener.EventTime eventTime = (AnalyticsListener.EventTime) events.b.get(keyAt);
                eventTime.getClass();
                DefaultPlaybackSessionManager defaultPlaybackSessionManager = this.c;
                if (keyAt == 0) {
                    synchronized (defaultPlaybackSessionManager) {
                        try {
                            defaultPlaybackSessionManager.d.getClass();
                            Timeline timeline = defaultPlaybackSessionManager.e;
                            defaultPlaybackSessionManager.e = eventTime.b;
                            Iterator it = defaultPlaybackSessionManager.c.values().iterator();
                            while (it.hasNext()) {
                                DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor = (DefaultPlaybackSessionManager.SessionDescriptor) it.next();
                                if (sessionDescriptor.b(timeline, defaultPlaybackSessionManager.e) && !sessionDescriptor.a(eventTime)) {
                                }
                                it.remove();
                                if (sessionDescriptor.a.equals(defaultPlaybackSessionManager.f)) {
                                    defaultPlaybackSessionManager.a(sessionDescriptor);
                                }
                                if (sessionDescriptor.e) {
                                    defaultPlaybackSessionManager.d.e(eventTime, sessionDescriptor.a);
                                }
                            }
                            defaultPlaybackSessionManager.d(eventTime);
                        } finally {
                        }
                    }
                } else if (keyAt == 11) {
                    int i20 = this.l;
                    synchronized (defaultPlaybackSessionManager) {
                        try {
                            defaultPlaybackSessionManager.d.getClass();
                            if (i20 != 0) {
                                z4 = false;
                            }
                            Iterator it2 = defaultPlaybackSessionManager.c.values().iterator();
                            while (it2.hasNext()) {
                                DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor2 = (DefaultPlaybackSessionManager.SessionDescriptor) it2.next();
                                if (sessionDescriptor2.a(eventTime)) {
                                    it2.remove();
                                    boolean equals = sessionDescriptor2.a.equals(defaultPlaybackSessionManager.f);
                                    if (equals) {
                                        defaultPlaybackSessionManager.a(sessionDescriptor2);
                                    }
                                    if (sessionDescriptor2.e) {
                                        if (z4 && equals) {
                                            boolean z5 = sessionDescriptor2.f;
                                        }
                                        defaultPlaybackSessionManager.d.e(eventTime, sessionDescriptor2.a);
                                    }
                                }
                            }
                            defaultPlaybackSessionManager.d(eventTime);
                        } finally {
                        }
                    }
                } else {
                    defaultPlaybackSessionManager.e(eventTime);
                }
                i19++;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (events.a(0)) {
                AnalyticsListener.EventTime eventTime2 = (AnalyticsListener.EventTime) events.b.get(0);
                eventTime2.getClass();
                if (this.k != null) {
                    d(eventTime2.b, eventTime2.d);
                }
            }
            if (events.a(2) && this.k != null) {
                UnmodifiableListIterator listIterator = player.z().a.listIterator(0);
                loop3: while (true) {
                    if (listIterator.hasNext()) {
                        Tracks.Group group = (Tracks.Group) listIterator.next();
                        for (int i21 = 0; i21 < group.a; i21++) {
                            if (group.e[i21] && (drmInitData = group.b.d[i21].t) != null) {
                                break loop3;
                            }
                        }
                    } else {
                        drmInitData = null;
                        break;
                    }
                }
                if (drmInitData != null) {
                    PlaybackMetrics.Builder l = o6.l(this.k);
                    int i22 = 0;
                    while (true) {
                        if (i22 < drmInitData.m) {
                            UUID uuid = drmInitData.j[i22].k;
                            if (uuid.equals(C.d)) {
                                i18 = 3;
                                break;
                            } else if (uuid.equals(C.e)) {
                                i18 = 2;
                                break;
                            } else {
                                if (uuid.equals(C.c)) {
                                    i18 = 6;
                                    break;
                                }
                                i22++;
                            }
                        } else {
                            i18 = 1;
                            break;
                        }
                    }
                    l.setDrmType(i18);
                }
            }
            if (events.a(1011)) {
                this.A++;
            }
            PlaybackException playbackException = this.o;
            if (playbackException == null) {
                i13 = 2;
                i2 = 8;
                i3 = 7;
                i4 = 6;
                i5 = 9;
                i12 = 1;
                i6 = 13;
            } else {
                int i23 = playbackException.j;
                Context context = this.a;
                if (this.w == 4) {
                    z = true;
                } else {
                    z = false;
                }
                if (i23 == 1001) {
                    errorInfo = new ErrorInfo(20, 0);
                } else {
                    if (playbackException instanceof ExoPlaybackException) {
                        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) playbackException;
                        if (exoPlaybackException.l == 1) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        i = exoPlaybackException.p;
                    } else {
                        z2 = false;
                        i = 0;
                    }
                    Throwable cause = playbackException.getCause();
                    cause.getClass();
                    int i24 = 27;
                    if (cause instanceof IOException) {
                        if (cause instanceof HttpDataSource$InvalidResponseCodeException) {
                            errorInfo = new ErrorInfo(5, ((HttpDataSource$InvalidResponseCodeException) cause).l);
                        } else {
                            if ((cause instanceof HttpDataSource$InvalidContentTypeException) || (cause instanceof ParserException)) {
                                i7 = 8;
                                i8 = 9;
                                i9 = 6;
                                i10 = 7;
                                if (z) {
                                    i11 = 10;
                                } else {
                                    i11 = 11;
                                }
                                errorInfo = new ErrorInfo(i11, 0);
                            } else {
                                boolean z6 = cause instanceof HttpDataSource$HttpDataSourceException;
                                if (z6 || (cause instanceof UdpDataSource.UdpDataSourceException)) {
                                    i8 = 9;
                                    if (NetworkTypeObserver.a(context).b() == 1) {
                                        errorInfo = new ErrorInfo(3, 0);
                                    } else {
                                        Throwable cause2 = cause.getCause();
                                        if (cause2 instanceof UnknownHostException) {
                                            errorInfo = new ErrorInfo(6, 0);
                                            i5 = 9;
                                            i4 = 6;
                                            i6 = 13;
                                            i2 = 8;
                                            i3 = 7;
                                        } else {
                                            i9 = 6;
                                            if (cause2 instanceof SocketTimeoutException) {
                                                i10 = 7;
                                                errorInfo = new ErrorInfo(7, 0);
                                            } else {
                                                i10 = 7;
                                                if (z6 && ((HttpDataSource$HttpDataSourceException) cause).k == 1) {
                                                    errorInfo = new ErrorInfo(4, 0);
                                                } else {
                                                    i7 = 8;
                                                    errorInfo = new ErrorInfo(8, 0);
                                                }
                                            }
                                            i5 = 9;
                                            i4 = 6;
                                            i3 = i10;
                                            i6 = 13;
                                            i2 = 8;
                                        }
                                        timeSinceCreatedMillis = cb.c().setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                                        errorCode = timeSinceCreatedMillis.setErrorCode(errorInfo.a);
                                        subErrorCode = errorCode.setSubErrorCode(errorInfo.b);
                                        exception = subErrorCode.setException(playbackException);
                                        build = exception.build();
                                        this.b.execute(new f3(12, this, build));
                                        i12 = 1;
                                        this.B = true;
                                        this.o = null;
                                        i13 = 2;
                                    }
                                } else if (i23 == 1002) {
                                    errorInfo = new ErrorInfo(21, 0);
                                } else if (cause instanceof DrmSession.DrmSessionException) {
                                    Throwable cause3 = cause.getCause();
                                    cause3.getClass();
                                    if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                        int q = Util.q(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                        switch (Util.p(q)) {
                                            case 6002:
                                                i24 = 24;
                                                break;
                                            case 6003:
                                                i24 = 28;
                                                break;
                                            case 6004:
                                                i24 = 25;
                                                break;
                                            case 6005:
                                                i24 = 26;
                                                break;
                                        }
                                        errorInfo = new ErrorInfo(i24, q);
                                    } else if (cause3 instanceof MediaDrmResetException) {
                                        errorInfo = new ErrorInfo(27, 0);
                                    } else if (cause3 instanceof NotProvisionedException) {
                                        errorInfo = new ErrorInfo(24, 0);
                                    } else if (cause3 instanceof DeniedByServerException) {
                                        errorInfo = new ErrorInfo(29, 0);
                                    } else if (cause3 instanceof UnsupportedDrmException) {
                                        errorInfo = new ErrorInfo(23, 0);
                                    } else if (cause3 instanceof DefaultDrmSessionManager$MissingSchemeDataException) {
                                        errorInfo = new ErrorInfo(28, 0);
                                    } else {
                                        errorInfo = new ErrorInfo(30, 0);
                                    }
                                } else if ((cause instanceof FileDataSource.FileDataSourceException) && (cause.getCause() instanceof FileNotFoundException)) {
                                    Throwable cause4 = cause.getCause();
                                    cause4.getClass();
                                    Throwable cause5 = cause4.getCause();
                                    if ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) {
                                        errorInfo = new ErrorInfo(32, 0);
                                    } else {
                                        errorInfo = new ErrorInfo(31, 0);
                                    }
                                } else {
                                    i8 = 9;
                                    errorInfo = new ErrorInfo(9, 0);
                                }
                                i5 = i8;
                                i6 = 13;
                                i2 = 8;
                                i3 = 7;
                                i4 = 6;
                                timeSinceCreatedMillis = cb.c().setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                                errorCode = timeSinceCreatedMillis.setErrorCode(errorInfo.a);
                                subErrorCode = errorCode.setSubErrorCode(errorInfo.b);
                                exception = subErrorCode.setException(playbackException);
                                build = exception.build();
                                this.b.execute(new f3(12, this, build));
                                i12 = 1;
                                this.B = true;
                                this.o = null;
                                i13 = 2;
                            }
                            i2 = i7;
                            i5 = i8;
                            i4 = i9;
                            i3 = i10;
                            i6 = 13;
                            timeSinceCreatedMillis = cb.c().setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                            errorCode = timeSinceCreatedMillis.setErrorCode(errorInfo.a);
                            subErrorCode = errorCode.setSubErrorCode(errorInfo.b);
                            exception = subErrorCode.setException(playbackException);
                            build = exception.build();
                            this.b.execute(new f3(12, this, build));
                            i12 = 1;
                            this.B = true;
                            this.o = null;
                            i13 = 2;
                        }
                    } else {
                        int i25 = 28;
                        i2 = 8;
                        i3 = 7;
                        i4 = 6;
                        i5 = 9;
                        if (z2 && (i == 0 || i == 1)) {
                            errorInfo = new ErrorInfo(35, 0);
                        } else if (z2 && i == 3) {
                            errorInfo = new ErrorInfo(15, 0);
                        } else if (z2 && i == 2) {
                            errorInfo = new ErrorInfo(23, 0);
                        } else {
                            if (cause instanceof MediaCodecRenderer.DecoderInitializationException) {
                                i6 = 13;
                                errorInfo = new ErrorInfo(13, Util.q(((MediaCodecRenderer.DecoderInitializationException) cause).m));
                            } else {
                                i6 = 13;
                                if (cause instanceof MediaCodecDecoderException) {
                                    errorInfo = new ErrorInfo(14, ((MediaCodecDecoderException) cause).j);
                                } else if (cause instanceof OutOfMemoryError) {
                                    errorInfo = new ErrorInfo(14, 0);
                                } else if (cause instanceof AudioSink$InitializationException) {
                                    errorInfo = new ErrorInfo(17, 0);
                                } else if (cause instanceof AudioSink$WriteException) {
                                    errorInfo = new ErrorInfo(18, ((AudioSink$WriteException) cause).j);
                                } else if (cause instanceof MediaCodec.CryptoException) {
                                    int errorCode2 = ((MediaCodec.CryptoException) cause).getErrorCode();
                                    switch (Util.p(errorCode2)) {
                                        case 6002:
                                            i25 = 24;
                                            break;
                                        case 6003:
                                            break;
                                        case 6004:
                                            i25 = 25;
                                            break;
                                        case 6005:
                                            i25 = 26;
                                            break;
                                        default:
                                            i25 = 27;
                                            break;
                                    }
                                    errorInfo = new ErrorInfo(i25, errorCode2);
                                } else {
                                    errorInfo = new ErrorInfo(22, 0);
                                }
                            }
                            timeSinceCreatedMillis = cb.c().setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                            errorCode = timeSinceCreatedMillis.setErrorCode(errorInfo.a);
                            subErrorCode = errorCode.setSubErrorCode(errorInfo.b);
                            exception = subErrorCode.setException(playbackException);
                            build = exception.build();
                            this.b.execute(new f3(12, this, build));
                            i12 = 1;
                            this.B = true;
                            this.o = null;
                            i13 = 2;
                        }
                        i6 = 13;
                        timeSinceCreatedMillis = cb.c().setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                        errorCode = timeSinceCreatedMillis.setErrorCode(errorInfo.a);
                        subErrorCode = errorCode.setSubErrorCode(errorInfo.b);
                        exception = subErrorCode.setException(playbackException);
                        build = exception.build();
                        this.b.execute(new f3(12, this, build));
                        i12 = 1;
                        this.B = true;
                        this.o = null;
                        i13 = 2;
                    }
                }
                i6 = 13;
                i2 = 8;
                i3 = 7;
                i4 = 6;
                i5 = 9;
                timeSinceCreatedMillis = cb.c().setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                errorCode = timeSinceCreatedMillis.setErrorCode(errorInfo.a);
                subErrorCode = errorCode.setSubErrorCode(errorInfo.b);
                exception = subErrorCode.setException(playbackException);
                build = exception.build();
                this.b.execute(new f3(12, this, build));
                i12 = 1;
                this.B = true;
                this.o = null;
                i13 = 2;
            }
            if (events.a(i13)) {
                Tracks z7 = player.z();
                boolean a = z7.a(i13);
                boolean a2 = z7.a(i12);
                boolean a3 = z7.a(3);
                if (a || a2 || a3) {
                    if (!a) {
                        format = null;
                        if (!Objects.equals(this.s, null)) {
                            this.s = null;
                            f(1, elapsedRealtime, null);
                        }
                    } else {
                        format = null;
                    }
                    if (!a2 && !Objects.equals(this.t, format)) {
                        this.t = format;
                        f(0, elapsedRealtime, format);
                    }
                    if (!a3 && !Objects.equals(this.u, format)) {
                        this.u = format;
                        f(2, elapsedRealtime, format);
                    }
                }
            }
            if (b(this.p)) {
                Format format2 = this.p.a;
                if (format2.x != -1) {
                    if (!Objects.equals(this.s, format2)) {
                        this.s = format2;
                        f(1, elapsedRealtime, format2);
                    }
                    this.p = null;
                }
            }
            if (b(this.q)) {
                Format format3 = this.q.a;
                if (!Objects.equals(this.t, format3)) {
                    this.t = format3;
                    f(0, elapsedRealtime, format3);
                }
                this.q = null;
            }
            if (b(this.r)) {
                Format format4 = this.r.a;
                if (!Objects.equals(this.u, format4)) {
                    this.u = format4;
                    f(2, elapsedRealtime, format4);
                }
                this.r = null;
            }
            switch (NetworkTypeObserver.a(this.a).b()) {
                case 0:
                    i14 = 0;
                    break;
                case 1:
                    i14 = i5;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    i14 = 2;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    i14 = 4;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    i14 = 5;
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    i14 = i4;
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                default:
                    i14 = 1;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    i14 = 3;
                    break;
                case KeyModifiers.a /* 9 */:
                    i14 = i2;
                    break;
                case KeyModifiers.b /* 10 */:
                    i14 = i3;
                    break;
            }
            if (i14 != this.n) {
                this.n = i14;
                networkType = cb.b().setNetworkType(i14);
                timeSinceCreatedMillis3 = networkType.setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                build3 = timeSinceCreatedMillis3.build();
                i15 = 11;
                this.b.execute(new f3(11, this, build3));
            } else {
                i15 = 11;
            }
            if (player.y() != 2) {
                this.v = false;
            }
            if (player.t() == null) {
                this.x = false;
                i16 = 10;
            } else {
                i16 = 10;
                if (events.a(10)) {
                    this.x = true;
                }
            }
            int y = player.y();
            if (this.v) {
                i17 = 5;
            } else {
                if (!this.x) {
                    i6 = 4;
                    if (y == 4) {
                        i17 = i15;
                    } else {
                        int i26 = 2;
                        if (y == 2) {
                            int i27 = this.m;
                            if (i27 != 0 && i27 != 2 && i27 != 12) {
                                if (!player.i()) {
                                    i17 = i3;
                                } else if (player.I() != 0) {
                                    i17 = i16;
                                } else {
                                    i17 = i4;
                                }
                            }
                            i17 = i26;
                        } else {
                            i26 = 3;
                            if (y == 3) {
                                if (player.i()) {
                                    if (player.I() != 0) {
                                        i17 = i5;
                                    }
                                    i17 = i26;
                                }
                            } else {
                                z3 = true;
                                if (y == 1 && this.m != 0) {
                                    i17 = 12;
                                } else {
                                    i17 = this.m;
                                }
                                if (this.m != i17) {
                                    this.m = i17;
                                    this.B = z3;
                                    state = cb.i().setState(this.m);
                                    timeSinceCreatedMillis2 = state.setTimeSinceCreatedMillis(elapsedRealtime - this.e);
                                    build2 = timeSinceCreatedMillis2.build();
                                    this.b.execute(new f3(14, this, build2));
                                }
                                if (!events.a(1028)) {
                                    DefaultPlaybackSessionManager defaultPlaybackSessionManager2 = this.c;
                                    AnalyticsListener.EventTime eventTime3 = (AnalyticsListener.EventTime) events.b.get(1028);
                                    eventTime3.getClass();
                                    synchronized (defaultPlaybackSessionManager2) {
                                        try {
                                            String str = defaultPlaybackSessionManager2.f;
                                            if (str != null) {
                                                DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor3 = (DefaultPlaybackSessionManager.SessionDescriptor) defaultPlaybackSessionManager2.c.get(str);
                                                sessionDescriptor3.getClass();
                                                defaultPlaybackSessionManager2.a(sessionDescriptor3);
                                            }
                                            Iterator it3 = defaultPlaybackSessionManager2.c.values().iterator();
                                            while (it3.hasNext()) {
                                                DefaultPlaybackSessionManager.SessionDescriptor sessionDescriptor4 = (DefaultPlaybackSessionManager.SessionDescriptor) it3.next();
                                                it3.remove();
                                                if (sessionDescriptor4.e && (mediaMetricsListener = defaultPlaybackSessionManager2.d) != null) {
                                                    mediaMetricsListener.e(eventTime3, sessionDescriptor4.a);
                                                }
                                            }
                                        } finally {
                                        }
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
                i17 = i6;
            }
            z3 = true;
            if (this.m != i17) {
            }
            if (!events.a(1028)) {
            }
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void m(MediaLoadData mediaLoadData) {
        this.w = mediaLoadData.a;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public final void o(AnalyticsListener.EventTime eventTime, int i, long j) {
        long longValue;
        MediaSource.MediaPeriodId mediaPeriodId = eventTime.d;
        if (mediaPeriodId != null) {
            String c = this.c.c(eventTime.b, mediaPeriodId);
            HashMap hashMap = this.i;
            Long l = (Long) hashMap.get(c);
            HashMap hashMap2 = this.h;
            Long l2 = (Long) hashMap2.get(c);
            long j2 = 0;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            hashMap.put(c, Long.valueOf(longValue + j));
            if (l2 != null) {
                j2 = l2.longValue();
            }
            hashMap2.put(c, Long.valueOf(j2 + i));
        }
    }
}
