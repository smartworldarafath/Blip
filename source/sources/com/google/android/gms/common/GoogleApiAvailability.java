package com.google.android.gms.common;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.zaq;
import com.google.android.gms.common.internal.zaf;
import com.google.android.gms.common.internal.zaj;
import com.google.android.gms.common.util.DeviceProperties;
import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {
    public static final Object c = new Object();
    public static final GoogleApiAvailability d = new Object();
    public zaq b;

    public static AlertDialog d(Activity activity, int i, zaj zajVar, DialogInterface.OnCancelListener onCancelListener) {
        String string;
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        if ("Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(activity, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(zaf.b(activity, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    string = resources.getString(R.string.ok);
                } else {
                    string = resources.getString(net.blip.android.R.string.common_google_play_services_enable_button);
                }
            } else {
                string = resources.getString(net.blip.android.R.string.common_google_play_services_update_button);
            }
        } else {
            string = resources.getString(net.blip.android.R.string.common_google_play_services_install_button);
        }
        if (string != null) {
            builder.setPositiveButton(string, zajVar);
        }
        String a = zaf.a(activity, i);
        if (a != null) {
            builder.setTitle(a);
        }
        Log.w("GoogleApiAvailability", q.g(i, "Creating dialog for Google Play services availability issue. ConnectionResult="), new IllegalArgumentException());
        return builder.create();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.ErrorDialogFragment, android.app.DialogFragment] */
    public static void g(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        ?? dialogFragment = new DialogFragment();
        Preconditions.f(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        dialogFragment.j = alertDialog;
        if (onCancelListener != null) {
            dialogFragment.k = onCancelListener;
        }
        dialogFragment.show(fragmentManager, str);
    }

    public final void c(GoogleApiActivity googleApiActivity, int i, GoogleApiActivity googleApiActivity2) {
        AlertDialog d2 = d(googleApiActivity, i, zaj.b(super.a(i, googleApiActivity, "d"), googleApiActivity), googleApiActivity2);
        if (d2 == null) {
            return;
        }
        g(googleApiActivity, d2, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    public final void e(Activity activity, com.google.android.gms.common.api.internal.zza zzaVar, int i, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog d2 = d(activity, i, zaj.c(super.a(i, activity, "d"), zzaVar), onCancelListener);
        if (d2 == null) {
            return;
        }
        g(activity, d2, "GooglePlayServicesErrorDialog", onCancelListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, androidx.core.app.NotificationCompat$Style, androidx.core.app.NotificationCompat$BigTextStyle] */
    public final void f(Context context, int i, PendingIntent pendingIntent) {
        String a;
        String d2;
        int i2;
        Log.w("GoogleApiAvailability", jb.d("GMS core API Availability. ConnectionResult=", i, ", tag=null"), new IllegalArgumentException());
        if (i == 18) {
            new zad(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        if (i == 6) {
            a = zaf.e(context, "common_google_play_services_resolution_required_title");
        } else {
            a = zaf.a(context, i);
        }
        if (a == null) {
            a = context.getResources().getString(net.blip.android.R.string.common_google_play_services_notification_ticker);
        }
        if (i != 6 && i != 19) {
            d2 = zaf.b(context, i);
        } else {
            d2 = zaf.d(context, "common_google_play_services_resolution_required_text", zaf.c(context));
        }
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        Preconditions.e(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, null);
        notificationCompat$Builder.q = true;
        notificationCompat$Builder.h(16, true);
        notificationCompat$Builder.e = NotificationCompat$Builder.c(a);
        ?? obj = new Object();
        obj.b = NotificationCompat$Builder.c(d2);
        notificationCompat$Builder.i(obj);
        PackageManager packageManager = context.getPackageManager();
        if (DeviceProperties.a == null) {
            DeviceProperties.a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        boolean booleanValue = DeviceProperties.a.booleanValue();
        int i3 = R.drawable.stat_sys_warning;
        if (booleanValue) {
            int i4 = context.getApplicationInfo().icon;
            if (i4 != 0) {
                i3 = i4;
            }
            notificationCompat$Builder.A.icon = i3;
            notificationCompat$Builder.j = 2;
            if (DeviceProperties.a(context)) {
                notificationCompat$Builder.b.add(new NotificationCompat$Action(2131230815, pendingIntent, resources.getString(net.blip.android.R.string.common_open_on_phone)));
            } else {
                notificationCompat$Builder.g = pendingIntent;
            }
        } else {
            notificationCompat$Builder.A.icon = R.drawable.stat_sys_warning;
            String string = resources.getString(net.blip.android.R.string.common_google_play_services_notification_ticker);
            notificationCompat$Builder.A.tickerText = NotificationCompat$Builder.c(string);
            notificationCompat$Builder.A.when = System.currentTimeMillis();
            notificationCompat$Builder.g = pendingIntent;
            notificationCompat$Builder.f(d2);
        }
        synchronized (c) {
        }
        NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
        String string2 = context.getResources().getString(net.blip.android.R.string.common_google_play_services_notification_channel_name);
        if (notificationChannel == null) {
            notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string2, 4));
        } else if (!string2.contentEquals(notificationChannel.getName())) {
            notificationChannel.setName(string2);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        notificationCompat$Builder.x = "com.google.android.gms.availability";
        Notification b = notificationCompat$Builder.b();
        if (i != 1 && i != 2 && i != 3) {
            i2 = 39789;
        } else {
            GooglePlayServicesUtilLight.a.set(false);
            i2 = 10436;
        }
        notificationManager.notify(i2, b);
    }
}
