package io.sentry.android.core;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.DataCategory;
import io.sentry.IConnectionStatusProvider;
import io.sentry.IScopes;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ProfileChunk;
import io.sentry.SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.SystemEventsBreadcrumbsIntegration;
import io.sentry.transport.RateLimiter;
import io.sentry.util.IntegrationUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ m(SystemEventsBreadcrumbsIntegration systemEventsBreadcrumbsIntegration, IScopes iScopes, SentryAndroidOptions sentryAndroidOptions) {
        this.j = 1;
        this.m = systemEventsBreadcrumbsIntegration;
        this.k = iScopes;
        this.l = sentryAndroidOptions;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.lang.Runnable
    public final void run() {
        ISentryLifecycleToken a;
        switch (this.j) {
            case 0:
                SendCachedEnvelopeIntegration sendCachedEnvelopeIntegration = (SendCachedEnvelopeIntegration) this.m;
                SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) this.l;
                IScopes iScopes = (IScopes) this.k;
                try {
                    if (sendCachedEnvelopeIntegration.r.get()) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "SendCachedEnvelopeIntegration, not trying to send after closing.", new Object[0]);
                        return;
                    }
                    if (!sendCachedEnvelopeIntegration.q.getAndSet(true)) {
                        IConnectionStatusProvider connectionStatusProvider = sentryAndroidOptions.getConnectionStatusProvider();
                        sendCachedEnvelopeIntegration.m = connectionStatusProvider;
                        connectionStatusProvider.s0(sendCachedEnvelopeIntegration);
                        sendCachedEnvelopeIntegration.p = sendCachedEnvelopeIntegration.j.a(iScopes, sentryAndroidOptions);
                    }
                    IConnectionStatusProvider iConnectionStatusProvider = sendCachedEnvelopeIntegration.m;
                    if (iConnectionStatusProvider != null && iConnectionStatusProvider.p0() == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "SendCachedEnvelopeIntegration, no connection.", new Object[0]);
                        return;
                    }
                    RateLimiter d = iScopes.d();
                    if (d != null && d.h(DataCategory.All)) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "SendCachedEnvelopeIntegration, rate limiting active.", new Object[0]);
                        return;
                    }
                    SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget sendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget = sendCachedEnvelopeIntegration.p;
                    if (sendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget == null) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "SendCachedEnvelopeIntegration factory is null.", new Object[0]);
                        return;
                    } else {
                        ((io.sentry.e) sendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget).a();
                        return;
                    }
                } catch (Throwable th) {
                    sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed trying to send cached events.", th);
                    return;
                }
            case 1:
                SystemEventsBreadcrumbsIntegration systemEventsBreadcrumbsIntegration = (SystemEventsBreadcrumbsIntegration) this.m;
                IScopes iScopes2 = (IScopes) this.k;
                SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) this.l;
                a = systemEventsBreadcrumbsIntegration.t.a();
                try {
                    if (!systemEventsBreadcrumbsIntegration.o && !systemEventsBreadcrumbsIntegration.p && systemEventsBreadcrumbsIntegration.k == null) {
                        systemEventsBreadcrumbsIntegration.k = new SystemEventsBreadcrumbsIntegration.SystemEventsBroadcastReceiver(iScopes2, sentryAndroidOptions2);
                        if (systemEventsBreadcrumbsIntegration.q == null) {
                            systemEventsBreadcrumbsIntegration.q = new IntentFilter();
                            for (String str : systemEventsBreadcrumbsIntegration.n) {
                                systemEventsBreadcrumbsIntegration.q.addAction(str);
                            }
                        }
                        if (systemEventsBreadcrumbsIntegration.r == null) {
                            systemEventsBreadcrumbsIntegration.r = new HandlerThread("SystemEventsReceiver", 10);
                            systemEventsBreadcrumbsIntegration.r.start();
                        }
                        try {
                            Handler handler = new Handler(systemEventsBreadcrumbsIntegration.r.getLooper());
                            Context context = systemEventsBreadcrumbsIntegration.j;
                            SystemEventsBreadcrumbsIntegration.SystemEventsBroadcastReceiver systemEventsBroadcastReceiver = systemEventsBreadcrumbsIntegration.k;
                            IntentFilter intentFilter = systemEventsBreadcrumbsIntegration.q;
                            new BuildInfoProvider(sentryAndroidOptions2.getLogger());
                            if (Build.VERSION.SDK_INT >= 33) {
                                context.registerReceiver(systemEventsBroadcastReceiver, intentFilter, null, handler, 4);
                            } else {
                                context.registerReceiver(systemEventsBroadcastReceiver, intentFilter, null, handler);
                            }
                            if (!systemEventsBreadcrumbsIntegration.s.getAndSet(true)) {
                                sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "SystemEventsBreadcrumbsIntegration installed.", new Object[0]);
                                IntegrationUtils.a("SystemEventsBreadcrumbs");
                            }
                        } catch (Throwable th2) {
                            sentryAndroidOptions2.setEnableSystemEventBreadcrumbs(false);
                            sentryAndroidOptions2.getLogger().b(SentryLevel.ERROR, "Failed to initialize SystemEventsBreadcrumbsIntegration.", th2);
                        }
                    }
                    a.close();
                    return;
                } finally {
                    try {
                        a.close();
                        throw th;
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ActivityFramesTracker activityFramesTracker = (ActivityFramesTracker) this.m;
                Runnable runnable = (Runnable) this.l;
                String str2 = (String) this.k;
                try {
                    runnable.run();
                    return;
                } catch (Throwable unused) {
                    if (str2 != null) {
                        activityFramesTracker.b.getLogger().c(SentryLevel.WARNING, "Failed to execute ".concat(str2), new Object[0]);
                        return;
                    }
                    return;
                }
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AndroidContinuousProfiler androidContinuousProfiler = (AndroidContinuousProfiler) this.m;
                SentryOptions sentryOptions = (SentryOptions) this.l;
                IScopes iScopes3 = (IScopes) this.k;
                ArrayList arrayList = androidContinuousProfiler.v;
                if (!androidContinuousProfiler.y.get()) {
                    ArrayList arrayList2 = new ArrayList(arrayList.size());
                    a = androidContinuousProfiler.F.a();
                    try {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ProfileChunk.Builder builder = (ProfileChunk.Builder) it.next();
                            arrayList2.add(new ProfileChunk(builder.a, builder.b, builder.d, builder.c, Double.valueOf(builder.e), builder.f, sentryOptions));
                        }
                        arrayList.clear();
                        a.close();
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            iScopes3.h((ProfileChunk) it2.next());
                        }
                        return;
                    } catch (Throwable th4) {
                    }
                } else {
                    return;
                }
            default:
                EnvelopeFileObserverIntegration envelopeFileObserverIntegration = (EnvelopeFileObserverIntegration) this.m;
                SentryOptions sentryOptions2 = (SentryOptions) this.l;
                String str3 = (String) this.k;
                ISentryLifecycleToken a2 = envelopeFileObserverIntegration.m.a();
                try {
                    if (!envelopeFileObserverIntegration.l) {
                        envelopeFileObserverIntegration.a(sentryOptions2, str3);
                    }
                    a2.close();
                    return;
                } finally {
                    try {
                        a2.close();
                        throw th;
                    } catch (Throwable th5) {
                        th.addSuppressed(th5);
                    }
                }
        }
    }

    public /* synthetic */ m(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.m = obj;
        this.l = obj2;
        this.k = obj3;
    }
}
