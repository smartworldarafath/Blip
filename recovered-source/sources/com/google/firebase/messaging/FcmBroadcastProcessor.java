package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FcmBroadcastProcessor;
import defpackage.f7;
import defpackage.z2;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FcmBroadcastProcessor {
    public static final Object c = new Object();
    public static WithinAppServiceConnection d;
    public final Context a;
    public final z2 b = new z2(2);

    public FcmBroadcastProcessor(Context context) {
        this.a = context;
    }

    public static Task a(Context context, Intent intent, boolean z) {
        WithinAppServiceConnection withinAppServiceConnection;
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        synchronized (c) {
            try {
                if (d == null) {
                    d = new WithinAppServiceConnection(context);
                }
                withinAppServiceConnection = d;
            } finally {
            }
        }
        if (z) {
            if (ServiceStarter.a().c(context)) {
                synchronized (WakeLockHolder.a) {
                    try {
                        WakeLockHolder.a(context);
                        boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
                        if (!booleanExtra) {
                            WakeLockHolder.b.a();
                        }
                        withinAppServiceConnection.b(intent).a(new f(2, intent));
                    } finally {
                    }
                }
            } else {
                withinAppServiceConnection.b(intent);
            }
            return Tasks.e(-1);
        }
        return withinAppServiceConnection.b(intent).d(new z2(2), new f7(27));
    }

    public final Task b(final Intent intent) {
        boolean z;
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        final boolean z2 = false;
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        final Context context = this.a;
        if (context.getApplicationInfo().targetSdkVersion >= 26) {
            z = true;
        } else {
            z = false;
        }
        if ((intent.getFlags() & 268435456) != 0) {
            z2 = true;
        }
        if (z && !z2) {
            return a(context, intent, z2);
        }
        Callable callable = new Callable() { // from class: com.google.firebase.messaging.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                ServiceInfo serviceInfo;
                String str2;
                int i;
                ComponentName startService;
                Context context2 = context;
                Intent intent2 = intent;
                ServiceStarter a = ServiceStarter.a();
                a.getClass();
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Starting service");
                }
                a.d.offer(intent2);
                Intent intent3 = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent3.setPackage(context2.getPackageName());
                synchronized (a) {
                    try {
                        str = a.a;
                        if (str == null) {
                            ResolveInfo resolveService = context2.getPackageManager().resolveService(intent3, 0);
                            if (resolveService != null && (serviceInfo = resolveService.serviceInfo) != null) {
                                if (context2.getPackageName().equals(serviceInfo.packageName) && (str2 = serviceInfo.name) != null) {
                                    if (str2.startsWith(".")) {
                                        a.a = context2.getPackageName() + serviceInfo.name;
                                    } else {
                                        a.a = serviceInfo.name;
                                    }
                                    str = a.a;
                                }
                                Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + "/" + serviceInfo.name);
                                str = null;
                            }
                            Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
                            str = null;
                        }
                    } finally {
                    }
                }
                if (str != null) {
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "Restricting intent to a specific service: ".concat(str));
                    }
                    intent3.setClassName(context2.getPackageName(), str);
                }
                try {
                    if (a.c(context2)) {
                        startService = WakeLockHolder.c(context2, intent3);
                    } else {
                        startService = context2.startService(intent3);
                        Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
                    }
                    if (startService == null) {
                        Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
                        i = 404;
                    } else {
                        i = -1;
                    }
                } catch (IllegalStateException e) {
                    Log.e("FirebaseMessaging", "Failed to start service while in background: " + e);
                    i = 402;
                } catch (SecurityException e2) {
                    Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e2);
                    i = 401;
                }
                return Integer.valueOf(i);
            }
        };
        z2 z2Var = this.b;
        return Tasks.c(z2Var, callable).e(z2Var, new Continuation() { // from class: h8
            @Override // com.google.android.gms.tasks.Continuation
            public final Object g(Task task) {
                if (((Integer) task.g()).intValue() != 402) {
                    return task;
                }
                return FcmBroadcastProcessor.a(context, intent, z2).d(new z2(2), new f7(26));
            }
        });
    }
}
