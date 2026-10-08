package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {
    public final Context a;
    public final Notification.Builder b;
    public final NotificationCompat$Builder c;
    public final Bundle d = new Bundle();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static void a(Notification.Builder builder, boolean z) {
            builder.setAllowSystemGeneratedContextualActions(z);
        }

        public static void b(Notification.Builder builder) {
            builder.setBubbleMetadata(null);
        }

        public static void c(Notification.Action.Builder builder) {
            builder.setContextual(false);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        public static void a(Notification.Action.Builder builder) {
            builder.setAuthenticationRequired(false);
        }

        public static void b(Notification.Builder builder, int i) {
            builder.setForegroundServiceBehavior(i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api36Impl {
        public static void a(Notification.Builder builder) {
            builder.setShortCriticalText(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.content.Context, android.content.res.Resources] */
    /* JADX WARN: Type inference failed for: r8v7 */
    public NotificationCompatBuilder(NotificationCompat$Builder notificationCompat$Builder) {
        boolean z;
        boolean z2;
        boolean z3;
        Icon e;
        int i;
        int i2;
        Bundle bundle;
        int i3;
        Icon icon;
        Bundle bundle2;
        int i4;
        this.c = notificationCompat$Builder;
        Context context = notificationCompat$Builder.a;
        ArrayList arrayList = notificationCompat$Builder.d;
        this.a = context;
        Notification.Builder builder = new Notification.Builder(context, notificationCompat$Builder.x);
        this.b = builder;
        Notification notification = notificationCompat$Builder.A;
        ?? r8 = 0;
        Notification.Builder lights = builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        int i5 = 0;
        if ((notification.flags & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        Notification.Builder ongoing = lights.setOngoing(z);
        if ((notification.flags & 8) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Notification.Builder onlyAlertOnce = ongoing.setOnlyAlertOnce(z2);
        if ((notification.flags & 16) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        onlyAlertOnce.setAutoCancel(z3).setDefaults(notification.defaults).setContentTitle(notificationCompat$Builder.e).setContentText(notificationCompat$Builder.f).setContentInfo(null).setContentIntent(notificationCompat$Builder.g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setNumber(notificationCompat$Builder.i).setProgress(notificationCompat$Builder.n, notificationCompat$Builder.o, notificationCompat$Builder.p);
        IconCompat iconCompat = notificationCompat$Builder.h;
        if (iconCompat == null) {
            e = null;
        } else {
            e = iconCompat.e(context);
        }
        builder.setLargeIcon(e);
        builder.setSubText(notificationCompat$Builder.m).setUsesChronometer(false).setPriority(notificationCompat$Builder.j);
        Iterator it = notificationCompat$Builder.b.iterator();
        while (it.hasNext()) {
            NotificationCompat$Action notificationCompat$Action = (NotificationCompat$Action) it.next();
            if (notificationCompat$Action.b == null && (i4 = notificationCompat$Action.e) != 0) {
                notificationCompat$Action.b = IconCompat.a(r8, "", i4);
            }
            IconCompat iconCompat2 = notificationCompat$Action.b;
            boolean z4 = notificationCompat$Action.c;
            Bundle bundle3 = notificationCompat$Action.a;
            if (iconCompat2 != 0) {
                icon = iconCompat2.e(r8);
            } else {
                icon = r8;
            }
            Notification.Action.Builder builder2 = new Notification.Action.Builder(icon, notificationCompat$Action.f, notificationCompat$Action.g);
            if (bundle3 != null) {
                bundle2 = new Bundle(bundle3);
            } else {
                bundle2 = new Bundle();
            }
            bundle2.putBoolean("android.support.allowGeneratedReplies", z4);
            builder2.setAllowGeneratedReplies(z4);
            bundle2.putInt("android.support.action.semanticAction", 0);
            builder2.setSemanticAction(0);
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 29) {
                Api29Impl.c(builder2);
            }
            if (i6 >= 31) {
                Api31Impl.a(builder2);
            }
            bundle2.putBoolean("android.support.action.showsUserInterface", notificationCompat$Action.d);
            builder2.addExtras(bundle2);
            this.b.addAction(builder2.build());
            r8 = 0;
        }
        Bundle bundle4 = notificationCompat$Builder.u;
        if (bundle4 != null) {
            this.d.putAll(bundle4);
        }
        this.b.setShowWhen(notificationCompat$Builder.k);
        this.b.setLocalOnly(notificationCompat$Builder.q);
        this.b.setGroup(null);
        this.b.setSortKey(null);
        this.b.setGroupSummary(false);
        this.b.setCategory(notificationCompat$Builder.t);
        this.b.setColor(notificationCompat$Builder.v);
        this.b.setVisibility(notificationCompat$Builder.w);
        this.b.setPublicVersion(null);
        this.b.setSound(notification.sound, notification.audioAttributes);
        ArrayList arrayList2 = notificationCompat$Builder.B;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                this.b.addPerson((String) it2.next());
            }
        }
        if (arrayList.size() > 0) {
            if (notificationCompat$Builder.u == null) {
                notificationCompat$Builder.u = new Bundle();
            }
            Bundle bundle5 = notificationCompat$Builder.u.getBundle("android.car.EXTENSIONS");
            bundle5 = bundle5 == null ? new Bundle() : bundle5;
            Bundle bundle6 = new Bundle(bundle5);
            Bundle bundle7 = new Bundle();
            int i7 = 0;
            while (i7 < arrayList.size()) {
                String num = Integer.toString(i7);
                NotificationCompat$Action notificationCompat$Action2 = (NotificationCompat$Action) arrayList.get(i7);
                Bundle bundle8 = new Bundle();
                if (notificationCompat$Action2.b == null && (i3 = notificationCompat$Action2.e) != 0) {
                    notificationCompat$Action2.b = IconCompat.a(null, "", i3);
                }
                IconCompat iconCompat3 = notificationCompat$Action2.b;
                Bundle bundle9 = notificationCompat$Action2.a;
                if (iconCompat3 != null) {
                    i2 = iconCompat3.b();
                } else {
                    i2 = i5;
                }
                bundle8.putInt("icon", i2);
                bundle8.putCharSequence("title", notificationCompat$Action2.f);
                bundle8.putParcelable("actionIntent", notificationCompat$Action2.g);
                if (bundle9 != null) {
                    bundle = new Bundle(bundle9);
                } else {
                    bundle = new Bundle();
                }
                bundle.putBoolean("android.support.allowGeneratedReplies", notificationCompat$Action2.c);
                bundle8.putBundle("extras", bundle);
                bundle8.putParcelableArray("remoteInputs", null);
                bundle8.putBoolean("showsUserInterface", notificationCompat$Action2.d);
                bundle8.putInt("semanticAction", 0);
                bundle7.putBundle(num, bundle8);
                i7++;
                i5 = 0;
            }
            bundle5.putBundle("invisible_actions", bundle7);
            bundle6.putBundle("invisible_actions", bundle7);
            if (notificationCompat$Builder.u == null) {
                notificationCompat$Builder.u = new Bundle();
            }
            notificationCompat$Builder.u.putBundle("android.car.EXTENSIONS", bundle5);
            this.d.putBundle("android.car.EXTENSIONS", bundle6);
        }
        this.b.setExtras(notificationCompat$Builder.u);
        this.b.setRemoteInputHistory(null);
        this.b.setBadgeIconType(0);
        this.b.setSettingsText(null);
        this.b.setShortcutId(null);
        this.b.setTimeoutAfter(0L);
        this.b.setGroupAlertBehavior(0);
        if (notificationCompat$Builder.s) {
            this.b.setColorized(notificationCompat$Builder.r);
        }
        if (!TextUtils.isEmpty(notificationCompat$Builder.x)) {
            this.b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        Iterator it3 = notificationCompat$Builder.c.iterator();
        while (it3.hasNext()) {
            this.b.addPerson(((Person) it3.next()).a());
        }
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            Api29Impl.a(this.b, notificationCompat$Builder.z);
            Api29Impl.b(this.b);
        }
        if (i8 >= 31 && (i = notificationCompat$Builder.y) != 0) {
            Api31Impl.b(this.b, i);
        }
        if (i8 >= 36) {
            Api36Impl.a(this.b);
        }
    }
}
