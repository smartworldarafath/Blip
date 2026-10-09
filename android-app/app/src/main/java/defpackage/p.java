package defpackage;

import android.database.sqlite.SQLiteDatabase;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.video.FixedFrameRateEstimator;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoFrameReleaseControl;
import androidx.media3.exoplayer.video.VideoFrameReleaseHelper;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.ts.SeiReader;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.a;
import com.google.android.datatransport.runtime.scheduling.persistence.b;
import com.google.android.datatransport.runtime.scheduling.persistence.f;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.common.collect.ImmutableList;
import io.sentry.IScope;
import io.sentry.ScopeCallback;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.internal.gestures.SentryGestureListener;
import io.sentry.android.replay.capture.BaseCaptureStrategy;
import io.sentry.android.replay.capture.BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;
import io.sentry.android.replay.capture.BufferCaptureStrategy;
import io.sentry.android.replay.capture.SessionCaptureStrategy;
import io.sentry.android.replay.util.ReplayRunnable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class p implements ActivityResultCallback, Arrangement.SpacingAlignmentCalculator, ListenerSet.Event, FixedFrameRateEstimator.Listener, BinarySearchSeeker.SeekTimestampConverter, ReorderingBufferQueue.OutputConsumer, ProgressiveMediaExtractor.Factory, ObserverHandle, Consumer, SynchronizationGuard.CriticalSection, OnCompleteListener, ScopeCallback {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ p(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.j = 5;
        this.k = mediaLoadData;
    }

    @Override // androidx.compose.runtime.snapshots.ObserverHandle
    public void a() {
        Function2 function2 = (Function2) this.k;
        synchronized (SnapshotKt.c) {
            List list = SnapshotKt.h;
            list.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
            boolean z = false;
            for (Object obj : list) {
                boolean z2 = true;
                if (!z && Intrinsics.a(obj, function2)) {
                    z = true;
                    z2 = false;
                }
                if (z2) {
                    arrayList.add(obj);
                }
            }
            SnapshotKt.h = arrayList;
        }
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((ImmutableList.Builder) this.k).d((CuesWithTiming) obj);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void b(Object obj) {
        int i = this.j;
        Object obj2 = this.k;
        switch (i) {
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ((AnalyticsListener) obj).h((PlaybackException) obj2);
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((AnalyticsListener) obj).g((DecoderCounters) obj2);
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((AnalyticsListener) obj).m((MediaLoadData) obj2);
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
            default:
                ((Player.Listener) obj).f((List) obj2);
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Player.Listener) obj).c((CueGroup) obj2);
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Player.Listener) obj).d((Metadata) obj2);
                return;
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int c(int i, LayoutDirection layoutDirection) {
        return ((BiasAlignment.Horizontal) this.k).a(0, i, layoutDirection);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void d(Object obj) {
        ((Function1) ((MutableState) this.k).getValue()).b(obj);
    }

    @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
    public void e(long j, ParsableByteArray parsableByteArray) {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 11:
                CeaUtil.a(j, parsableByteArray, ((FragmentedMp4Extractor) obj).I);
                return;
            default:
                CeaUtil.a(j, parsableByteArray, ((SeiReader) obj).b);
                return;
        }
    }

    @Override // androidx.media3.extractor.BinarySearchSeeker.SeekTimestampConverter
    public long f(long j) {
        return Util.h((j * r8.e) / 1000000, 0L, ((FlacStreamMetadata) this.k).j - 1);
    }

    @Override // androidx.media3.exoplayer.video.FixedFrameRateEstimator.Listener
    public void g(float f) {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                VideoFrameReleaseHelper videoFrameReleaseHelper = ((VideoFrameReleaseControl) obj).b;
                if (videoFrameReleaseHelper.f != f) {
                    videoFrameReleaseHelper.f = f;
                    videoFrameReleaseHelper.c(false);
                    return;
                }
                return;
            default:
                MediaCodecVideoRenderer mediaCodecVideoRenderer = (MediaCodecVideoRenderer) obj;
                VideoFrameReleaseHelper videoFrameReleaseHelper2 = mediaCodecVideoRenderer.V0.b;
                if (videoFrameReleaseHelper2.f != f) {
                    videoFrameReleaseHelper2.f = f;
                    videoFrameReleaseHelper2.c(false);
                }
                mediaCodecVideoRenderer.F0(mediaCodecVideoRenderer.X);
                return;
        }
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void h(Task task) {
        ((ScheduledFuture) this.k).cancel(false);
    }

    @Override // io.sentry.ScopeCallback
    public void i(IScope iScope) {
        String str;
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 24:
                iScope.E(new n5(13, (SentryGestureListener) obj, iScope));
                return;
            case 25:
                int i2 = BufferCaptureStrategy.w;
                iScope.getClass();
                iScope.i(((BufferCaptureStrategy) obj).i());
                return;
            case 26:
                iScope.getClass();
                ((Ref$ObjectRef) obj).j = new ArrayList(iScope.r());
                return;
            case 27:
                SessionCaptureStrategy sessionCaptureStrategy = (SessionCaptureStrategy) obj;
                int i3 = SessionCaptureStrategy.u;
                iScope.getClass();
                iScope.i(sessionCaptureStrategy.i());
                String D = iScope.D();
                if (D != null) {
                    str = StringsKt.M(D, '.', D);
                } else {
                    str = null;
                }
                BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3 = sessionCaptureStrategy.l;
                KProperty kProperty = BaseCaptureStrategy.q[2];
                baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.getClass();
                kProperty.getClass();
                Object andSet = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.a.getAndSet(str);
                if (!Intrinsics.a(andSet, str)) {
                    BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.AnonymousClass2 anonymousClass2 = new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.AnonymousClass2(andSet, str, baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.c);
                    BaseCaptureStrategy baseCaptureStrategy = baseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.b;
                    SentryOptions sentryOptions = baseCaptureStrategy.a;
                    if (sentryOptions.getThreadChecker().c()) {
                        ((ScheduledExecutorService) baseCaptureStrategy.e.getValue()).submit(new ReplayRunnable(new BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3.AnonymousClass1(anonymousClass2), "CaptureStrategy.runInBackground"));
                        return;
                    }
                    try {
                        anonymousClass2.a();
                        return;
                    } catch (Throwable th) {
                        sentryOptions.getLogger().b(SentryLevel.ERROR, "Failed to execute task CaptureStrategy.runInBackground", th);
                        return;
                    }
                }
                return;
            default:
                iScope.getClass();
                ((lh) obj).b(iScope);
                return;
        }
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object m() {
        int i = this.j;
        int i2 = 1;
        int i3 = 0;
        Object obj = this.k;
        switch (i) {
            case 19:
                SQLiteEventStore sQLiteEventStore = (SQLiteEventStore) ((ClientHealthMetricsStore) obj);
                sQLiteEventStore.getClass();
                int i4 = ClientMetrics.e;
                ClientMetrics.Builder builder = new ClientMetrics.Builder();
                HashMap hashMap = new HashMap();
                SQLiteDatabase h = sQLiteEventStore.h();
                h.beginTransaction();
                try {
                    ClientMetrics clientMetrics = (ClientMetrics) SQLiteEventStore.P(h.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new b(sQLiteEventStore, hashMap, builder, i2));
                    h.setTransactionSuccessful();
                    return clientMetrics;
                } finally {
                    h.endTransaction();
                }
            case 20:
                return Integer.valueOf(((SQLiteEventStore) ((EventStore) obj)).a());
            case 21:
                SQLiteEventStore sQLiteEventStore2 = (SQLiteEventStore) ((Uploader) obj).i;
                sQLiteEventStore2.getClass();
                sQLiteEventStore2.q(new f(i3, sQLiteEventStore2));
                return null;
            default:
                WorkInitializer workInitializer = (WorkInitializer) obj;
                Iterator it = ((Iterable) ((SQLiteEventStore) workInitializer.b).q(new a(i3))).iterator();
                while (it.hasNext()) {
                    ((JobInfoScheduler) workInitializer.c).a((TransportContext) it.next(), 1, false);
                }
                return null;
        }
    }

    public /* synthetic */ p(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    public /* synthetic */ p(AnalyticsListener.EventTime eventTime, Object obj, int i) {
        this.j = i;
        this.k = obj;
    }
}
