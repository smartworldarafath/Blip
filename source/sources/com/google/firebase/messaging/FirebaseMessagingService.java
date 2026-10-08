package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.cloudmessaging.zzv;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FirebaseMessagingService extends EnhancedIntentService {
    public static final ArrayDeque q = new ArrayDeque(10);
    public Rpc p;

    /* JADX WARN: Removed duplicated region for block: B:29:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b3  */
    @Override // com.google.firebase.messaging.EnhancedIntentService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(Intent intent) {
        Rpc rpc;
        Integer num;
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(action) && !"com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(action)) {
            if ("com.google.firebase.messaging.NEW_TOKEN".equals(action)) {
                d(intent.getStringExtra("token"));
                return;
            }
            if ("com.google.firebase.messaging.FCM_REGISTERED".equals(action)) {
                intent.getStringExtra("token");
                return;
            } else {
                if ("com.google.firebase.messaging.FCM_UNREGISTERED".equals(action)) {
                    intent.getStringExtra("token");
                    return;
                }
                Log.d("FirebaseMessaging", "Unknown intent action: " + intent.getAction());
                return;
            }
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (!TextUtils.isEmpty(stringExtra)) {
            ArrayDeque arrayDeque = q;
            if (arrayDeque.contains(stringExtra)) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    Log.d("FirebaseMessaging", "Received duplicate message: " + stringExtra);
                }
                if (this.p == null) {
                    this.p = new Rpc(getApplicationContext());
                }
                rpc = this.p;
                if (rpc.c.b() < 233700000) {
                    Bundle bundle = new Bundle();
                    String stringExtra2 = intent.getStringExtra("google.message_id");
                    if (stringExtra2 == null) {
                        stringExtra2 = intent.getStringExtra("message_id");
                    }
                    bundle.putString("google.message_id", stringExtra2);
                    if (intent.hasExtra("google.product_id")) {
                        num = Integer.valueOf(intent.getIntExtra("google.product_id", 0));
                    } else {
                        num = null;
                    }
                    if (num != null) {
                        bundle.putInt("google.product_id", num.intValue());
                    }
                    zzv.a(rpc.b).b(3, bundle);
                    return;
                }
                Tasks.d(new IOException("SERVICE_NOT_AVAILABLE"));
                return;
            }
            if (arrayDeque.size() >= 10) {
                arrayDeque.remove();
            }
            arrayDeque.add(stringExtra);
        }
        String stringExtra3 = intent.getStringExtra("message_type");
        if (stringExtra3 == null) {
            stringExtra3 = "gcm";
        }
        char c = 65535;
        switch (stringExtra3.hashCode()) {
            case -2062414158:
                if (stringExtra3.equals("deleted_messages")) {
                    c = 0;
                    break;
                }
                break;
            case 102161:
                if (stringExtra3.equals("gcm")) {
                    c = 1;
                    break;
                }
                break;
            case 814694033:
                if (stringExtra3.equals("send_error")) {
                    c = 2;
                    break;
                }
                break;
            case 814800675:
                if (stringExtra3.equals("send_event")) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                break;
            case 1:
                MessagingAnalytics.b(intent);
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    extras = new Bundle();
                }
                extras.remove("androidx.content.wakelockid");
                if (NotificationParams.f(extras)) {
                    NotificationParams notificationParams = new NotificationParams(extras);
                    ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new NamedThreadFactory("Firebase-Messaging-Network-Io"));
                    try {
                        if (new DisplayNotification(this, notificationParams, newSingleThreadExecutor).a()) {
                            break;
                        } else {
                            newSingleThreadExecutor.shutdown();
                            if (MessagingAnalytics.d(intent)) {
                                MessagingAnalytics.c("_nf", intent.getExtras());
                            }
                        }
                    } finally {
                        newSingleThreadExecutor.shutdown();
                    }
                }
                c(new RemoteMessage(extras));
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                if (intent.getStringExtra("google.message_id") == null) {
                    intent.getStringExtra("message_id");
                }
                String stringExtra4 = intent.getStringExtra("error");
                new Exception(stringExtra4);
                if (stringExtra4 != null) {
                    stringExtra4.toLowerCase(Locale.US).getClass();
                    break;
                }
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                intent.getStringExtra("google.message_id");
                break;
            default:
                Log.w("FirebaseMessaging", "Received message with unknown type: ".concat(stringExtra3));
                break;
        }
        if (this.p == null) {
        }
        rpc = this.p;
        if (rpc.c.b() < 233700000) {
        }
    }

    public void c(RemoteMessage remoteMessage) {
    }

    public void d(String str) {
    }
}
