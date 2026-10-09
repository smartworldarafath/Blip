package net.blip.android.notifications;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.app.NotificationManagerCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NotificationFactoryKt {
    public static final PendingIntent a(Context context, Intent intent, String str) {
        intent.setData(new Uri.Builder().scheme("blip-notification").authority(context.getPackageName()).appendPath(str).build());
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 1275068416);
        broadcast.getClass();
        return broadcast;
    }

    public static PendingIntent b(Context context, Intent intent, int i, int i2) {
        int i3;
        boolean z = false;
        if ((i2 & 4) != 0) {
            i = 0;
        }
        if ((i2 & 8) != 0) {
            z = true;
        }
        if (z) {
            i3 = 1275068416;
        } else {
            i3 = 201326592;
        }
        PendingIntent activity = PendingIntent.getActivity(context, i, intent, i3);
        activity.getClass();
        return activity;
    }

    public static final void c(NotificationManagerCompat notificationManagerCompat, int i, Notification notification) {
        notificationManagerCompat.getClass();
        notification.getClass();
        if (!notificationManagerCompat.b.areNotificationsEnabled()) {
            return;
        }
        notificationManagerCompat.a(i, notification);
    }
}
