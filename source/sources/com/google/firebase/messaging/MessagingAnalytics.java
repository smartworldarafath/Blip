package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.ProductData;
import com.google.android.datatransport.TransportFactory;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import defpackage.f7;
import java.util.concurrent.ExecutionException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MessagingAnalytics {
    public static boolean a() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            FirebaseApp.b();
            FirebaseApp b = FirebaseApp.b();
            b.a();
            Context context = b.a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("export_to_big_query")) {
                return sharedPreferences.getBoolean("export_to_big_query", false);
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("delivery_metrics_exported_to_big_query_enabled")) {
                    return applicationInfo.metaData.getBoolean("delivery_metrics_exported_to_big_query_enabled", false);
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        } catch (IllegalStateException unused2) {
            Log.i("FirebaseMessaging", "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query");
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0191 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0177 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x015b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(Intent intent) {
        boolean z;
        int parseInt;
        MessagingClientEvent.MessageType messageType;
        Object[] objArr;
        String string;
        String string2;
        String string3;
        String string4;
        String string5;
        long parseLong;
        String str;
        String str2;
        if (d(intent)) {
            c("_nr", intent.getExtras());
        }
        int i = 0;
        if (intent != null && !"com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction())) {
            z = a();
        } else {
            z = false;
        }
        if (z) {
            TransportFactory transportFactory = (TransportFactory) FirebaseMessaging.m.get();
            if (transportFactory == null) {
                Log.e("FirebaseMessaging", "TransportFactory is null. Skip exporting message delivery metrics to Big Query");
                return;
            }
            MessagingClientEvent messagingClientEvent = null;
            r3 = null;
            String str3 = null;
            if (intent != null) {
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    extras = Bundle.EMPTY;
                }
                int i2 = MessagingClientEvent.n;
                MessagingClientEvent.Builder builder = new MessagingClientEvent.Builder();
                Object obj = extras.get("google.ttl");
                if (obj instanceof Integer) {
                    parseInt = ((Integer) obj).intValue();
                } else {
                    if (obj instanceof String) {
                        try {
                            parseInt = Integer.parseInt((String) obj);
                        } catch (NumberFormatException unused) {
                            Log.w("FirebaseMessaging", "Invalid TTL: " + obj);
                        }
                    }
                    parseInt = 0;
                }
                builder.i = parseInt;
                builder.k = MessagingClientEvent.Event.MESSAGE_DELIVERED;
                String string6 = extras.getString("google.to");
                if (TextUtils.isEmpty(string6)) {
                    try {
                        FirebaseApp b = FirebaseApp.b();
                        try {
                            Object obj2 = FirebaseInstallations.m;
                            b.a();
                            string6 = (String) Tasks.a(((FirebaseInstallations) b.d.a(FirebaseInstallationsApi.class)).c());
                        } catch (InterruptedException e) {
                            e = e;
                            throw new RuntimeException(e);
                        }
                    } catch (InterruptedException | ExecutionException e2) {
                        e = e2;
                    }
                }
                builder.c = string6;
                FirebaseApp b2 = FirebaseApp.b();
                b2.a();
                builder.f = b2.a.getPackageName();
                builder.e = MessagingClientEvent.SDKPlatform.ANDROID;
                if (NotificationParams.f(extras)) {
                    messageType = MessagingClientEvent.MessageType.DISPLAY_NOTIFICATION;
                } else {
                    messageType = MessagingClientEvent.MessageType.DATA_MESSAGE;
                }
                builder.d = messageType;
                String string7 = extras.getString("google.delivered_priority");
                if (string7 == null) {
                    if (!"1".equals(extras.getString("google.priority_reduced"))) {
                        string7 = extras.getString("google.priority");
                    }
                    objArr = 2;
                    if (objArr != 2) {
                        i = 5;
                    } else if (objArr == 1) {
                        i = 10;
                    }
                    builder.h = i;
                    string = extras.getString("google.message_id");
                    if (string == null) {
                        string = extras.getString("message_id");
                    }
                    if (string != null) {
                        builder.b = string;
                    }
                    string2 = extras.getString("from");
                    if (string2 != null && string2.startsWith("/topics/")) {
                        str3 = string2;
                    }
                    if (str3 != null) {
                        builder.j = str3;
                    }
                    string3 = extras.getString("collapse_key");
                    if (string3 != null) {
                        builder.g = string3;
                    }
                    string4 = extras.getString("google.c.a.m_l");
                    if (string4 != null) {
                        builder.l = string4;
                    }
                    string5 = extras.getString("google.c.a.c_l");
                    if (string5 != null) {
                        builder.m = string5;
                    }
                    if (extras.containsKey("google.c.sender.id")) {
                        try {
                            parseLong = Long.parseLong(extras.getString("google.c.sender.id"));
                        } catch (NumberFormatException e3) {
                            Log.w("FirebaseMessaging", "error parsing project number", e3);
                        }
                        if (parseLong > 0) {
                            builder.a = parseLong;
                        }
                        messagingClientEvent = builder.a();
                    }
                    FirebaseApp b3 = FirebaseApp.b();
                    FirebaseOptions firebaseOptions = b3.c;
                    b3.a();
                    str = firebaseOptions.e;
                    if (str != null) {
                        try {
                            parseLong = Long.parseLong(str);
                        } catch (NumberFormatException e4) {
                            Log.w("FirebaseMessaging", "error parsing sender ID", e4);
                        }
                        if (parseLong > 0) {
                        }
                        messagingClientEvent = builder.a();
                    }
                    b3.a();
                    str2 = firebaseOptions.b;
                    if (str2.startsWith("1:")) {
                        try {
                            parseLong = Long.parseLong(str2);
                        } catch (NumberFormatException e5) {
                            Log.w("FirebaseMessaging", "error parsing app ID", e5);
                        }
                    } else {
                        String[] split = str2.split(":");
                        if (split.length >= 2) {
                            String str4 = split[1];
                            if (!str4.isEmpty()) {
                                try {
                                    parseLong = Long.parseLong(str4);
                                } catch (NumberFormatException e6) {
                                    Log.w("FirebaseMessaging", "error parsing app ID", e6);
                                }
                            }
                        }
                        parseLong = 0;
                    }
                    if (parseLong > 0) {
                    }
                    messagingClientEvent = builder.a();
                }
                if ("high".equals(string7)) {
                    objArr = 1;
                } else {
                    if (!"normal".equals(string7)) {
                        objArr = 0;
                    }
                    objArr = 2;
                }
                if (objArr != 2) {
                }
                builder.h = i;
                string = extras.getString("google.message_id");
                if (string == null) {
                }
                if (string != null) {
                }
                string2 = extras.getString("from");
                if (string2 != null) {
                    str3 = string2;
                }
                if (str3 != null) {
                }
                string3 = extras.getString("collapse_key");
                if (string3 != null) {
                }
                string4 = extras.getString("google.c.a.m_l");
                if (string4 != null) {
                }
                string5 = extras.getString("google.c.a.c_l");
                if (string5 != null) {
                }
                if (extras.containsKey("google.c.sender.id")) {
                }
                FirebaseApp b32 = FirebaseApp.b();
                FirebaseOptions firebaseOptions2 = b32.c;
                b32.a();
                str = firebaseOptions2.e;
                if (str != null) {
                }
                b32.a();
                str2 = firebaseOptions2.b;
                if (str2.startsWith("1:")) {
                }
                if (parseLong > 0) {
                }
                messagingClientEvent = builder.a();
            }
            if (messagingClientEvent != null) {
                try {
                    transportFactory.a(new Encoding("proto"), new f7(13)).a(Event.b(new MessagingClientEventExtension(messagingClientEvent), ProductData.a(Integer.valueOf(intent.getIntExtra("google.product_id", 111881503)))));
                } catch (RuntimeException e7) {
                    Log.w("FirebaseMessaging", "Failed to send big query analytics payload.", e7);
                }
            }
        }
    }

    public static void c(String str, Bundle bundle) {
        String str2;
        try {
            FirebaseApp.b();
            if (bundle == null) {
                bundle = new Bundle();
            }
            Bundle bundle2 = new Bundle();
            String string = bundle.getString("google.c.a.c_id");
            if (string != null) {
                bundle2.putString("_nmid", string);
            }
            String string2 = bundle.getString("google.c.a.c_l");
            if (string2 != null) {
                bundle2.putString("_nmn", string2);
            }
            String string3 = bundle.getString("google.c.a.m_l");
            if (!TextUtils.isEmpty(string3)) {
                bundle2.putString("label", string3);
            }
            String string4 = bundle.getString("google.c.a.m_c");
            if (!TextUtils.isEmpty(string4)) {
                bundle2.putString("message_channel", string4);
            }
            String string5 = bundle.getString("from");
            String str3 = null;
            if (string5 == null || !string5.startsWith("/topics/")) {
                string5 = null;
            }
            if (string5 != null) {
                bundle2.putString("_nt", string5);
            }
            String string6 = bundle.getString("google.c.a.ts");
            if (string6 != null) {
                try {
                    bundle2.putInt("_nmt", Integer.parseInt(string6));
                } catch (NumberFormatException e) {
                    Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
                }
            }
            if (bundle.containsKey("google.c.a.udt")) {
                str3 = bundle.getString("google.c.a.udt");
            }
            if (str3 != null) {
                try {
                    bundle2.putInt("_ndt", Integer.parseInt(str3));
                } catch (NumberFormatException e2) {
                    Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
                }
            }
            if (NotificationParams.f(bundle)) {
                str2 = "display";
            } else {
                str2 = "data";
            }
            if ("_nr".equals(str) || "_nf".equals(str)) {
                bundle2.putString("_nmc", str2);
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Logging to scion event=" + str + " scionPayload=" + bundle2);
            }
            FirebaseApp b = FirebaseApp.b();
            b.a();
            if (b.d.a(AnalyticsConnector.class) == null) {
                Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
            } else {
                io.sentry.d.i();
            }
        } catch (IllegalStateException unused) {
            Log.e("FirebaseMessaging", "Default FirebaseApp has not been initialized. Skip logging event to GA.");
        }
    }

    public static boolean d(Intent intent) {
        Bundle extras;
        if (intent == null || "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT".equals(intent.getAction()) || (extras = intent.getExtras()) == null) {
            return false;
        }
        return "1".equals(extras.getString("google.c.a.e"));
    }
}
