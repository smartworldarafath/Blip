package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import java.util.ArrayDeque;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ServiceStarter {
    public static ServiceStarter e;
    public String a = null;
    public Boolean b = null;
    public Boolean c = null;
    public final ArrayDeque d = new ArrayDeque();

    public static synchronized ServiceStarter a() {
        ServiceStarter serviceStarter;
        synchronized (ServiceStarter.class) {
            try {
                if (e == null) {
                    e = new ServiceStarter();
                }
                serviceStarter = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return serviceStarter;
    }

    public final boolean b(Context context) {
        boolean z;
        if (this.c == null) {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
                z = true;
            } else {
                z = false;
            }
            this.c = Boolean.valueOf(z);
        }
        if (!this.b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.c.booleanValue();
    }

    public final boolean c(Context context) {
        boolean z;
        if (this.b == null) {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                z = true;
            } else {
                z = false;
            }
            this.b = Boolean.valueOf(z);
        }
        if (!this.b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.b.booleanValue();
    }
}
