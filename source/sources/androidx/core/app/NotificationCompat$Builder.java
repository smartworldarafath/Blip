package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NotificationCompat$Builder {
    public final Notification A;
    public final ArrayList B;
    public final Context a;
    public CharSequence e;
    public CharSequence f;
    public PendingIntent g;
    public IconCompat h;
    public int i;
    public int j;
    public NotificationCompat$Style l;
    public CharSequence m;
    public int n;
    public int o;
    public boolean p;
    public boolean r;
    public boolean s;
    public String t;
    public Bundle u;
    public String x;
    public final boolean z;
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public final ArrayList d = new ArrayList();
    public boolean k = true;
    public boolean q = false;
    public int v = 0;
    public int w = 0;
    public int y = 0;

    public NotificationCompat$Builder(Context context, String str) {
        Notification notification = new Notification();
        this.A = notification;
        this.a = context;
        this.x = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.j = 0;
        this.B = new ArrayList();
        this.z = true;
    }

    public static CharSequence c(CharSequence charSequence) {
        if (charSequence == null) {
            return charSequence;
        }
        if (charSequence.length() > 5120) {
            return charSequence.subSequence(0, 5120);
        }
        return charSequence;
    }

    public final void a(NotificationCompat$Action notificationCompat$Action) {
        this.b.add(notificationCompat$Action);
    }

    public final Notification b() {
        Bundle bundle;
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
        NotificationCompat$Builder notificationCompat$Builder = notificationCompatBuilder.c;
        NotificationCompat$Style notificationCompat$Style = notificationCompat$Builder.l;
        if (notificationCompat$Style != null) {
            notificationCompat$Style.a(notificationCompatBuilder);
        }
        Notification build = notificationCompatBuilder.b.build();
        if (notificationCompat$Style != null) {
            notificationCompat$Builder.l.getClass();
        }
        if (notificationCompat$Style != null && (bundle = build.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", notificationCompat$Style.b());
        }
        return build;
    }

    public final void d(boolean z) {
        h(16, z);
    }

    public final void e() {
        this.r = true;
        this.s = true;
    }

    public final void f(String str) {
        this.f = c(str);
    }

    public final void g(String str) {
        this.e = c(str);
    }

    public final void h(int i, boolean z) {
        Notification notification = this.A;
        if (z) {
            notification.flags = i | notification.flags;
        } else {
            notification.flags = (~i) & notification.flags;
        }
    }

    public final void i(NotificationCompat$Style notificationCompat$Style) {
        if (this.l != notificationCompat$Style) {
            this.l = notificationCompat$Style;
            if (notificationCompat$Style.a != this) {
                notificationCompat$Style.a = this;
                i(notificationCompat$Style);
            }
        }
    }

    public final void j(String str) {
        this.m = c(str);
    }
}
