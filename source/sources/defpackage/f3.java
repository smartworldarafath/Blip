package defpackage;

import android.app.job.JobParameters;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.AudioManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.view.Surface;
import android.widget.Toast;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.core.content.res.ResourcesCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.VideoSize;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.WakeLockManager;
import androidx.media3.common.util.a;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import androidx.media3.ui.PlayerView;
import androidx.room.TransactionExecutor;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.greedy.TimeLimiter;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkGenerationalId;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.ImageDownload;
import io.sentry.ISentryExecutorService;
import io.sentry.Scopes;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.ShutdownHookIntegration;
import io.sentry.util.IntegrationUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.android.HandlerContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f3 implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ f3(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = 3;
        int i2 = 0;
        switch (this.j) {
            case 0:
                Context context = (Context) this.k;
                ConditionVariable conditionVariable = (ConditionVariable) this.l;
                AudioManagerCompat.a = (AudioManager) context.getSystemService("audio");
                conditionVariable.c();
                return;
            case 1:
                AudioRendererEventListener.EventDispatcher eventDispatcher = (AudioRendererEventListener.EventDispatcher) this.k;
                String str = (String) this.l;
                AudioRendererEventListener audioRendererEventListener = eventDispatcher.b;
                String str2 = Util.a;
                audioRendererEventListener.l(str);
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AudioRendererEventListener.EventDispatcher eventDispatcher2 = (AudioRendererEventListener.EventDispatcher) this.k;
                CodecParameters codecParameters = (CodecParameters) this.l;
                AudioRendererEventListener audioRendererEventListener2 = eventDispatcher2.b;
                String str3 = Util.a;
                audioRendererEventListener2.p(codecParameters);
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                ComponentActivity componentActivity = (ComponentActivity) this.k;
                OnBackPressedDispatcher onBackPressedDispatcher = (OnBackPressedDispatcher) this.l;
                int i3 = ComponentActivity.D;
                componentActivity.j.a(new g5(i2, onBackPressedDispatcher, componentActivity));
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                List list = (List) this.k;
                ConstraintTracker constraintTracker = (ConstraintTracker) this.l;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((BaseConstraintController$track$1$listener$1) ((ConstraintListener) it.next())).a(constraintTracker.e);
                }
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                FirebaseMessaging firebaseMessaging = (FirebaseMessaging) this.k;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.l;
                try {
                    taskCompletionSource.b(firebaseMessaging.a());
                    return;
                } catch (Exception e) {
                    taskCompletionSource.a(e);
                    return;
                }
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                CancellableContinuationImpl cancellableContinuationImpl = (CancellableContinuationImpl) this.k;
                HandlerContext handlerContext = (HandlerContext) this.l;
                int i4 = HandlerContext.p;
                cancellableContinuationImpl.F(handlerContext);
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ImageDownload imageDownload = (ImageDownload) this.k;
                TaskCompletionSource taskCompletionSource2 = (TaskCompletionSource) this.l;
                try {
                    taskCompletionSource2.b(imageDownload.a());
                    return;
                } catch (Exception e2) {
                    taskCompletionSource2.a(e2);
                    return;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                JobInfoSchedulerService jobInfoSchedulerService = (JobInfoSchedulerService) this.k;
                JobParameters jobParameters = (JobParameters) this.l;
                int i5 = JobInfoSchedulerService.j;
                jobInfoSchedulerService.jobFinished(jobParameters, false);
                return;
            case KeyModifiers.a /* 9 */:
                MediaCodecRenderer mediaCodecRenderer = (MediaCodecRenderer) this.k;
                mediaCodecRenderer.M.set(mediaCodecRenderer.C((FormatHolder) this.l, mediaCodecRenderer.G, 0));
                return;
            case KeyModifiers.b /* 10 */:
                MediaMetricsListener mediaMetricsListener = (MediaMetricsListener) this.k;
                mediaMetricsListener.d.reportTrackChangeEvent((TrackChangeEvent) this.l);
                return;
            case 11:
                MediaMetricsListener mediaMetricsListener2 = (MediaMetricsListener) this.k;
                mediaMetricsListener2.d.reportNetworkEvent((NetworkEvent) this.l);
                return;
            case KeyModifiers.c /* 12 */:
                MediaMetricsListener mediaMetricsListener3 = (MediaMetricsListener) this.k;
                mediaMetricsListener3.d.reportPlaybackErrorEvent((PlaybackErrorEvent) this.l);
                return;
            case 13:
                MediaMetricsListener mediaMetricsListener4 = (MediaMetricsListener) this.k;
                mediaMetricsListener4.d.reportPlaybackMetrics((PlaybackMetrics) this.l);
                return;
            case 14:
                MediaMetricsListener mediaMetricsListener5 = (MediaMetricsListener) this.k;
                mediaMetricsListener5.d.reportPlaybackStateEvent((PlaybackStateEvent) this.l);
                return;
            case 15:
                ((Consumer) this.k).accept((MediaSourceEventListener) this.l);
                return;
            case 16:
                PlayerView.a((PlayerView) this.k, (Bitmap) this.l);
                return;
            case 17:
                Processor processor = (Processor) this.k;
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) this.l;
                synchronized (processor.k) {
                    try {
                        Iterator it2 = processor.j.iterator();
                        while (it2.hasNext()) {
                            ((ExecutionListener) it2.next()).b(workGenerationalId, false);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 18:
                ((ResourcesCompat.FontCallback) this.k).c((Typeface) this.l);
                return;
            case 19:
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) this.k;
                SurfaceTexture surfaceTexture = (SurfaceTexture) this.l;
                SurfaceTexture surfaceTexture2 = sphericalGLSurfaceView.p;
                Surface surface = sphericalGLSurfaceView.q;
                Surface surface2 = new Surface(surfaceTexture);
                sphericalGLSurfaceView.p = surfaceTexture;
                sphericalGLSurfaceView.q = surface2;
                Iterator it3 = sphericalGLSurfaceView.j.iterator();
                while (it3.hasNext()) {
                    ((SphericalGLSurfaceView.VideoSurfaceListener) it3.next()).u(surface2);
                }
                if (surfaceTexture2 != null) {
                    surfaceTexture2.release();
                }
                if (surface != null) {
                    surface.release();
                    return;
                }
                return;
            case 20:
                TimeLimiter timeLimiter = (TimeLimiter) this.k;
                timeLimiter.b.a((StartStopToken) this.l, 3);
                return;
            case 21:
                Runnable runnable = (Runnable) this.k;
                TransactionExecutor transactionExecutor = (TransactionExecutor) this.l;
                try {
                    runnable.run();
                    return;
                } finally {
                    transactionExecutor.b();
                }
            case 22:
                Toast.makeText((Context) this.k, (String) this.l, 0).show();
                return;
            case 23:
                VideoRendererEventListener.EventDispatcher eventDispatcher3 = (VideoRendererEventListener.EventDispatcher) this.k;
                String str4 = (String) this.l;
                VideoRendererEventListener videoRendererEventListener = eventDispatcher3.b;
                String str5 = Util.a;
                videoRendererEventListener.h(str4);
                return;
            case 24:
                VideoRendererEventListener.EventDispatcher eventDispatcher4 = (VideoRendererEventListener.EventDispatcher) this.k;
                VideoSize videoSize = (VideoSize) this.l;
                VideoRendererEventListener videoRendererEventListener2 = eventDispatcher4.b;
                String str6 = Util.a;
                videoRendererEventListener2.a(videoSize);
                return;
            case 25:
                VideoRendererEventListener.EventDispatcher eventDispatcher5 = (VideoRendererEventListener.EventDispatcher) this.k;
                Exception exc = (Exception) this.l;
                VideoRendererEventListener videoRendererEventListener3 = eventDispatcher5.b;
                String str7 = Util.a;
                videoRendererEventListener3.A(exc);
                return;
            case 26:
                VideoRendererEventListener.EventDispatcher eventDispatcher6 = (VideoRendererEventListener.EventDispatcher) this.k;
                CodecParameters codecParameters2 = (CodecParameters) this.l;
                VideoRendererEventListener videoRendererEventListener4 = eventDispatcher6.b;
                String str8 = Util.a;
                videoRendererEventListener4.i(codecParameters2);
                return;
            case 27:
                WakeLockManager wakeLockManager = (WakeLockManager) this.k;
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.l;
                WakeLockManager.WakeLockManagerInternal wakeLockManagerInternal = wakeLockManager.a;
                wakeLockManagerInternal.getClass();
                if (atomicBoolean.get()) {
                    new Thread(new a(i, wakeLockManagerInternal, atomicBoolean), "ExoPlayer:WakeLockManager").start();
                    return;
                }
                return;
            case 28:
                ((ISentryExecutorService) this.l).a(((Scopes) this.k).j().getShutdownTimeoutMillis());
                return;
            default:
                ShutdownHookIntegration shutdownHookIntegration = (ShutdownHookIntegration) this.k;
                SentryOptions sentryOptions = (SentryOptions) this.l;
                shutdownHookIntegration.j.addShutdownHook(shutdownHookIntegration.k);
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "ShutdownHookIntegration installed.", new Object[0]);
                IntegrationUtils.a("ShutdownHook");
                return;
        }
    }
}
