package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.firebase.messaging.WithinAppServiceConnection;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ j(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                SharedPreferencesQueue sharedPreferencesQueue = (SharedPreferencesQueue) obj;
                synchronized (sharedPreferencesQueue.d) {
                    SharedPreferences.Editor edit = sharedPreferencesQueue.a.edit();
                    String str = sharedPreferencesQueue.b;
                    StringBuilder sb = new StringBuilder();
                    Iterator it = sharedPreferencesQueue.d.iterator();
                    while (it.hasNext()) {
                        sb.append((String) it.next());
                        sb.append(sharedPreferencesQueue.c);
                    }
                    edit.putString(str, sb.toString()).apply();
                }
                return;
            default:
                WithinAppServiceConnection.BindRequest bindRequest = (WithinAppServiceConnection.BindRequest) obj;
                Log.w("FirebaseMessaging", "Service took too long to process intent: " + bindRequest.a.getAction() + " finishing.");
                bindRequest.b.d(null);
                return;
        }
    }
}
