package defpackage;

import android.content.Intent;
import android.media.AudioTrack;
import android.os.Handler;
import android.view.View;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.room.util.DBUtil;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.CancelWorkRunnable;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.firebase.messaging.EnhancedIntentService;
import io.sentry.PropagationContext;
import io.sentry.Scope;
import io.sentry.SpanContext;
import io.sentry.android.replay.screenshot.PixelCopyStrategy;
import io.sentry.android.replay.viewhierarchy.ViewHierarchyNode;
import io.sentry.cache.PersistingScopeObserver;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s3 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ s3(DefaultScheduler defaultScheduler, TransportContext transportContext, f7 f7Var, EventInternal eventInternal) {
        this.j = 3;
        this.k = defaultScheduler;
        this.l = transportContext;
        this.m = eventInternal;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z = true;
        switch (this.j) {
            case 0:
                AudioRendererEventListener.EventDispatcher eventDispatcher = (AudioRendererEventListener.EventDispatcher) this.k;
                Format format = (Format) this.l;
                DecoderReuseEvaluation decoderReuseEvaluation = (DecoderReuseEvaluation) this.m;
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.b;
                String str = Util.a;
                audioRendererEventListener.y(format, decoderReuseEvaluation);
                return;
            case 1:
                AudioTrack audioTrack = (AudioTrack) this.k;
                Handler handler = (Handler) this.l;
                ListenerSet listenerSet = (ListenerSet) this.m;
                try {
                    audioTrack.flush();
                    audioTrack.release();
                    if (handler.getLooper().getThread().isAlive()) {
                        handler.post(new e(5, listenerSet));
                    }
                    synchronized (AudioTrackAudioOutput.q) {
                        try {
                            int i = AudioTrackAudioOutput.s - 1;
                            AudioTrackAudioOutput.s = i;
                            if (i == 0) {
                                ScheduledExecutorService scheduledExecutorService = AudioTrackAudioOutput.r;
                                scheduledExecutorService.getClass();
                                scheduledExecutorService.shutdown();
                                AudioTrackAudioOutput.r = null;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Throwable th) {
                    if (handler.getLooper().getThread().isAlive()) {
                        handler.post(new e(5, listenerSet));
                    }
                    synchronized (AudioTrackAudioOutput.q) {
                        try {
                            int i2 = AudioTrackAudioOutput.s - 1;
                            AudioTrackAudioOutput.s = i2;
                            if (i2 == 0) {
                                ScheduledExecutorService scheduledExecutorService2 = AudioTrackAudioOutput.r;
                                scheduledExecutorService2.getClass();
                                scheduledExecutorService2.shutdown();
                                AudioTrackAudioOutput.r = null;
                            }
                            throw th;
                        } finally {
                        }
                    }
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                WorkDatabase workDatabase = (WorkDatabase) this.k;
                String str2 = (String) this.l;
                WorkManagerImpl workManagerImpl = (WorkManagerImpl) this.m;
                WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) workDatabase.v();
                workSpecDao_Impl.getClass();
                str2.getClass();
                Iterator it = ((List) DBUtil.b(workSpecDao_Impl.a, true, false, new q7(str2, 12))).iterator();
                while (it.hasNext()) {
                    CancelWorkRunnable.a(workManagerImpl, (String) it.next());
                }
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                DefaultScheduler defaultScheduler = (DefaultScheduler) this.k;
                TransportContext transportContext = (TransportContext) this.l;
                EventInternal eventInternal = (EventInternal) this.m;
                Logger logger = DefaultScheduler.f;
                defaultScheduler.getClass();
                Logger logger2 = DefaultScheduler.f;
                try {
                    TransportBackend a = defaultScheduler.c.a(transportContext.b());
                    if (a == null) {
                        String str3 = "Transport backend '" + transportContext.b() + "' is not registered";
                        logger2.warning(str3);
                        new IllegalArgumentException(str3);
                    } else {
                        ((SQLiteEventStore) defaultScheduler.e).E(new l7(defaultScheduler, transportContext, a.b(eventInternal)));
                    }
                    return;
                } catch (Exception e) {
                    logger2.warning("Error scheduling event " + e.getMessage());
                    return;
                }
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                EnhancedIntentService enhancedIntentService = (EnhancedIntentService) this.k;
                Intent intent = (Intent) this.l;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.m;
                int i3 = EnhancedIntentService.o;
                try {
                    enhancedIntentService.b(intent);
                    return;
                } finally {
                    taskCompletionSource.b(null);
                }
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.k;
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) this.l;
                p1 p1Var = (p1) this.m;
                if (!atomicBoolean.get()) {
                    try {
                        p1Var.a();
                        completer.a(null);
                        return;
                    } catch (Throwable th2) {
                        completer.c(th2);
                        return;
                    }
                }
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Processor processor = (Processor) this.k;
                ListenableFuture listenableFuture = (ListenableFuture) this.l;
                WorkerWrapper workerWrapper = (WorkerWrapper) this.m;
                String str4 = Processor.l;
                processor.getClass();
                try {
                    z = ((Boolean) listenableFuture.get()).booleanValue();
                } catch (InterruptedException | ExecutionException unused) {
                }
                synchronized (processor.k) {
                    try {
                        WorkGenerationalId a2 = WorkSpecKt.a(workerWrapper.a);
                        String str5 = a2.a;
                        if (processor.c(str5) == workerWrapper) {
                            processor.b(str5);
                        }
                        androidx.work.Logger.d().a(Processor.l, processor.getClass().getSimpleName() + " " + str5 + " executed; reschedule = " + z);
                        Iterator it2 = processor.j.iterator();
                        while (it2.hasNext()) {
                            ((ExecutionListener) it2.next()).b(a2, z);
                        }
                    } finally {
                    }
                }
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                VideoRendererEventListener.EventDispatcher eventDispatcher2 = (VideoRendererEventListener.EventDispatcher) this.k;
                Format format2 = (Format) this.l;
                DecoderReuseEvaluation decoderReuseEvaluation2 = (DecoderReuseEvaluation) this.m;
                VideoRendererEventListener videoRendererEventListener = eventDispatcher2.b;
                String str6 = Util.a;
                videoRendererEventListener.v(format2, decoderReuseEvaluation2);
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.k;
                CallbackToFutureAdapter.Completer completer2 = (CallbackToFutureAdapter.Completer) this.l;
                Function0 function0 = (Function0) this.m;
                if (!atomicBoolean2.get()) {
                    try {
                        completer2.a(function0.a());
                        return;
                    } catch (Throwable th3) {
                        completer2.c(th3);
                        return;
                    }
                }
                return;
            case KeyModifiers.a /* 9 */:
                ((PixelCopyStrategy) this.k).d((View) this.l, (ViewHierarchyNode) this.m);
                return;
            default:
                PersistingScopeObserver persistingScopeObserver = (PersistingScopeObserver) this.k;
                SpanContext spanContext = (SpanContext) this.l;
                Scope scope = (Scope) this.m;
                Charset charset = PersistingScopeObserver.c;
                if (spanContext == null) {
                    PropagationContext propagationContext = scope.t;
                    SpanContext spanContext2 = new SpanContext(propagationContext.a, propagationContext.b, "default", null);
                    spanContext2.r = "auto";
                    persistingScopeObserver.l(spanContext2, "trace.json");
                    return;
                }
                persistingScopeObserver.l(spanContext, "trace.json");
                return;
        }
    }

    public /* synthetic */ s3(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }
}
