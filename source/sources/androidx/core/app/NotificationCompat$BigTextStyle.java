package androidx.core.app;

import android.app.Notification;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NotificationCompat$BigTextStyle extends NotificationCompat$Style {
    public CharSequence b;

    @Override // androidx.core.app.NotificationCompat$Style
    public final void a(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        new Notification.BigTextStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b).setBigContentTitle(null).bigText(this.b);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String b() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }
}
