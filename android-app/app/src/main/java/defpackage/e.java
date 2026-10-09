package defpackage;

import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.SystemClock;
import android.os.Trace;
import android.view.ActionMode;
import android.view.Surface;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.activity.ComponentDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.material.ripple.RippleHostView;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.media3.common.audio.AudioBecomingNoisyManager;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.exoplayer.audio.a;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.exoplayer.trackselection.TrackSelector;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import androidx.media3.ui.DefaultTimeBar;
import androidx.media3.ui.PlayerControlView;
import androidx.media3.ui.PlayerView;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.common.collect.Ordering;
import io.sentry.android.core.anr.AnrProfilingIntegration;
import io.sentry.android.core.internal.modules.AssetsModulesLoader;
import io.sentry.android.ndk.NdkScopeObserver;
import io.sentry.android.replay.screenshot.PixelCopyStrategy;
import io.sentry.logger.LoggerBatchProcessor;
import io.sentry.metrics.MetricsBatchProcessor;
import io.sentry.ndk.NativeScope;
import java.util.Iterator;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ e(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SpatializerWrapper spatializerWrapper;
        TrackSelector.InvalidationListener invalidationListener;
        int i = this.j;
        int i2 = 1;
        Object obj = this.k;
        switch (i) {
            case 0:
                int i3 = AbstractComposeView.s;
                ((AbstractComposeView) obj).b();
                return;
            case 1:
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = (AndroidComposeViewAccessibilityDelegateCompat) obj;
                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.W;
                Trace.beginSection("Compose:semantics:measureAndLayout");
                try {
                    androidComposeViewAccessibilityDelegateCompat.m.r(true);
                    Trace.endSection();
                    Trace.beginSection("Compose:semantics:checkForSemanticsChanges");
                    try {
                        androidComposeViewAccessibilityDelegateCompat.n();
                        Trace.endSection();
                        androidComposeViewAccessibilityDelegateCompat.R = false;
                        return;
                    } finally {
                    }
                } finally {
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ActionMode actionMode = ((AndroidTextContextMenuToolbarProvider) obj).h;
                if (actionMode != null) {
                    actionMode.finish();
                    return;
                }
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AudioBecomingNoisyManager audioBecomingNoisyManager = (AudioBecomingNoisyManager) obj;
                audioBecomingNoisyManager.a.unregisterReceiver(audioBecomingNoisyManager.b);
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                ((AudioCapabilitiesReceiver) obj).c();
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ListenerSet listenerSet = (ListenerSet) obj;
                listenerSet.getClass();
                if (Thread.currentThread() == listenerSet.a) {
                    listenerSet.f(-1, new a(i2));
                    return;
                }
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ComponentDialog.c((ComponentDialog) obj);
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) obj;
                defaultAnalyticsCollector.N(defaultAnalyticsCollector.G(), 1028, new b7(10));
                defaultAnalyticsCollector.o.d();
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                int i4 = DefaultTimeBar.b0;
                ((DefaultTimeBar) obj).d(false);
                return;
            case KeyModifiers.a /* 9 */:
                DefaultTrackSelector defaultTrackSelector = (DefaultTrackSelector) obj;
                Ordering ordering = DefaultTrackSelector.k;
                if (defaultTrackSelector.f.B && Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = defaultTrackSelector.h) != null && spatializerWrapper.b && (invalidationListener = defaultTrackSelector.a) != null) {
                    invalidationListener.a(null);
                    return;
                }
                return;
            case KeyModifiers.b /* 10 */:
                Job job = (Job) obj;
                if (job != null) {
                    job.n(null);
                    return;
                }
                return;
            case 11:
                ((PlaybackVideoGraphWrapper) obj).m--;
                return;
            case KeyModifiers.c /* 12 */:
                float[] fArr = PlayerControlView.Q0;
                ((PlayerControlView) obj).s();
                return;
            case 13:
                ((PlayerView) obj).invalidate();
                return;
            case 14:
                ProcessLifecycleOwner processLifecycleOwner = (ProcessLifecycleOwner) obj;
                LifecycleRegistry lifecycleRegistry = processLifecycleOwner.o;
                if (processLifecycleOwner.k == 0) {
                    processLifecycleOwner.l = true;
                    lifecycleRegistry.e(Lifecycle.Event.ON_PAUSE);
                }
                if (processLifecycleOwner.j == 0 && processLifecycleOwner.l) {
                    lifecycleRegistry.e(Lifecycle.Event.ON_STOP);
                    processLifecycleOwner.m = true;
                    return;
                }
                return;
            case 15:
                RippleHostView.a((RippleHostView) obj);
                return;
            case 16:
                View view = (View) obj;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                return;
            case 17:
                SphericalGLSurfaceView sphericalGLSurfaceView = (SphericalGLSurfaceView) obj;
                Surface surface = sphericalGLSurfaceView.q;
                if (surface != null) {
                    Iterator it = sphericalGLSurfaceView.j.iterator();
                    while (it.hasNext()) {
                        ((SphericalGLSurfaceView.VideoSurfaceListener) it.next()).r();
                    }
                }
                SurfaceTexture surfaceTexture = sphericalGLSurfaceView.p;
                if (surfaceTexture != null) {
                    surfaceTexture.release();
                }
                if (surface != null) {
                    surface.release();
                }
                sphericalGLSurfaceView.p = null;
                sphericalGLSurfaceView.q = null;
                return;
            case 18:
                ((Toolbar) obj).l();
                return;
            case 19:
                WorkInitializer workInitializer = (WorkInitializer) obj;
                ((SQLiteEventStore) workInitializer.d).E(new p(23, workInitializer));
                return;
            case 20:
                ((AnrProfilingIntegration) obj).n = SystemClock.uptimeMillis();
                return;
            case 21:
                int i5 = AssetsModulesLoader.f;
                ((AssetsModulesLoader) obj).a();
                return;
            case 22:
                ((NdkScopeObserver) obj).b.getClass();
                NativeScope.nativeClearAttachments();
                return;
            case 23:
                PixelCopyStrategy pixelCopyStrategy = (PixelCopyStrategy) obj;
                if (!pixelCopyStrategy.g.isRecycled()) {
                    synchronized (pixelCopyStrategy.g) {
                        if (!pixelCopyStrategy.g.isRecycled()) {
                            pixelCopyStrategy.g.recycle();
                        }
                    }
                }
                pixelCopyStrategy.j.close();
                return;
            case 24:
                LoggerBatchProcessor loggerBatchProcessor = (LoggerBatchProcessor) obj;
                loggerBatchProcessor.m.a(loggerBatchProcessor.j.getShutdownTimeoutMillis());
                return;
            default:
                MetricsBatchProcessor metricsBatchProcessor = (MetricsBatchProcessor) obj;
                metricsBatchProcessor.m.a(metricsBatchProcessor.j.getShutdownTimeoutMillis());
                return;
        }
    }
}
