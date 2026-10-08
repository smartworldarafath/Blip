package io.sentry.android.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Looper;
import io.sentry.DateUtils;
import io.sentry.EventProcessor;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.SentryLongDate;
import io.sentry.SentryReplayEvent;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.internal.util.AndroidThreadChecker;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.protocol.App;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.Device;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.util.HintUtils;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultAndroidEventProcessor implements EventProcessor {
    public final Context j;
    public final BuildInfoProvider k;
    public final SentryAndroidOptions l;
    public final Future m;

    public DefaultAndroidEventProcessor(Context context, BuildInfoProvider buildInfoProvider, SentryAndroidOptions sentryAndroidOptions) {
        Future future;
        new LazyEvaluator(new a(7));
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = buildInfoProvider;
        Objects.b(sentryAndroidOptions, "The options object is required.");
        this.l = sentryAndroidOptions;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        try {
            future = newSingleThreadExecutor.submit(new k(this, sentryAndroidOptions, 0));
        } catch (RejectedExecutionException e) {
            sentryAndroidOptions.getLogger().b(SentryLevel.WARNING, "Device info caching task rejected.", e);
            future = null;
        }
        this.m = future;
        newSingleThreadExecutor.shutdown();
    }

    @Override // io.sentry.EventProcessor
    public final SentryReplayEvent a(SentryReplayEvent sentryReplayEvent, Hint hint) {
        boolean d = d(sentryReplayEvent, hint);
        if (d) {
            b(sentryReplayEvent, hint);
        }
        c(sentryReplayEvent, false, d);
        return sentryReplayEvent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(SentryBaseEvent sentryBaseEvent, Hint hint) {
        PackageInfo packageInfo;
        String str;
        PackageManager.PackageInfoFlags of;
        Boolean bool;
        SentryLongDate sentryLongDate;
        Date c;
        App d = sentryBaseEvent.k.d();
        App app = d;
        if (d == null) {
            app = new Object();
        }
        app.n = (String) ContextUtils.c.a(this.j);
        TimeSpan b = AppStartMetrics.c().b(this.l);
        DeviceInfoUtil deviceInfoUtil = null;
        if (b.b()) {
            if (b.b()) {
                sentryLongDate = new SentryLongDate(b.k * 1000000);
            } else {
                sentryLongDate = null;
            }
            if (sentryLongDate == null) {
                c = null;
            } else {
                c = DateUtils.c(Double.valueOf(sentryLongDate.j / 1000000.0d).longValue());
            }
            app.k = c;
        }
        if (!HintUtils.c(hint) && app.t == null && (bool = AppState.n.m) != null) {
            app.t = Boolean.valueOf(!bool.booleanValue());
        }
        Context context = this.j;
        SentryAndroidOptions sentryAndroidOptions = this.l;
        ILogger logger = sentryAndroidOptions.getLogger();
        BuildInfoProvider buildInfoProvider = this.k;
        try {
            buildInfoProvider.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = context.getPackageManager();
                String packageName = context.getPackageName();
                of = PackageManager.PackageInfoFlags.of(4096L);
                packageInfo = packageManager.getPackageInfo(packageName, of);
            } else {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            }
        } catch (Throwable th) {
            logger.b(SentryLevel.ERROR, "Error getting package info.", th);
            packageInfo = null;
        }
        if (packageInfo != null) {
            buildInfoProvider.getClass();
            String l = Long.toString(packageInfo.getLongVersionCode());
            if (sentryBaseEvent.u == null) {
                sentryBaseEvent.u = l;
            }
            Future future = this.m;
            if (future != null) {
                try {
                    deviceInfoUtil = (DeviceInfoUtil) future.get();
                } catch (Throwable th2) {
                    sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to retrieve device info", th2);
                }
            } else {
                sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "Failed to retrieve device info", new Object[0]);
            }
            app.j = packageInfo.packageName;
            app.o = packageInfo.versionName;
            app.p = Long.toString(packageInfo.getLongVersionCode());
            HashMap hashMap = new HashMap();
            String[] strArr = packageInfo.requestedPermissions;
            int[] iArr = packageInfo.requestedPermissionsFlags;
            if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
                for (int i = 0; i < strArr.length; i++) {
                    String str2 = strArr[i];
                    String substring = str2.substring(str2.lastIndexOf(46) + 1);
                    if ((iArr[i] & 2) == 2) {
                        str = "granted";
                    } else {
                        str = "not_granted";
                    }
                    hashMap.put(substring, str);
                }
            }
            app.q = hashMap;
            if (deviceInfoUtil != null) {
                try {
                    ContextUtils.SplitApksInfo splitApksInfo = deviceInfoUtil.f;
                    if (splitApksInfo != null) {
                        app.u = Boolean.valueOf(splitApksInfo.a);
                        String[] strArr2 = splitApksInfo.b;
                        if (strArr2 != null) {
                            app.v = Arrays.asList(strArr2);
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        sentryBaseEvent.k.m(app);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, io.sentry.protocol.User] */
    public final void c(SentryBaseEvent sentryBaseEvent, boolean z, boolean z2) {
        String str;
        User user = sentryBaseEvent.r;
        User user2 = user;
        if (user == null) {
            ?? obj = new Object();
            sentryBaseEvent.r = obj;
            user2 = obj;
        }
        if (user2.k == null) {
            user2.k = Installation.a(this.j);
        }
        String str2 = user2.m;
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (str2 == null && sentryAndroidOptions.isSendDefaultPii()) {
            user2.m = "{{auto}}";
        }
        Contexts contexts = sentryBaseEvent.k;
        Device e = contexts.e();
        Future future = this.m;
        if (e == null) {
            if (future != null) {
                try {
                    contexts.o(((DeviceInfoUtil) future.get()).a(z, z2));
                } catch (Throwable th) {
                    sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to retrieve device info", th);
                }
            } else {
                sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "Failed to retrieve device info", new Object[0]);
            }
            OperatingSystem g = contexts.g();
            if (future != null) {
                try {
                    contexts.r(((DeviceInfoUtil) future.get()).g);
                } catch (Throwable th2) {
                    sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to retrieve os system", th2);
                }
            } else {
                sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "Failed to retrieve device info", new Object[0]);
            }
            if (g != null) {
                String str3 = g.j;
                if (str3 != null && !str3.isEmpty()) {
                    str = "os_" + str3.trim().toLowerCase(Locale.ROOT);
                } else {
                    str = "os_1";
                }
                contexts.k(g, str);
            }
        }
        if (future != null) {
            try {
                ContextUtils.SideLoadedInfo sideLoadedInfo = ((DeviceInfoUtil) future.get()).e;
                if (sideLoadedInfo != null) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("isSideLoaded", String.valueOf(sideLoadedInfo.a));
                    String str4 = sideLoadedInfo.b;
                    if (str4 != null) {
                        hashMap.put("installerStore", str4);
                    }
                    for (Map.Entry entry : hashMap.entrySet()) {
                        sentryBaseEvent.b((String) entry.getKey(), (String) entry.getValue());
                    }
                    return;
                }
                return;
            } catch (Throwable th3) {
                sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Error getting side loaded info.", th3);
                return;
            }
        }
        sentryAndroidOptions.getLogger().c(SentryLevel.ERROR, "Failed to retrieve device info", new Object[0]);
    }

    public final boolean d(SentryBaseEvent sentryBaseEvent, Hint hint) {
        if (HintUtils.d(hint)) {
            return true;
        }
        this.l.getLogger().c(SentryLevel.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", sentryBaseEvent.j);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    @Override // io.sentry.EventProcessor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        SentryStackTrace sentryStackTrace;
        List list;
        boolean z;
        long id;
        boolean d = d(sentryEvent, hint);
        if (d) {
            b(sentryEvent, hint);
            if (sentryEvent.e() != null) {
                boolean c = HintUtils.c(hint);
                Iterator it = sentryEvent.e().iterator();
                while (it.hasNext()) {
                    SentryThread sentryThread = (SentryThread) it.next();
                    AndroidThreadChecker.a.getClass();
                    Long l = sentryThread.j;
                    if (l != null) {
                        long longValue = l.longValue();
                        Thread thread = Looper.getMainLooper().getThread();
                        if (Build.VERSION.SDK_INT >= 36) {
                            id = thread.threadId();
                        } else {
                            id = thread.getId();
                        }
                        if (id == longValue) {
                            z = true;
                            if (sentryThread.o == null) {
                                sentryThread.o = Boolean.valueOf(z);
                            }
                            if (!c && sentryThread.q == null) {
                                sentryThread.q = Boolean.valueOf(z);
                            }
                        }
                    }
                    z = false;
                    if (sentryThread.o == null) {
                    }
                    if (!c) {
                        sentryThread.q = Boolean.valueOf(z);
                    }
                }
            }
        }
        c(sentryEvent, true, d);
        ArrayList d2 = sentryEvent.d();
        if (d2 != null && d2.size() > 1) {
            SentryException sentryException = (SentryException) d2.get(d2.size() - 1);
            if ("java.lang".equals(sentryException.l) && (sentryStackTrace = sentryException.n) != null && (list = sentryStackTrace.j) != null) {
                Iterator it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    if ("com.android.internal.os.RuntimeInit$MethodAndArgsCaller".equals(((SentryStackFrame) it2.next()).o)) {
                        Collections.reverse(d2);
                        break;
                    }
                }
            }
        }
        return sentryEvent;
    }

    @Override // io.sentry.EventProcessor
    public final SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        boolean d = d(sentryTransaction, hint);
        if (d) {
            b(sentryTransaction, hint);
        }
        c(sentryTransaction, false, d);
        return sentryTransaction;
    }
}
