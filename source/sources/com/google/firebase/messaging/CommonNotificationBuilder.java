package com.google.firebase.messaging;

import android.os.SystemClock;
import androidx.core.app.NotificationCompat$Builder;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CommonNotificationBuilder {
    public static final AtomicInteger a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DisplayNotificationInfo {
        public final NotificationCompat$Builder a;
        public final String b;

        public DisplayNotificationInfo(NotificationCompat$Builder notificationCompat$Builder, String str) {
            this.a = notificationCompat$Builder;
            this.b = str;
        }
    }
}
