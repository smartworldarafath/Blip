package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.media.AudioAttributes;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.graphics.drawable.IconCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.CommonNotificationBuilder;
import defpackage.f3;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class DisplayNotification {
    public final ExecutorService a;
    public final FirebaseMessagingService b;
    public final NotificationParams c;

    public DisplayNotification(FirebaseMessagingService firebaseMessagingService, NotificationParams notificationParams, ExecutorService executorService) {
        this.a = executorService;
        this.b = firebaseMessagingService;
        this.c = notificationParams;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(87:5|(2:7|(2:9|(2:10|(2:12|(3:14|15|(1:17)(0))(1:18))(1:19)))(0))(0)|20|(84:275|276|(1:24)|25|26|27|(1:29)|272|31|32|33|34|35|(75:251|(71:253|(1:255)|38|(1:40)|41|(1:43)|44|(2:46|(1:239)(61:48|49|(1:51)|52|(1:54)(2:231|(1:236)(1:235))|55|(1:57)(1:230)|58|(1:60)(5:218|(1:220)|221|(1:223)(1:229)|(1:225)(2:226|(1:228)))|61|(1:63)(6:200|(4:203|(2:211|212)(1:209)|210|201)|213|214|(1:216)|217)|64|(1:66)(1:199)|(1:68)|69|(44:195|196|(1:75)|76|(1:78)|79|(38:186|(1:190)|(1:83)|84|(34:181|(1:185)|(1:88)|89|(30:178|(1:180)|(1:93)|94|(26:174|175|(1:98)|99|(3:164|165|(23:167|(1:169)|170|(1:103)|104|(4:149|150|151|(2:153|(17:155|(3:108|(1:113)(1:111)|112)|114|(1:116)|117|(1:119)|120|(1:122)|123|(1:125)|126|(6:134|135|(1:137)(1:144)|138|(1:140)(1:143)|141)|128|129|(1:131)|132|133)(2:156|157))(2:158|159))|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)(2:171|172))|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|71|(44:191|192|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|73|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133))(1:250)|240|(2:245|246)|(1:243)(1:244)|49|(0)|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|(0)(0)|64|(0)(0)|(0)|69|(0)|71|(0)|73|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|256|(71:258|(1:260)|38|(0)|41|(0)|44|(0)(0)|240|(0)|(0)(0)|49|(0)|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|(0)(0)|64|(0)(0)|(0)|69|(0)|71|(0)|73|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)(1:268)|261|(3:263|(1:265)(1:267)|266)|38|(0)|41|(0)|44|(0)(0)|240|(0)|(0)(0)|49|(0)|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|(0)(0)|64|(0)(0)|(0)|69|(0)|71|(0)|73|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|37|38|(0)|41|(0)|44|(0)(0)|240|(0)|(0)(0)|49|(0)|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|(0)(0)|64|(0)(0)|(0)|69|(0)|71|(0)|73|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133)|22|(0)|25|26|27|(0)|272|31|32|33|34|35|(0)|37|38|(0)|41|(0)|44|(0)(0)|240|(0)|(0)(0)|49|(0)|52|(0)(0)|55|(0)(0)|58|(0)(0)|61|(0)(0)|64|(0)(0)|(0)|69|(0)|71|(0)|73|(0)|76|(0)|79|(0)|81|(0)|84|(0)|86|(0)|89|(0)|91|(0)|94|(0)|96|(0)|99|(0)|101|(0)|104|(0)|106|(0)|114|(0)|117|(0)|120|(0)|123|(0)|126|(0)|128|129|(0)|132|133) */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x00b3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x00b4, code lost:
    
        android.util.Log.w("FirebaseMessaging", "Couldn't get own application info: " + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00af, code lost:
    
        if (r0 != null) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x059e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x05c9  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0651  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x05e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x04b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0476 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x040d  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0390 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0369 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x01dc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad A[Catch: NameNotFoundException -> 0x00b3, TRY_LEAVE, TryCatch #6 {NameNotFoundException -> 0x00b3, blocks: (B:27:0x00a7, B:29:0x00ad), top: B:26:0x00a7 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03c2  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x04a4  */
    /* JADX WARN: Type inference failed for: r0v102, types: [int] */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v184 */
    /* JADX WARN: Type inference failed for: r0v185 */
    /* JADX WARN: Type inference failed for: r11v37, types: [java.lang.Object, androidx.core.app.NotificationCompat$Style, androidx.core.app.NotificationCompat$BigTextStyle] */
    /* JADX WARN: Type inference failed for: r15v0, types: [androidx.core.app.NotificationCompat$Builder] */
    /* JADX WARN: Type inference failed for: r5v11, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a() {
        ImageDownload imageDownload;
        FirebaseMessagingService firebaseMessagingService;
        NotificationParams notificationParams;
        Bundle bundle;
        String d;
        String d2;
        String e;
        int i;
        int i2;
        int i3;
        String e2;
        Uri defaultUri;
        String e3;
        Uri uri;
        Intent launchIntentForPackage;
        PendingIntent activity;
        PendingIntent broadcast;
        String e4;
        Integer valueOf;
        String e5;
        Integer b;
        Integer b2;
        Integer b3;
        String e6;
        Long valueOf2;
        JSONArray c;
        long[] jArr;
        JSONArray c2;
        int[] iArr;
        ?? r0;
        String e7;
        IconCompat iconCompat;
        IconCompat iconCompat2;
        boolean z;
        int i4;
        int i5;
        String string;
        ApplicationInfo applicationInfo;
        if (this.c.a("gcm.n.noui")) {
            return true;
        }
        FirebaseMessagingService firebaseMessagingService2 = this.b;
        if (!((KeyguardManager) firebaseMessagingService2.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            int myPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) firebaseMessagingService2.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == myPid) {
                        if (next.importance == 100) {
                            return false;
                        }
                    }
                }
            }
        }
        String e8 = this.c.e("gcm.n.image");
        if (!TextUtils.isEmpty(e8)) {
            try {
                imageDownload = new ImageDownload(new URL(e8));
            } catch (MalformedURLException unused) {
                Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + e8);
            }
            if (imageDownload != null) {
                ExecutorService executorService = this.a;
                TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
                imageDownload.k = executorService.submit(new f3(7, imageDownload, taskCompletionSource));
                imageDownload.l = taskCompletionSource.a;
            }
            firebaseMessagingService = this.b;
            notificationParams = this.c;
            AtomicInteger atomicInteger = CommonNotificationBuilder.a;
            applicationInfo = firebaseMessagingService.getPackageManager().getApplicationInfo(firebaseMessagingService.getPackageName(), 128);
            if (applicationInfo != null) {
                bundle = applicationInfo.metaData;
            }
            bundle = Bundle.EMPTY;
            Bundle bundle2 = bundle;
            String e9 = notificationParams.e("gcm.n.android_channel_id");
            if (firebaseMessagingService.getPackageManager().getApplicationInfo(firebaseMessagingService.getPackageName(), 0).targetSdkVersion >= 26) {
                NotificationManager notificationManager = (NotificationManager) firebaseMessagingService.getSystemService(NotificationManager.class);
                if (!TextUtils.isEmpty(e9)) {
                    if (notificationManager.getNotificationChannel(e9) == null) {
                        Log.w("FirebaseMessaging", "Notification Channel requested (" + e9 + ") has not been created by the app. Manifest configuration, or default, value will be used.");
                    }
                    AtomicInteger atomicInteger2 = CommonNotificationBuilder.a;
                    String packageName = firebaseMessagingService.getPackageName();
                    Resources resources = firebaseMessagingService.getResources();
                    PackageManager packageManager = firebaseMessagingService.getPackageManager();
                    ?? notificationCompat$Builder = new NotificationCompat$Builder(firebaseMessagingService, e9);
                    d = notificationParams.d(resources, packageName, "gcm.n.title");
                    if (!TextUtils.isEmpty(d)) {
                        notificationCompat$Builder.g(d);
                    }
                    d2 = notificationParams.d(resources, packageName, "gcm.n.body");
                    if (!TextUtils.isEmpty(d2)) {
                        notificationCompat$Builder.f(d2);
                        ?? obj = new Object();
                        obj.b = NotificationCompat$Builder.c(d2);
                        notificationCompat$Builder.i(obj);
                    }
                    e = notificationParams.e("gcm.n.icon");
                    if (!TextUtils.isEmpty(e)) {
                        i3 = resources.getIdentifier(e, "drawable", packageName);
                        if (i3 != 0 || (i3 = resources.getIdentifier(e, "mipmap", packageName)) != 0) {
                            i = 1;
                            notificationCompat$Builder.A.icon = i3;
                            e2 = notificationParams.e("gcm.n.sound2");
                            if (TextUtils.isEmpty(e2)) {
                                e2 = notificationParams.e("gcm.n.sound");
                            }
                            if (!TextUtils.isEmpty(e2)) {
                                defaultUri = null;
                            } else if (!"default".equals(e2) && resources.getIdentifier(e2, "raw", packageName) != 0) {
                                defaultUri = Uri.parse("android.resource://" + packageName + "/raw/" + e2);
                            } else {
                                defaultUri = RingtoneManager.getDefaultUri(2);
                            }
                            if (defaultUri == null) {
                                Notification notification = notificationCompat$Builder.A;
                                notification.sound = defaultUri;
                                notification.audioStreamType = -1;
                                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
                            }
                            e3 = notificationParams.e("gcm.n.click_action");
                            if (TextUtils.isEmpty(e3)) {
                                launchIntentForPackage = new Intent(e3);
                                launchIntentForPackage.setPackage(packageName);
                                launchIntentForPackage.setFlags(268435456);
                            } else {
                                String e10 = notificationParams.e("gcm.n.link_android");
                                if (TextUtils.isEmpty(e10)) {
                                    e10 = notificationParams.e("gcm.n.link");
                                }
                                if (!TextUtils.isEmpty(e10)) {
                                    uri = Uri.parse(e10);
                                } else {
                                    uri = null;
                                }
                                if (uri != null) {
                                    launchIntentForPackage = new Intent("android.intent.action.VIEW");
                                    launchIntentForPackage.setPackage(packageName);
                                    launchIntentForPackage.setData(uri);
                                } else {
                                    launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
                                    if (launchIntentForPackage == null) {
                                        Log.w("FirebaseMessaging", "No activity found to launch app");
                                    }
                                }
                            }
                            if (launchIntentForPackage != null) {
                                activity = null;
                            } else {
                                launchIntentForPackage.addFlags(67108864);
                                Bundle bundle3 = notificationParams.a;
                                Bundle bundle4 = new Bundle(bundle3);
                                for (String str : bundle3.keySet()) {
                                    if (str.startsWith("google.c.") || str.startsWith("gcm.n.") || str.startsWith("gcm.notification.")) {
                                        bundle4.remove(str);
                                    }
                                }
                                launchIntentForPackage.putExtras(bundle4);
                                if (notificationParams.a("google.c.a.e")) {
                                    launchIntentForPackage.putExtra("gcm.n.analytics_data", notificationParams.g());
                                }
                                activity = PendingIntent.getActivity(firebaseMessagingService, atomicInteger2.incrementAndGet(), launchIntentForPackage, 1140850688);
                            }
                            notificationCompat$Builder.g = activity;
                            if (notificationParams.a("google.c.a.e")) {
                                broadcast = null;
                            } else {
                                broadcast = PendingIntent.getBroadcast(firebaseMessagingService, atomicInteger2.incrementAndGet(), new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(firebaseMessagingService.getPackageName()).putExtra("wrapped_intent", new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(notificationParams.g())), 1140850688);
                            }
                            if (broadcast != null) {
                                notificationCompat$Builder.A.deleteIntent = broadcast;
                            }
                            e4 = notificationParams.e("gcm.n.color");
                            if (!TextUtils.isEmpty(e4)) {
                                try {
                                    valueOf = Integer.valueOf(Color.parseColor(e4));
                                } catch (IllegalArgumentException unused2) {
                                    Log.w("FirebaseMessaging", "Color is invalid: " + e4 + ". Notification will use default color.");
                                }
                                if (valueOf != null) {
                                    notificationCompat$Builder.v = valueOf.intValue();
                                }
                                notificationCompat$Builder.d(!notificationParams.a("gcm.n.sticky"));
                                notificationCompat$Builder.q = notificationParams.a("gcm.n.local_only");
                                e5 = notificationParams.e("gcm.n.ticker");
                                if (e5 != null) {
                                    notificationCompat$Builder.A.tickerText = NotificationCompat$Builder.c(e5);
                                }
                                b = notificationParams.b("gcm.n.notification_priority");
                                if (b != null) {
                                    if (b.intValue() < -2 || b.intValue() > 2) {
                                        Log.w("FirebaseMessaging", "notificationPriority is invalid " + b + ". Skipping setting notificationPriority.");
                                    }
                                    if (b != null) {
                                        notificationCompat$Builder.j = b.intValue();
                                    }
                                    b2 = notificationParams.b("gcm.n.visibility");
                                    if (b2 != null) {
                                        if (b2.intValue() < -1 || b2.intValue() > i) {
                                            Log.w("NotificationParams", "visibility is invalid: " + b2 + ". Skipping setting visibility.");
                                        }
                                        if (b2 != null) {
                                            notificationCompat$Builder.w = b2.intValue();
                                        }
                                        b3 = notificationParams.b("gcm.n.notification_count");
                                        if (b3 != null) {
                                            if (b3.intValue() < 0) {
                                                Log.w("FirebaseMessaging", "notificationCount is invalid: " + b3 + ". Skipping setting notificationCount.");
                                            }
                                            if (b3 != null) {
                                                notificationCompat$Builder.i = b3.intValue();
                                            }
                                            e6 = notificationParams.e("gcm.n.event_time");
                                            if (!TextUtils.isEmpty(e6)) {
                                                try {
                                                    valueOf2 = Long.valueOf(Long.parseLong(e6));
                                                } catch (NumberFormatException unused3) {
                                                    Log.w("NotificationParams", "Couldn't parse value of " + NotificationParams.h("gcm.n.event_time") + "(" + e6 + ") into a long");
                                                }
                                                if (valueOf2 != null) {
                                                    notificationCompat$Builder.k = true;
                                                    notificationCompat$Builder.A.when = valueOf2.longValue();
                                                }
                                                c = notificationParams.c("gcm.n.vibrate_timings");
                                                if (c != null) {
                                                    try {
                                                    } catch (NumberFormatException | JSONException unused4) {
                                                        Log.w("NotificationParams", "User defined vibrateTimings is invalid: " + c + ". Skipping setting vibrateTimings.");
                                                    }
                                                    if (c.length() > 1) {
                                                        int length = c.length();
                                                        jArr = new long[length];
                                                        for (int i6 = 0; i6 < length; i6++) {
                                                            jArr[i6] = c.optLong(i6);
                                                        }
                                                        if (jArr != null) {
                                                            notificationCompat$Builder.A.vibrate = jArr;
                                                        }
                                                        c2 = notificationParams.c("gcm.n.light_settings");
                                                        if (c2 != null) {
                                                            iArr = new int[3];
                                                            try {
                                                            } catch (IllegalArgumentException e11) {
                                                                Log.w("NotificationParams", "LightSettings is invalid: " + c2 + ". " + e11.getMessage() + ". Skipping setting LightSettings");
                                                            } catch (JSONException unused5) {
                                                                Log.w("NotificationParams", "LightSettings is invalid: " + c2 + ". Skipping setting LightSettings");
                                                            }
                                                            if (c2.length() == 3) {
                                                                int parseColor = Color.parseColor(c2.optString(0));
                                                                if (parseColor != -16777216) {
                                                                    iArr[0] = parseColor;
                                                                    iArr[1] = c2.optInt(1);
                                                                    iArr[2] = c2.optInt(2);
                                                                    if (iArr != null) {
                                                                        int i7 = iArr[0];
                                                                        int i8 = iArr[1];
                                                                        int i9 = iArr[2];
                                                                        Notification notification2 = notificationCompat$Builder.A;
                                                                        notification2.ledARGB = i7;
                                                                        notification2.ledOnMS = i8;
                                                                        notification2.ledOffMS = i9;
                                                                        if (i8 != 0 && i9 != 0) {
                                                                            i4 = 1;
                                                                        } else {
                                                                            i4 = 0;
                                                                        }
                                                                        notification2.flags = i4 | ((-2) & notification2.flags);
                                                                    }
                                                                    boolean a = notificationParams.a("gcm.n.default_sound");
                                                                    boolean z2 = a;
                                                                    if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                                                        z2 = (a ? 1 : 0) | 2;
                                                                    }
                                                                    r0 = z2;
                                                                    if (notificationParams.a("gcm.n.default_light_settings")) {
                                                                        r0 = (z2 ? 1 : 0) | 4;
                                                                    }
                                                                    Notification notification3 = notificationCompat$Builder.A;
                                                                    notification3.defaults = r0;
                                                                    if ((r0 & 4) != 0) {
                                                                        notification3.flags |= 1;
                                                                    }
                                                                    e7 = notificationParams.e("gcm.n.tag");
                                                                    if (TextUtils.isEmpty(e7)) {
                                                                        e7 = "FCM-Notification:" + SystemClock.uptimeMillis();
                                                                    }
                                                                    CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                                                    if (imageDownload != null) {
                                                                        try {
                                                                            Task task = imageDownload.l;
                                                                            Preconditions.e(task);
                                                                            Bitmap bitmap = (Bitmap) Tasks.b(task, 5L);
                                                                            if (bitmap == null) {
                                                                                iconCompat = null;
                                                                            } else {
                                                                                iconCompat = new IconCompat(1);
                                                                                iconCompat.b = bitmap;
                                                                            }
                                                                            notificationCompat$Builder.h = iconCompat;
                                                                            ?? obj2 = new Object();
                                                                            if (bitmap == null) {
                                                                                iconCompat2 = null;
                                                                                z = true;
                                                                            } else {
                                                                                z = true;
                                                                                iconCompat2 = new IconCompat(1);
                                                                                iconCompat2.b = bitmap;
                                                                            }
                                                                            obj2.b = iconCompat2;
                                                                            obj2.c = null;
                                                                            obj2.d = z;
                                                                            notificationCompat$Builder.i(obj2);
                                                                        } catch (InterruptedException unused6) {
                                                                            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
                                                                            imageDownload.close();
                                                                            Thread.currentThread().interrupt();
                                                                        } catch (ExecutionException e12) {
                                                                            Log.w("FirebaseMessaging", "Failed to download image: " + e12.getCause());
                                                                        } catch (TimeoutException unused7) {
                                                                            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
                                                                            imageDownload.close();
                                                                        }
                                                                    }
                                                                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                                                                        Log.d("FirebaseMessaging", "Showing notification");
                                                                    }
                                                                    ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo.b, 0, displayNotificationInfo.a.b());
                                                                    return true;
                                                                }
                                                                throw new IllegalArgumentException("Transparent color is invalid");
                                                            }
                                                            throw new JSONException("lightSettings don't have all three fields");
                                                        }
                                                        iArr = null;
                                                        if (iArr != null) {
                                                        }
                                                        boolean a2 = notificationParams.a("gcm.n.default_sound");
                                                        boolean z22 = a2;
                                                        if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                                        }
                                                        r0 = z22;
                                                        if (notificationParams.a("gcm.n.default_light_settings")) {
                                                        }
                                                        Notification notification32 = notificationCompat$Builder.A;
                                                        notification32.defaults = r0;
                                                        if ((r0 & 4) != 0) {
                                                        }
                                                        e7 = notificationParams.e("gcm.n.tag");
                                                        if (TextUtils.isEmpty(e7)) {
                                                        }
                                                        CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo2 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                                        if (imageDownload != null) {
                                                        }
                                                        if (Log.isLoggable("FirebaseMessaging", 3)) {
                                                        }
                                                        ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo2.b, 0, displayNotificationInfo2.a.b());
                                                        return true;
                                                    }
                                                    throw new JSONException("vibrateTimings have invalid length");
                                                }
                                                jArr = null;
                                                if (jArr != null) {
                                                }
                                                c2 = notificationParams.c("gcm.n.light_settings");
                                                if (c2 != null) {
                                                }
                                                iArr = null;
                                                if (iArr != null) {
                                                }
                                                boolean a22 = notificationParams.a("gcm.n.default_sound");
                                                boolean z222 = a22;
                                                if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                                }
                                                r0 = z222;
                                                if (notificationParams.a("gcm.n.default_light_settings")) {
                                                }
                                                Notification notification322 = notificationCompat$Builder.A;
                                                notification322.defaults = r0;
                                                if ((r0 & 4) != 0) {
                                                }
                                                e7 = notificationParams.e("gcm.n.tag");
                                                if (TextUtils.isEmpty(e7)) {
                                                }
                                                CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo22 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                                if (imageDownload != null) {
                                                }
                                                if (Log.isLoggable("FirebaseMessaging", 3)) {
                                                }
                                                ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo22.b, 0, displayNotificationInfo22.a.b());
                                                return true;
                                            }
                                            valueOf2 = null;
                                            if (valueOf2 != null) {
                                            }
                                            c = notificationParams.c("gcm.n.vibrate_timings");
                                            if (c != null) {
                                            }
                                            jArr = null;
                                            if (jArr != null) {
                                            }
                                            c2 = notificationParams.c("gcm.n.light_settings");
                                            if (c2 != null) {
                                            }
                                            iArr = null;
                                            if (iArr != null) {
                                            }
                                            boolean a222 = notificationParams.a("gcm.n.default_sound");
                                            boolean z2222 = a222;
                                            if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                            }
                                            r0 = z2222;
                                            if (notificationParams.a("gcm.n.default_light_settings")) {
                                            }
                                            Notification notification3222 = notificationCompat$Builder.A;
                                            notification3222.defaults = r0;
                                            if ((r0 & 4) != 0) {
                                            }
                                            e7 = notificationParams.e("gcm.n.tag");
                                            if (TextUtils.isEmpty(e7)) {
                                            }
                                            CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                            if (imageDownload != null) {
                                            }
                                            if (Log.isLoggable("FirebaseMessaging", 3)) {
                                            }
                                            ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo222.b, 0, displayNotificationInfo222.a.b());
                                            return true;
                                        }
                                        b3 = null;
                                        if (b3 != null) {
                                        }
                                        e6 = notificationParams.e("gcm.n.event_time");
                                        if (!TextUtils.isEmpty(e6)) {
                                        }
                                        valueOf2 = null;
                                        if (valueOf2 != null) {
                                        }
                                        c = notificationParams.c("gcm.n.vibrate_timings");
                                        if (c != null) {
                                        }
                                        jArr = null;
                                        if (jArr != null) {
                                        }
                                        c2 = notificationParams.c("gcm.n.light_settings");
                                        if (c2 != null) {
                                        }
                                        iArr = null;
                                        if (iArr != null) {
                                        }
                                        boolean a2222 = notificationParams.a("gcm.n.default_sound");
                                        boolean z22222 = a2222;
                                        if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                        }
                                        r0 = z22222;
                                        if (notificationParams.a("gcm.n.default_light_settings")) {
                                        }
                                        Notification notification32222 = notificationCompat$Builder.A;
                                        notification32222.defaults = r0;
                                        if ((r0 & 4) != 0) {
                                        }
                                        e7 = notificationParams.e("gcm.n.tag");
                                        if (TextUtils.isEmpty(e7)) {
                                        }
                                        CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo2222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                        if (imageDownload != null) {
                                        }
                                        if (Log.isLoggable("FirebaseMessaging", 3)) {
                                        }
                                        ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo2222.b, 0, displayNotificationInfo2222.a.b());
                                        return true;
                                    }
                                    b2 = null;
                                    if (b2 != null) {
                                    }
                                    b3 = notificationParams.b("gcm.n.notification_count");
                                    if (b3 != null) {
                                    }
                                    b3 = null;
                                    if (b3 != null) {
                                    }
                                    e6 = notificationParams.e("gcm.n.event_time");
                                    if (!TextUtils.isEmpty(e6)) {
                                    }
                                    valueOf2 = null;
                                    if (valueOf2 != null) {
                                    }
                                    c = notificationParams.c("gcm.n.vibrate_timings");
                                    if (c != null) {
                                    }
                                    jArr = null;
                                    if (jArr != null) {
                                    }
                                    c2 = notificationParams.c("gcm.n.light_settings");
                                    if (c2 != null) {
                                    }
                                    iArr = null;
                                    if (iArr != null) {
                                    }
                                    boolean a22222 = notificationParams.a("gcm.n.default_sound");
                                    boolean z222222 = a22222;
                                    if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                    }
                                    r0 = z222222;
                                    if (notificationParams.a("gcm.n.default_light_settings")) {
                                    }
                                    Notification notification322222 = notificationCompat$Builder.A;
                                    notification322222.defaults = r0;
                                    if ((r0 & 4) != 0) {
                                    }
                                    e7 = notificationParams.e("gcm.n.tag");
                                    if (TextUtils.isEmpty(e7)) {
                                    }
                                    CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo22222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                    if (imageDownload != null) {
                                    }
                                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                                    }
                                    ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo22222.b, 0, displayNotificationInfo22222.a.b());
                                    return true;
                                }
                                b = null;
                                if (b != null) {
                                }
                                b2 = notificationParams.b("gcm.n.visibility");
                                if (b2 != null) {
                                }
                                b2 = null;
                                if (b2 != null) {
                                }
                                b3 = notificationParams.b("gcm.n.notification_count");
                                if (b3 != null) {
                                }
                                b3 = null;
                                if (b3 != null) {
                                }
                                e6 = notificationParams.e("gcm.n.event_time");
                                if (!TextUtils.isEmpty(e6)) {
                                }
                                valueOf2 = null;
                                if (valueOf2 != null) {
                                }
                                c = notificationParams.c("gcm.n.vibrate_timings");
                                if (c != null) {
                                }
                                jArr = null;
                                if (jArr != null) {
                                }
                                c2 = notificationParams.c("gcm.n.light_settings");
                                if (c2 != null) {
                                }
                                iArr = null;
                                if (iArr != null) {
                                }
                                boolean a222222 = notificationParams.a("gcm.n.default_sound");
                                boolean z2222222 = a222222;
                                if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                }
                                r0 = z2222222;
                                if (notificationParams.a("gcm.n.default_light_settings")) {
                                }
                                Notification notification3222222 = notificationCompat$Builder.A;
                                notification3222222.defaults = r0;
                                if ((r0 & 4) != 0) {
                                }
                                e7 = notificationParams.e("gcm.n.tag");
                                if (TextUtils.isEmpty(e7)) {
                                }
                                CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                if (imageDownload != null) {
                                }
                                if (Log.isLoggable("FirebaseMessaging", 3)) {
                                }
                                ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo222222.b, 0, displayNotificationInfo222222.a.b());
                                return true;
                            }
                            i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
                            if (i5 != 0) {
                                try {
                                    valueOf = Integer.valueOf(firebaseMessagingService.getColor(i5));
                                } catch (Resources.NotFoundException unused8) {
                                    Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
                                }
                                if (valueOf != null) {
                                }
                                notificationCompat$Builder.d(!notificationParams.a("gcm.n.sticky"));
                                notificationCompat$Builder.q = notificationParams.a("gcm.n.local_only");
                                e5 = notificationParams.e("gcm.n.ticker");
                                if (e5 != null) {
                                }
                                b = notificationParams.b("gcm.n.notification_priority");
                                if (b != null) {
                                }
                                b = null;
                                if (b != null) {
                                }
                                b2 = notificationParams.b("gcm.n.visibility");
                                if (b2 != null) {
                                }
                                b2 = null;
                                if (b2 != null) {
                                }
                                b3 = notificationParams.b("gcm.n.notification_count");
                                if (b3 != null) {
                                }
                                b3 = null;
                                if (b3 != null) {
                                }
                                e6 = notificationParams.e("gcm.n.event_time");
                                if (!TextUtils.isEmpty(e6)) {
                                }
                                valueOf2 = null;
                                if (valueOf2 != null) {
                                }
                                c = notificationParams.c("gcm.n.vibrate_timings");
                                if (c != null) {
                                }
                                jArr = null;
                                if (jArr != null) {
                                }
                                c2 = notificationParams.c("gcm.n.light_settings");
                                if (c2 != null) {
                                }
                                iArr = null;
                                if (iArr != null) {
                                }
                                boolean a2222222 = notificationParams.a("gcm.n.default_sound");
                                boolean z22222222 = a2222222;
                                if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                                }
                                r0 = z22222222;
                                if (notificationParams.a("gcm.n.default_light_settings")) {
                                }
                                Notification notification32222222 = notificationCompat$Builder.A;
                                notification32222222.defaults = r0;
                                if ((r0 & 4) != 0) {
                                }
                                e7 = notificationParams.e("gcm.n.tag");
                                if (TextUtils.isEmpty(e7)) {
                                }
                                CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo2222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                                if (imageDownload != null) {
                                }
                                if (Log.isLoggable("FirebaseMessaging", 3)) {
                                }
                                ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo2222222.b, 0, displayNotificationInfo2222222.a.b());
                                return true;
                            }
                            valueOf = null;
                            if (valueOf != null) {
                            }
                            notificationCompat$Builder.d(!notificationParams.a("gcm.n.sticky"));
                            notificationCompat$Builder.q = notificationParams.a("gcm.n.local_only");
                            e5 = notificationParams.e("gcm.n.ticker");
                            if (e5 != null) {
                            }
                            b = notificationParams.b("gcm.n.notification_priority");
                            if (b != null) {
                            }
                            b = null;
                            if (b != null) {
                            }
                            b2 = notificationParams.b("gcm.n.visibility");
                            if (b2 != null) {
                            }
                            b2 = null;
                            if (b2 != null) {
                            }
                            b3 = notificationParams.b("gcm.n.notification_count");
                            if (b3 != null) {
                            }
                            b3 = null;
                            if (b3 != null) {
                            }
                            e6 = notificationParams.e("gcm.n.event_time");
                            if (!TextUtils.isEmpty(e6)) {
                            }
                            valueOf2 = null;
                            if (valueOf2 != null) {
                            }
                            c = notificationParams.c("gcm.n.vibrate_timings");
                            if (c != null) {
                            }
                            jArr = null;
                            if (jArr != null) {
                            }
                            c2 = notificationParams.c("gcm.n.light_settings");
                            if (c2 != null) {
                            }
                            iArr = null;
                            if (iArr != null) {
                            }
                            boolean a22222222 = notificationParams.a("gcm.n.default_sound");
                            boolean z222222222 = a22222222;
                            if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                            }
                            r0 = z222222222;
                            if (notificationParams.a("gcm.n.default_light_settings")) {
                            }
                            Notification notification322222222 = notificationCompat$Builder.A;
                            notification322222222.defaults = r0;
                            if ((r0 & 4) != 0) {
                            }
                            e7 = notificationParams.e("gcm.n.tag");
                            if (TextUtils.isEmpty(e7)) {
                            }
                            CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo22222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                            if (imageDownload != null) {
                            }
                            if (Log.isLoggable("FirebaseMessaging", 3)) {
                            }
                            ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo22222222.b, 0, displayNotificationInfo22222222.a.b());
                            return true;
                        }
                        i = 1;
                        Log.w("FirebaseMessaging", "Icon resource " + e + " not found. Notification will use default icon.");
                    } else {
                        i = 1;
                    }
                    i2 = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
                    if (i2 == 0) {
                        try {
                            i2 = packageManager.getApplicationInfo(packageName, 0).icon;
                        } catch (PackageManager.NameNotFoundException e13) {
                            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e13);
                        }
                    }
                    if (i2 != 0) {
                        i3 = i2;
                    } else {
                        i3 = 17301651;
                    }
                    notificationCompat$Builder.A.icon = i3;
                    e2 = notificationParams.e("gcm.n.sound2");
                    if (TextUtils.isEmpty(e2)) {
                    }
                    if (!TextUtils.isEmpty(e2)) {
                    }
                    if (defaultUri == null) {
                    }
                    e3 = notificationParams.e("gcm.n.click_action");
                    if (TextUtils.isEmpty(e3)) {
                    }
                    if (launchIntentForPackage != null) {
                    }
                    notificationCompat$Builder.g = activity;
                    if (notificationParams.a("google.c.a.e")) {
                    }
                    if (broadcast != null) {
                    }
                    e4 = notificationParams.e("gcm.n.color");
                    if (!TextUtils.isEmpty(e4)) {
                    }
                    i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
                    if (i5 != 0) {
                    }
                    valueOf = null;
                    if (valueOf != null) {
                    }
                    notificationCompat$Builder.d(!notificationParams.a("gcm.n.sticky"));
                    notificationCompat$Builder.q = notificationParams.a("gcm.n.local_only");
                    e5 = notificationParams.e("gcm.n.ticker");
                    if (e5 != null) {
                    }
                    b = notificationParams.b("gcm.n.notification_priority");
                    if (b != null) {
                    }
                    b = null;
                    if (b != null) {
                    }
                    b2 = notificationParams.b("gcm.n.visibility");
                    if (b2 != null) {
                    }
                    b2 = null;
                    if (b2 != null) {
                    }
                    b3 = notificationParams.b("gcm.n.notification_count");
                    if (b3 != null) {
                    }
                    b3 = null;
                    if (b3 != null) {
                    }
                    e6 = notificationParams.e("gcm.n.event_time");
                    if (!TextUtils.isEmpty(e6)) {
                    }
                    valueOf2 = null;
                    if (valueOf2 != null) {
                    }
                    c = notificationParams.c("gcm.n.vibrate_timings");
                    if (c != null) {
                    }
                    jArr = null;
                    if (jArr != null) {
                    }
                    c2 = notificationParams.c("gcm.n.light_settings");
                    if (c2 != null) {
                    }
                    iArr = null;
                    if (iArr != null) {
                    }
                    boolean a222222222 = notificationParams.a("gcm.n.default_sound");
                    boolean z2222222222 = a222222222;
                    if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                    }
                    r0 = z2222222222;
                    if (notificationParams.a("gcm.n.default_light_settings")) {
                    }
                    Notification notification3222222222 = notificationCompat$Builder.A;
                    notification3222222222.defaults = r0;
                    if ((r0 & 4) != 0) {
                    }
                    e7 = notificationParams.e("gcm.n.tag");
                    if (TextUtils.isEmpty(e7)) {
                    }
                    CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo222222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder, e7);
                    if (imageDownload != null) {
                    }
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                    }
                    ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo222222222.b, 0, displayNotificationInfo222222222.a.b());
                    return true;
                }
                e9 = bundle2.getString("com.google.firebase.messaging.default_notification_channel_id");
                if (!TextUtils.isEmpty(e9)) {
                    if (notificationManager.getNotificationChannel(e9) == null) {
                        Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
                    }
                    AtomicInteger atomicInteger22 = CommonNotificationBuilder.a;
                    String packageName2 = firebaseMessagingService.getPackageName();
                    Resources resources2 = firebaseMessagingService.getResources();
                    PackageManager packageManager2 = firebaseMessagingService.getPackageManager();
                    ?? notificationCompat$Builder2 = new NotificationCompat$Builder(firebaseMessagingService, e9);
                    d = notificationParams.d(resources2, packageName2, "gcm.n.title");
                    if (!TextUtils.isEmpty(d)) {
                    }
                    d2 = notificationParams.d(resources2, packageName2, "gcm.n.body");
                    if (!TextUtils.isEmpty(d2)) {
                    }
                    e = notificationParams.e("gcm.n.icon");
                    if (!TextUtils.isEmpty(e)) {
                    }
                    i2 = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
                    if (i2 == 0) {
                    }
                    if (i2 != 0) {
                    }
                    notificationCompat$Builder2.A.icon = i3;
                    e2 = notificationParams.e("gcm.n.sound2");
                    if (TextUtils.isEmpty(e2)) {
                    }
                    if (!TextUtils.isEmpty(e2)) {
                    }
                    if (defaultUri == null) {
                    }
                    e3 = notificationParams.e("gcm.n.click_action");
                    if (TextUtils.isEmpty(e3)) {
                    }
                    if (launchIntentForPackage != null) {
                    }
                    notificationCompat$Builder2.g = activity;
                    if (notificationParams.a("google.c.a.e")) {
                    }
                    if (broadcast != null) {
                    }
                    e4 = notificationParams.e("gcm.n.color");
                    if (!TextUtils.isEmpty(e4)) {
                    }
                    i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
                    if (i5 != 0) {
                    }
                    valueOf = null;
                    if (valueOf != null) {
                    }
                    notificationCompat$Builder2.d(!notificationParams.a("gcm.n.sticky"));
                    notificationCompat$Builder2.q = notificationParams.a("gcm.n.local_only");
                    e5 = notificationParams.e("gcm.n.ticker");
                    if (e5 != null) {
                    }
                    b = notificationParams.b("gcm.n.notification_priority");
                    if (b != null) {
                    }
                    b = null;
                    if (b != null) {
                    }
                    b2 = notificationParams.b("gcm.n.visibility");
                    if (b2 != null) {
                    }
                    b2 = null;
                    if (b2 != null) {
                    }
                    b3 = notificationParams.b("gcm.n.notification_count");
                    if (b3 != null) {
                    }
                    b3 = null;
                    if (b3 != null) {
                    }
                    e6 = notificationParams.e("gcm.n.event_time");
                    if (!TextUtils.isEmpty(e6)) {
                    }
                    valueOf2 = null;
                    if (valueOf2 != null) {
                    }
                    c = notificationParams.c("gcm.n.vibrate_timings");
                    if (c != null) {
                    }
                    jArr = null;
                    if (jArr != null) {
                    }
                    c2 = notificationParams.c("gcm.n.light_settings");
                    if (c2 != null) {
                    }
                    iArr = null;
                    if (iArr != null) {
                    }
                    boolean a2222222222 = notificationParams.a("gcm.n.default_sound");
                    boolean z22222222222 = a2222222222;
                    if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                    }
                    r0 = z22222222222;
                    if (notificationParams.a("gcm.n.default_light_settings")) {
                    }
                    Notification notification32222222222 = notificationCompat$Builder2.A;
                    notification32222222222.defaults = r0;
                    if ((r0 & 4) != 0) {
                    }
                    e7 = notificationParams.e("gcm.n.tag");
                    if (TextUtils.isEmpty(e7)) {
                    }
                    CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo2222222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder2, e7);
                    if (imageDownload != null) {
                    }
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                    }
                    ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo2222222222.b, 0, displayNotificationInfo2222222222.a.b());
                    return true;
                }
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
                e9 = "fcm_fallback_notification_channel";
                if (notificationManager.getNotificationChannel("fcm_fallback_notification_channel") == null) {
                    int identifier = firebaseMessagingService.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", firebaseMessagingService.getPackageName());
                    if (identifier == 0) {
                        Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                        string = "Misc";
                    } else {
                        string = firebaseMessagingService.getString(identifier);
                    }
                    notificationManager.createNotificationChannel(new NotificationChannel("fcm_fallback_notification_channel", string, 3));
                }
                AtomicInteger atomicInteger222 = CommonNotificationBuilder.a;
                String packageName22 = firebaseMessagingService.getPackageName();
                Resources resources22 = firebaseMessagingService.getResources();
                PackageManager packageManager22 = firebaseMessagingService.getPackageManager();
                ?? notificationCompat$Builder22 = new NotificationCompat$Builder(firebaseMessagingService, e9);
                d = notificationParams.d(resources22, packageName22, "gcm.n.title");
                if (!TextUtils.isEmpty(d)) {
                }
                d2 = notificationParams.d(resources22, packageName22, "gcm.n.body");
                if (!TextUtils.isEmpty(d2)) {
                }
                e = notificationParams.e("gcm.n.icon");
                if (!TextUtils.isEmpty(e)) {
                }
                i2 = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
                if (i2 == 0) {
                }
                if (i2 != 0) {
                }
                notificationCompat$Builder22.A.icon = i3;
                e2 = notificationParams.e("gcm.n.sound2");
                if (TextUtils.isEmpty(e2)) {
                }
                if (!TextUtils.isEmpty(e2)) {
                }
                if (defaultUri == null) {
                }
                e3 = notificationParams.e("gcm.n.click_action");
                if (TextUtils.isEmpty(e3)) {
                }
                if (launchIntentForPackage != null) {
                }
                notificationCompat$Builder22.g = activity;
                if (notificationParams.a("google.c.a.e")) {
                }
                if (broadcast != null) {
                }
                e4 = notificationParams.e("gcm.n.color");
                if (!TextUtils.isEmpty(e4)) {
                }
                i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
                if (i5 != 0) {
                }
                valueOf = null;
                if (valueOf != null) {
                }
                notificationCompat$Builder22.d(!notificationParams.a("gcm.n.sticky"));
                notificationCompat$Builder22.q = notificationParams.a("gcm.n.local_only");
                e5 = notificationParams.e("gcm.n.ticker");
                if (e5 != null) {
                }
                b = notificationParams.b("gcm.n.notification_priority");
                if (b != null) {
                }
                b = null;
                if (b != null) {
                }
                b2 = notificationParams.b("gcm.n.visibility");
                if (b2 != null) {
                }
                b2 = null;
                if (b2 != null) {
                }
                b3 = notificationParams.b("gcm.n.notification_count");
                if (b3 != null) {
                }
                b3 = null;
                if (b3 != null) {
                }
                e6 = notificationParams.e("gcm.n.event_time");
                if (!TextUtils.isEmpty(e6)) {
                }
                valueOf2 = null;
                if (valueOf2 != null) {
                }
                c = notificationParams.c("gcm.n.vibrate_timings");
                if (c != null) {
                }
                jArr = null;
                if (jArr != null) {
                }
                c2 = notificationParams.c("gcm.n.light_settings");
                if (c2 != null) {
                }
                iArr = null;
                if (iArr != null) {
                }
                boolean a22222222222 = notificationParams.a("gcm.n.default_sound");
                boolean z222222222222 = a22222222222;
                if (notificationParams.a("gcm.n.default_vibrate_timings")) {
                }
                r0 = z222222222222;
                if (notificationParams.a("gcm.n.default_light_settings")) {
                }
                Notification notification322222222222 = notificationCompat$Builder22.A;
                notification322222222222.defaults = r0;
                if ((r0 & 4) != 0) {
                }
                e7 = notificationParams.e("gcm.n.tag");
                if (TextUtils.isEmpty(e7)) {
                }
                CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo22222222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder22, e7);
                if (imageDownload != null) {
                }
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                }
                ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo22222222222.b, 0, displayNotificationInfo22222222222.a.b());
                return true;
            }
            e9 = null;
            AtomicInteger atomicInteger2222 = CommonNotificationBuilder.a;
            String packageName222 = firebaseMessagingService.getPackageName();
            Resources resources222 = firebaseMessagingService.getResources();
            PackageManager packageManager222 = firebaseMessagingService.getPackageManager();
            ?? notificationCompat$Builder222 = new NotificationCompat$Builder(firebaseMessagingService, e9);
            d = notificationParams.d(resources222, packageName222, "gcm.n.title");
            if (!TextUtils.isEmpty(d)) {
            }
            d2 = notificationParams.d(resources222, packageName222, "gcm.n.body");
            if (!TextUtils.isEmpty(d2)) {
            }
            e = notificationParams.e("gcm.n.icon");
            if (!TextUtils.isEmpty(e)) {
            }
            i2 = bundle2.getInt("com.google.firebase.messaging.default_notification_icon", 0);
            if (i2 == 0) {
            }
            if (i2 != 0) {
            }
            notificationCompat$Builder222.A.icon = i3;
            e2 = notificationParams.e("gcm.n.sound2");
            if (TextUtils.isEmpty(e2)) {
            }
            if (!TextUtils.isEmpty(e2)) {
            }
            if (defaultUri == null) {
            }
            e3 = notificationParams.e("gcm.n.click_action");
            if (TextUtils.isEmpty(e3)) {
            }
            if (launchIntentForPackage != null) {
            }
            notificationCompat$Builder222.g = activity;
            if (notificationParams.a("google.c.a.e")) {
            }
            if (broadcast != null) {
            }
            e4 = notificationParams.e("gcm.n.color");
            if (!TextUtils.isEmpty(e4)) {
            }
            i5 = bundle2.getInt("com.google.firebase.messaging.default_notification_color", 0);
            if (i5 != 0) {
            }
            valueOf = null;
            if (valueOf != null) {
            }
            notificationCompat$Builder222.d(!notificationParams.a("gcm.n.sticky"));
            notificationCompat$Builder222.q = notificationParams.a("gcm.n.local_only");
            e5 = notificationParams.e("gcm.n.ticker");
            if (e5 != null) {
            }
            b = notificationParams.b("gcm.n.notification_priority");
            if (b != null) {
            }
            b = null;
            if (b != null) {
            }
            b2 = notificationParams.b("gcm.n.visibility");
            if (b2 != null) {
            }
            b2 = null;
            if (b2 != null) {
            }
            b3 = notificationParams.b("gcm.n.notification_count");
            if (b3 != null) {
            }
            b3 = null;
            if (b3 != null) {
            }
            e6 = notificationParams.e("gcm.n.event_time");
            if (!TextUtils.isEmpty(e6)) {
            }
            valueOf2 = null;
            if (valueOf2 != null) {
            }
            c = notificationParams.c("gcm.n.vibrate_timings");
            if (c != null) {
            }
            jArr = null;
            if (jArr != null) {
            }
            c2 = notificationParams.c("gcm.n.light_settings");
            if (c2 != null) {
            }
            iArr = null;
            if (iArr != null) {
            }
            boolean a222222222222 = notificationParams.a("gcm.n.default_sound");
            boolean z2222222222222 = a222222222222;
            if (notificationParams.a("gcm.n.default_vibrate_timings")) {
            }
            r0 = z2222222222222;
            if (notificationParams.a("gcm.n.default_light_settings")) {
            }
            Notification notification3222222222222 = notificationCompat$Builder222.A;
            notification3222222222222.defaults = r0;
            if ((r0 & 4) != 0) {
            }
            e7 = notificationParams.e("gcm.n.tag");
            if (TextUtils.isEmpty(e7)) {
            }
            CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo222222222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder222, e7);
            if (imageDownload != null) {
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
            }
            ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo222222222222.b, 0, displayNotificationInfo222222222222.a.b());
            return true;
        }
        imageDownload = null;
        if (imageDownload != null) {
        }
        firebaseMessagingService = this.b;
        notificationParams = this.c;
        AtomicInteger atomicInteger3 = CommonNotificationBuilder.a;
        applicationInfo = firebaseMessagingService.getPackageManager().getApplicationInfo(firebaseMessagingService.getPackageName(), 128);
        if (applicationInfo != null) {
        }
        bundle = Bundle.EMPTY;
        Bundle bundle22 = bundle;
        String e92 = notificationParams.e("gcm.n.android_channel_id");
        if (firebaseMessagingService.getPackageManager().getApplicationInfo(firebaseMessagingService.getPackageName(), 0).targetSdkVersion >= 26) {
        }
        e92 = null;
        AtomicInteger atomicInteger22222 = CommonNotificationBuilder.a;
        String packageName2222 = firebaseMessagingService.getPackageName();
        Resources resources2222 = firebaseMessagingService.getResources();
        PackageManager packageManager2222 = firebaseMessagingService.getPackageManager();
        ?? notificationCompat$Builder2222 = new NotificationCompat$Builder(firebaseMessagingService, e92);
        d = notificationParams.d(resources2222, packageName2222, "gcm.n.title");
        if (!TextUtils.isEmpty(d)) {
        }
        d2 = notificationParams.d(resources2222, packageName2222, "gcm.n.body");
        if (!TextUtils.isEmpty(d2)) {
        }
        e = notificationParams.e("gcm.n.icon");
        if (!TextUtils.isEmpty(e)) {
        }
        i2 = bundle22.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i2 == 0) {
        }
        if (i2 != 0) {
        }
        notificationCompat$Builder2222.A.icon = i3;
        e2 = notificationParams.e("gcm.n.sound2");
        if (TextUtils.isEmpty(e2)) {
        }
        if (!TextUtils.isEmpty(e2)) {
        }
        if (defaultUri == null) {
        }
        e3 = notificationParams.e("gcm.n.click_action");
        if (TextUtils.isEmpty(e3)) {
        }
        if (launchIntentForPackage != null) {
        }
        notificationCompat$Builder2222.g = activity;
        if (notificationParams.a("google.c.a.e")) {
        }
        if (broadcast != null) {
        }
        e4 = notificationParams.e("gcm.n.color");
        if (!TextUtils.isEmpty(e4)) {
        }
        i5 = bundle22.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i5 != 0) {
        }
        valueOf = null;
        if (valueOf != null) {
        }
        notificationCompat$Builder2222.d(!notificationParams.a("gcm.n.sticky"));
        notificationCompat$Builder2222.q = notificationParams.a("gcm.n.local_only");
        e5 = notificationParams.e("gcm.n.ticker");
        if (e5 != null) {
        }
        b = notificationParams.b("gcm.n.notification_priority");
        if (b != null) {
        }
        b = null;
        if (b != null) {
        }
        b2 = notificationParams.b("gcm.n.visibility");
        if (b2 != null) {
        }
        b2 = null;
        if (b2 != null) {
        }
        b3 = notificationParams.b("gcm.n.notification_count");
        if (b3 != null) {
        }
        b3 = null;
        if (b3 != null) {
        }
        e6 = notificationParams.e("gcm.n.event_time");
        if (!TextUtils.isEmpty(e6)) {
        }
        valueOf2 = null;
        if (valueOf2 != null) {
        }
        c = notificationParams.c("gcm.n.vibrate_timings");
        if (c != null) {
        }
        jArr = null;
        if (jArr != null) {
        }
        c2 = notificationParams.c("gcm.n.light_settings");
        if (c2 != null) {
        }
        iArr = null;
        if (iArr != null) {
        }
        boolean a2222222222222 = notificationParams.a("gcm.n.default_sound");
        boolean z22222222222222 = a2222222222222;
        if (notificationParams.a("gcm.n.default_vibrate_timings")) {
        }
        r0 = z22222222222222;
        if (notificationParams.a("gcm.n.default_light_settings")) {
        }
        Notification notification32222222222222 = notificationCompat$Builder2222.A;
        notification32222222222222.defaults = r0;
        if ((r0 & 4) != 0) {
        }
        e7 = notificationParams.e("gcm.n.tag");
        if (TextUtils.isEmpty(e7)) {
        }
        CommonNotificationBuilder.DisplayNotificationInfo displayNotificationInfo2222222222222 = new CommonNotificationBuilder.DisplayNotificationInfo(notificationCompat$Builder2222, e7);
        if (imageDownload != null) {
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
        }
        ((NotificationManager) this.b.getSystemService("notification")).notify(displayNotificationInfo2222222222222.b, 0, displayNotificationInfo2222222222222.a.b());
        return true;
    }
}
