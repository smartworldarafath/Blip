package com.google.firebase.messaging;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FcmLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    public final ArrayDeque j = new ArrayDeque(10);

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean equals;
        Intent intent = activity.getIntent();
        if (intent != null) {
            ArrayDeque arrayDeque = this.j;
            Bundle bundle2 = null;
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    String string = extras.getString("google.message_id");
                    if (string == null) {
                        string = extras.getString("message_id");
                    }
                    if (!TextUtils.isEmpty(string)) {
                        if (!arrayDeque.contains(string)) {
                            arrayDeque.add(string);
                        } else {
                            return;
                        }
                    }
                    bundle2 = extras.getBundle("gcm.n.analytics_data");
                }
            } catch (RuntimeException e) {
                Log.w("FirebaseMessaging", "Failed trying to get analytics data from Intent extras.", e);
            }
            if (bundle2 == null) {
                equals = false;
            } else {
                equals = "1".equals(bundle2.getString("google.c.a.e"));
            }
            if (equals) {
                if (bundle2 != null) {
                    if ("1".equals(bundle2.getString("google.c.a.tc"))) {
                        FirebaseApp b = FirebaseApp.b();
                        b.a();
                        if (b.d.a(AnalyticsConnector.class) == null) {
                            if (Log.isLoggable("FirebaseMessaging", 3)) {
                                Log.d("FirebaseMessaging", "Received event with track-conversion=true. Setting user property and reengagement event");
                            }
                            Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
                        } else {
                            io.sentry.d.i();
                            return;
                        }
                    } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                        Log.d("FirebaseMessaging", "Received event with track-conversion=false. Do not set user property");
                    }
                }
                MessagingAnalytics.c("_no", bundle2);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
