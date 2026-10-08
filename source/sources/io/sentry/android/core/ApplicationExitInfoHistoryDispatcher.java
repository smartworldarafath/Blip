package io.sentry.android.core;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import io.sentry.Hint;
import io.sentry.ScopesAdapter;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.cache.EnvelopeCache;
import io.sentry.cache.IEnvelopeCache;
import io.sentry.hints.BlockingFlushHint;
import io.sentry.protocol.SentryId;
import io.sentry.transport.CurrentDateProvider;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ApplicationExitInfoHistoryDispatcher implements Runnable {
    public final Context j;
    public final ScopesAdapter k;
    public final SentryAndroidOptions l;
    public final ApplicationExitInfoPolicy m;
    public final long n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ApplicationExitInfoPolicy {
        int a();

        Long b();

        String c();

        boolean d();

        Report e(ApplicationExitInfo applicationExitInfo, boolean z);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Report {
        public final SentryEvent a;
        public final Hint b;
        public final BlockingFlushHint c;

        public Report(SentryEvent sentryEvent, Hint hint, BlockingFlushHint blockingFlushHint) {
            this.a = sentryEvent;
            this.b = hint;
            this.c = blockingFlushHint;
        }
    }

    public ApplicationExitInfoHistoryDispatcher(Context context, SentryAndroidOptions sentryAndroidOptions, CurrentDateProvider currentDateProvider, ApplicationExitInfoPolicy applicationExitInfoPolicy) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = ScopesAdapter.a;
        this.l = sentryAndroidOptions;
        this.m = applicationExitInfoPolicy;
        currentDateProvider.getClass();
        this.n = System.currentTimeMillis() - 7862400000L;
    }

    public final void a(ApplicationExitInfo applicationExitInfo, boolean z) {
        ApplicationExitInfoPolicy applicationExitInfoPolicy = this.m;
        Report e = applicationExitInfoPolicy.e(applicationExitInfo, z);
        if (e != null) {
            SentryEvent sentryEvent = e.a;
            if (!this.k.x(sentryEvent, e.b).equals(SentryId.k) && !e.c.e()) {
                this.l.getLogger().c(SentryLevel.WARNING, "Timed out waiting to flush %s event to disk. Event: %s", applicationExitInfoPolicy.c(), sentryEvent.j);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        List historicalProcessExitReasons;
        ApplicationExitInfo applicationExitInfo;
        long timestamp;
        int reason;
        long timestamp2;
        long timestamp3;
        long timestamp4;
        int reason2;
        ActivityManager activityManager = (ActivityManager) this.j.getSystemService("activity");
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (activityManager != null) {
            historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.isEmpty()) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "No records in historical exit reasons.", new Object[0]);
                return;
            }
            IEnvelopeCache envelopeDiskCache = sentryAndroidOptions.getEnvelopeDiskCache();
            if ((envelopeDiskCache instanceof EnvelopeCache) && sentryAndroidOptions.isEnableAutoSessionTracking()) {
                EnvelopeCache envelopeCache = (EnvelopeCache) envelopeDiskCache;
                if (!envelopeCache.g()) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Timed out waiting to flush previous session to its own file.", new Object[0]);
                    envelopeCache.o.countDown();
                }
            }
            ArrayList arrayList = new ArrayList(historicalProcessExitReasons);
            ApplicationExitInfoPolicy applicationExitInfoPolicy = this.m;
            Long b = applicationExitInfoPolicy.b();
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    applicationExitInfo = defpackage.j.e(it.next());
                    reason2 = applicationExitInfo.getReason();
                    if (reason2 == applicationExitInfoPolicy.a()) {
                        it.remove();
                        break;
                    }
                } else {
                    applicationExitInfo = null;
                    break;
                }
            }
            if (applicationExitInfo != null) {
                timestamp = applicationExitInfo.getTimestamp();
                long j = this.n;
                if (timestamp < j) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Latest %s happened too long ago, returning early.", applicationExitInfoPolicy.c());
                    return;
                }
                if (b != null) {
                    timestamp4 = applicationExitInfo.getTimestamp();
                    if (timestamp4 <= b.longValue()) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Latest %s has already been reported, returning early.", applicationExitInfoPolicy.c());
                        return;
                    }
                }
                if (applicationExitInfoPolicy.d()) {
                    Collections.reverse(arrayList);
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ApplicationExitInfo e = defpackage.j.e(it2.next());
                        reason = e.getReason();
                        if (reason == applicationExitInfoPolicy.a()) {
                            timestamp2 = e.getTimestamp();
                            if (timestamp2 < j) {
                                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "%s happened too long ago %s.", applicationExitInfoPolicy.c(), e);
                            } else {
                                if (b != null) {
                                    timestamp3 = e.getTimestamp();
                                    if (timestamp3 <= b.longValue()) {
                                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "%s has already been reported %s.", applicationExitInfoPolicy.c(), e);
                                    }
                                }
                                a(e, false);
                            }
                        }
                    }
                }
                a(applicationExitInfo, true);
                return;
            }
            sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "No %ss have been found in the historical exit reasons list.", applicationExitInfoPolicy.c());
            return;
        }
        sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "Failed to retrieve ActivityManager.", new Object[0]);
    }
}
