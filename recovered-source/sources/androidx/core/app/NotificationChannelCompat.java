package androidx.core.app;

import android.app.Notification;
import android.media.AudioAttributes;
import android.net.Uri;
import android.provider.Settings;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NotificationChannelCompat {
    public final String a;
    public String b;
    public int c;
    public String d;
    public Uri e = Settings.System.DEFAULT_NOTIFICATION_URI;
    public AudioAttributes f = Notification.AUDIO_ATTRIBUTES_DEFAULT;
    public boolean g;
    public long[] h;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public final NotificationChannelCompat a;

        public Builder(String str, int i) {
            this.a = new NotificationChannelCompat(str, i);
        }
    }

    public NotificationChannelCompat(String str, int i) {
        this.a = str;
        this.c = i;
    }
}
