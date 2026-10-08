package io.sentry.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.HandlerThread;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IScopes;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.AppState;
import io.sentry.android.core.internal.util.Debouncer;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.Objects;
import io.sentry.util.StringUtils;
import java.io.Closeable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemEventsBreadcrumbsIntegration implements Integration, Closeable, AppState.AppStateListener {
    public final Context j;
    public volatile SystemEventsBroadcastReceiver k;
    public SentryAndroidOptions l;
    public ScopesAdapter m;
    public final String[] n;
    public volatile boolean o = false;
    public volatile boolean p = false;
    public volatile IntentFilter q = null;
    public volatile HandlerThread r = null;
    public final AtomicBoolean s = new AtomicBoolean(false);
    public final AutoClosableReentrantLock t = new ReentrantLock();
    public BatteryState u;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BatteryState {
        public final Integer a;
        public final Boolean b;

        public BatteryState(Integer num, Boolean bool) {
            this.a = num;
            this.b = bool;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof BatteryState)) {
                return false;
            }
            BatteryState batteryState = (BatteryState) obj;
            if (!Objects.a(this.a, batteryState.a) || !Objects.a(this.b, batteryState.b)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b});
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SystemEventsBroadcastReceiver extends BroadcastReceiver {
        public final IScopes a;
        public final SentryAndroidOptions b;
        public final Debouncer c = new Debouncer(0, 60000);
        public final char[] d = new char[64];

        public SystemEventsBroadcastReceiver(IScopes iScopes, SentryAndroidOptions sentryAndroidOptions) {
            this.a = iScopes;
            this.b = sentryAndroidOptions;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x008f, code lost:
        
            r2 = r11;
         */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void onReceive(Context context, Intent intent) {
            BatteryState batteryState;
            Bundle extras;
            int i;
            Integer num;
            String action = intent.getAction();
            boolean equals = "android.intent.action.BATTERY_CHANGED".equals(action);
            SentryAndroidOptions sentryAndroidOptions = this.b;
            String str = null;
            if (equals) {
                if (!this.c.a()) {
                    Float b = DeviceInfoUtil.b(intent, sentryAndroidOptions);
                    if (b != null) {
                        num = Integer.valueOf(b.intValue());
                    } else {
                        num = null;
                    }
                    batteryState = new BatteryState(num, DeviceInfoUtil.d(intent, sentryAndroidOptions));
                    SystemEventsBreadcrumbsIntegration systemEventsBreadcrumbsIntegration = SystemEventsBreadcrumbsIntegration.this;
                    if (batteryState.equals(systemEventsBreadcrumbsIntegration.u)) {
                        return;
                    } else {
                        systemEventsBreadcrumbsIntegration.u = batteryState;
                    }
                } else {
                    return;
                }
            } else {
                batteryState = null;
            }
            Breadcrumb breadcrumb = new Breadcrumb(System.currentTimeMillis());
            breadcrumb.n = "system";
            breadcrumb.p = "device.event";
            if (action != null) {
                int length = action.length();
                char[] cArr = this.d;
                int length2 = cArr.length;
                int i2 = length - 1;
                while (true) {
                    if (i2 < 0) {
                        break;
                    }
                    char charAt = action.charAt(i2);
                    if (charAt == '.') {
                        str = new String(cArr, length2, cArr.length - length2);
                        break;
                    }
                    if (length2 == 0) {
                        Charset charset = StringUtils.a;
                        int lastIndexOf = action.lastIndexOf(".");
                        if (lastIndexOf >= 0 && action.length() > (i = lastIndexOf + 1)) {
                            str = action.substring(i);
                        }
                    } else {
                        length2--;
                        cArr[length2] = charAt;
                        i2--;
                    }
                }
            }
            if (str != null) {
                breadcrumb.c(str, "action");
            }
            if (batteryState != null) {
                Integer num2 = batteryState.a;
                if (num2 != null) {
                    breadcrumb.c(num2, "level");
                }
                Boolean bool = batteryState.b;
                if (bool != null) {
                    breadcrumb.c(bool, "charging");
                }
            } else if (sentryAndroidOptions.isEnableSystemEventBreadcrumbsExtras() && (extras = intent.getExtras()) != null && !extras.isEmpty()) {
                HashMap hashMap = new HashMap(extras.size());
                for (String str2 : extras.keySet()) {
                    try {
                        Object obj = extras.get(str2);
                        if (obj != null) {
                            hashMap.put(str2, obj.toString());
                        }
                    } catch (Throwable th) {
                        sentryAndroidOptions.getLogger().a(SentryLevel.ERROR, th, "%s key of the %s action threw an error.", str2, action);
                    }
                }
                breadcrumb.c(hashMap, "extras");
            }
            breadcrumb.r = SentryLevel.INFO;
            Hint hint = new Hint();
            hint.d(intent, "android:intent");
            this.a.a(breadcrumb, hint);
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public SystemEventsBreadcrumbsIntegration(Context context) {
        String[] strArr = {"android.intent.action.ACTION_SHUTDOWN", "android.intent.action.AIRPLANE_MODE", "android.intent.action.BATTERY_CHANGED", "android.intent.action.CAMERA_BUTTON", "android.intent.action.CONFIGURATION_CHANGED", "android.intent.action.DATE_CHANGED", "android.intent.action.DEVICE_STORAGE_LOW", "android.intent.action.DEVICE_STORAGE_OK", "android.intent.action.DOCK_EVENT", "android.intent.action.DREAMING_STARTED", "android.intent.action.DREAMING_STOPPED", "android.intent.action.INPUT_METHOD_CHANGED", "android.intent.action.LOCALE_CHANGED", "android.intent.action.SCREEN_OFF", "android.intent.action.SCREEN_ON", "android.intent.action.TIMEZONE_CHANGED", "android.intent.action.TIME_SET", "android.os.action.DEVICE_IDLE_MODE_CHANGED", "android.os.action.POWER_SAVE_MODE_CHANGED"};
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext == null ? context : applicationContext;
        this.n = strArr;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.l = sentryAndroidOptions;
        this.m = ScopesAdapter.a;
        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "SystemEventsBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.l.isEnableSystemEventBreadcrumbs()));
        if (this.l.isEnableSystemEventBreadcrumbs()) {
            AppState.n.a(this);
            if (ContextUtils.d()) {
                n(this.m, this.l);
            }
        }
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void a() {
        if (this.m != null && this.l != null) {
            this.p = false;
            n(this.m, this.l);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ISentryLifecycleToken a = this.t.a();
        try {
            this.o = true;
            this.q = null;
            if (this.r != null) {
                this.r.quit();
            }
            this.r = null;
            a.close();
            AppState.n.q(this);
            SentryAndroidOptions sentryAndroidOptions = this.l;
            if (sentryAndroidOptions != null) {
                try {
                    sentryAndroidOptions.getExecutorService().submit(new b(6, this));
                } catch (RejectedExecutionException unused) {
                    q(this.l);
                }
            }
            SentryAndroidOptions sentryAndroidOptions2 = this.l;
            if (sentryAndroidOptions2 != null) {
                sentryAndroidOptions2.getLogger().c(SentryLevel.DEBUG, "SystemEventsBreadcrumbsIntegration removed.", new Object[0]);
            }
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void h() {
        SentryAndroidOptions sentryAndroidOptions = this.l;
        if (sentryAndroidOptions == null) {
            return;
        }
        try {
            sentryAndroidOptions.getExecutorService().submit(new b(6, this));
        } catch (RejectedExecutionException unused) {
            q(this.l);
        }
    }

    public final void n(ScopesAdapter scopesAdapter, SentryAndroidOptions sentryAndroidOptions) {
        if (sentryAndroidOptions.isEnableSystemEventBreadcrumbs() && !this.o && !this.p && this.k == null) {
            try {
                sentryAndroidOptions.getExecutorService().submit(new m(this, scopesAdapter, sentryAndroidOptions));
            } catch (Throwable unused) {
                sentryAndroidOptions.getLogger().c(SentryLevel.WARNING, "Failed to start SystemEventsBreadcrumbsIntegration on executor thread.", new Object[0]);
            }
        }
    }

    public final void q(SentryAndroidOptions sentryAndroidOptions) {
        ISentryLifecycleToken a = this.t.a();
        try {
            this.p = true;
            SystemEventsBroadcastReceiver systemEventsBroadcastReceiver = this.k;
            this.k = null;
            a.close();
            if (systemEventsBroadcastReceiver != null) {
                try {
                    this.j.unregisterReceiver(systemEventsBroadcastReceiver);
                } catch (Throwable th) {
                    sentryAndroidOptions.getLogger().a(SentryLevel.ERROR, th, "Failed to unregister SystemEventsBroadcastReceiver", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                a.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }
}
