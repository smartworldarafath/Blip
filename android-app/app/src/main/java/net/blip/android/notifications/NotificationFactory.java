package net.blip.android.notifications;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import coil3.Image;
import coil3.ImageLoader;
import coil3.Image_androidKt;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.size.RealSizeResolver;
import coil3.size.SizeKt;
import defpackage.u2;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import net.blip.android.MainActivity;
import net.blip.android.R;
import net.blip.android.UriUtilKt;
import net.blip.android.filetypes.FileType_UriKt;
import net.blip.android.internetshortcut.InternetShortcutKt;
import net.blip.android.notifications.NotificationChannels;
import net.blip.android.ui.util.TransferClipboardKt;
import net.blip.libblip.FileType;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Peer;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.String_formatAsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationFactory {
    public final Context a;

    public NotificationFactory(Context context) {
        context.getClass();
        this.a = context;
    }

    public static /* synthetic */ Pair d(NotificationFactory notificationFactory, int i, NotificationChannels.Config config, Peer peer, Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            i = new Random().nextInt();
        }
        if ((i2 & 4) != 0) {
            peer = null;
        }
        return notificationFactory.c(i, config, peer, function1);
    }

    public final NotificationCompat$Action a(int i, String str) {
        String str2 = TransferNotificationBroadcastReceiver.a;
        Context context = this.a;
        context.getClass();
        str.getClass();
        Intent intent = new Intent(context, (Class<?>) TransferNotificationBroadcastReceiver.class);
        intent.setAction(TransferNotificationBroadcastReceiver.c);
        intent.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i));
        intent.putExtra(TransferNotificationBroadcastReceiver.h, str);
        return new NotificationCompat$Action((IconCompat) null, "Cancel", NotificationFactoryKt.a(context, intent, str));
    }

    public final void b(String str) {
        str.getClass();
        new NotificationManagerCompat(this.a).b.cancel(null, "transferInvite:".concat(str).hashCode());
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.core.app.Person$Builder, java.lang.Object] */
    public final Pair c(int i, NotificationChannels.Config config, Peer peer, Function1 function1) {
        config.getClass();
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(this.a, config.a());
        function1.b(notificationCompat$Builder);
        if (peer != null) {
            ?? obj = new Object();
            obj.a = peer.b();
            notificationCompat$Builder.c.add(obj.a());
        }
        Notification b = notificationCompat$Builder.b();
        b.getClass();
        Logger logger = LoggerKt.a;
        Pair[] pairArr = {new Pair("id", Integer.valueOf(i)), new Pair("channel", config), new Pair("notif", b)};
        logger.getClass();
        Logger.c("built notification", pairArr);
        return new Pair(Integer.valueOf(i), b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0088, code lost:
    
        if (r2 == r4) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0144 A[Catch: Exception -> 0x0041, TryCatch #1 {Exception -> 0x0041, blocks: (B:13:0x003c, B:14:0x013c, B:16:0x0144, B:17:0x0151, B:19:0x0155, B:21:0x015b), top: B:12:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0155 A[Catch: Exception -> 0x0041, TryCatch #1 {Exception -> 0x0041, blocks: (B:13:0x003c, B:14:0x013c, B:16:0x0144, B:17:0x0151, B:19:0x0155, B:21:0x015b), top: B:12:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x015b A[Catch: Exception -> 0x0041, TRY_LEAVE, TryCatch #1 {Exception -> 0x0041, blocks: (B:13:0x003c, B:14:0x013c, B:16:0x0144, B:17:0x0151, B:19:0x0155, B:21:0x015b), top: B:12:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0106 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Serializable e(Peer peer, Transfer transfer, ContinuationImpl continuationImpl) {
        NotificationFactory$transferComplete$1 notificationFactory$transferComplete$1;
        int i;
        Peer peer2;
        List list;
        int nextInt;
        Object obj;
        String str;
        Transfer transfer2;
        Peer peer3;
        Uri uri;
        Transfer transfer3;
        int i2;
        List list2;
        Iterator it;
        Object obj2;
        String str2;
        List list3;
        int i3;
        Peer peer4;
        Transfer transfer4;
        Object c;
        final Bitmap bitmap;
        Bitmap bitmap2;
        NotificationChannels.Config config;
        Image e;
        Drawable drawable;
        BitmapDrawable bitmapDrawable;
        Transfer transfer5 = transfer;
        if (continuationImpl instanceof NotificationFactory$transferComplete$1) {
            notificationFactory$transferComplete$1 = (NotificationFactory$transferComplete$1) continuationImpl;
            int i4 = notificationFactory$transferComplete$1.t;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                notificationFactory$transferComplete$1.t = i4 - Integer.MIN_VALUE;
                Object obj3 = notificationFactory$transferComplete$1.r;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = notificationFactory$transferComplete$1.t;
                Context context = this.a;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                i3 = notificationFactory$transferComplete$1.q;
                                uri = notificationFactory$transferComplete$1.p;
                                list3 = notificationFactory$transferComplete$1.o;
                                transfer4 = notificationFactory$transferComplete$1.n;
                                peer4 = notificationFactory$transferComplete$1.m;
                                try {
                                    ResultKt.b(obj3);
                                    e = ((ImageResult) obj3).e();
                                    if (e == null) {
                                        Resources resources = context.getResources();
                                        resources.getClass();
                                        drawable = Image_androidKt.a(e, resources);
                                    } else {
                                        drawable = null;
                                    }
                                    if (!(drawable instanceof BitmapDrawable)) {
                                        bitmapDrawable = (BitmapDrawable) drawable;
                                    } else {
                                        bitmapDrawable = null;
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    Logger logger = LoggerKt.a;
                                    Pair[] pairArr = {new Pair("exception", e)};
                                    logger.getClass();
                                    Logger.e("loading bitmap with coil", pairArr);
                                    bitmap2 = null;
                                    peer3 = peer4;
                                    nextInt = i3;
                                    list = list3;
                                    transfer2 = transfer4;
                                    bitmap = bitmap2;
                                    final List list4 = list;
                                    final Uri uri2 = uri;
                                    final int i5 = nextInt;
                                    if (transfer2.v != Transfer.Direction.n) {
                                    }
                                    final Peer peer5 = peer3;
                                    final Transfer transfer6 = transfer2;
                                    return d(this, i5, config, null, new Function1() { // from class: net.blip.android.notifications.d
                                        /* JADX WARN: Multi-variable type inference failed */
                                        /* JADX WARN: Type inference failed for: r1v3, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object b(Object obj4) {
                                            String b;
                                            Intent intent;
                                            String b2;
                                            Context context2 = this.a;
                                            NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj4;
                                            notificationCompat$Builder.getClass();
                                            Transfer transfer7 = Transfer.this;
                                            long b3 = Transfer_DerivedKt.b(transfer7);
                                            String str3 = transfer7.m;
                                            notificationCompat$Builder.j(String_formatAsKt.a(b3));
                                            String str4 = Strings.a;
                                            notificationCompat$Builder.g(StringsKt.e(transfer7));
                                            Transfer.Direction direction = transfer7.v;
                                            Transfer.Direction direction2 = Transfer.Direction.n;
                                            Peer peer6 = peer5;
                                            String str5 = "<unknown>";
                                            if (direction == direction2) {
                                                if (peer6 != null && (b2 = peer6.b()) != null) {
                                                    str5 = b2;
                                                }
                                                notificationCompat$Builder.f("Received from ".concat(str5));
                                                Uri uri3 = uri2;
                                                if (uri3 != null) {
                                                    intent = new Intent("android.intent.action.VIEW", uri3);
                                                } else {
                                                    String str6 = MainActivity.G;
                                                    context2.getClass();
                                                    str3.getClass();
                                                    intent = new Intent(context2, (Class<?>) MainActivity.class);
                                                    intent.setAction(MainActivity.G);
                                                    intent.putExtra(MainActivity.I, str3);
                                                }
                                                int i6 = i5;
                                                PendingIntent b4 = NotificationFactoryKt.b(context2, intent, i6, 8);
                                                notificationCompat$Builder.g = b4;
                                                notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_open, b4, "Open"));
                                                if (TransferClipboardKt.a(context2, list4)) {
                                                    String str7 = TransferNotificationBroadcastReceiver.a;
                                                    str3.getClass();
                                                    Intent intent2 = new Intent(context2, (Class<?>) TransferNotificationBroadcastReceiver.class);
                                                    intent2.setAction(TransferNotificationBroadcastReceiver.e);
                                                    intent2.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i6));
                                                    intent2.putExtra(TransferNotificationBroadcastReceiver.h, str3);
                                                    notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_copy, NotificationFactoryKt.a(context2, intent2, str3), "Copy"));
                                                }
                                            } else {
                                                if (peer6 != null && (b = peer6.b()) != null) {
                                                    str5 = b;
                                                }
                                                notificationCompat$Builder.f = NotificationCompat$Builder.c("Sent to ".concat(str5));
                                            }
                                            Bitmap bitmap3 = bitmap;
                                            if (bitmap3 != null) {
                                                IconCompat iconCompat = new IconCompat(1);
                                                iconCompat.b = bitmap3;
                                                notificationCompat$Builder.h = iconCompat;
                                                ?? obj5 = new Object();
                                                IconCompat iconCompat2 = new IconCompat(1);
                                                iconCompat2.b = bitmap3;
                                                obj5.b = iconCompat2;
                                                notificationCompat$Builder.i(obj5);
                                            }
                                            notificationCompat$Builder.d(true);
                                            notificationCompat$Builder.v = Colors.d;
                                            notificationCompat$Builder.A.icon = R.drawable.ic_notification_complete;
                                            return Unit.a;
                                        }
                                    }, 4);
                                }
                                if (bitmapDrawable != null) {
                                    bitmap2 = bitmapDrawable.getBitmap();
                                    peer3 = peer4;
                                    nextInt = i3;
                                    list = list3;
                                    transfer2 = transfer4;
                                    bitmap = bitmap2;
                                    final List list42 = list;
                                    final Uri uri22 = uri;
                                    final int i52 = nextInt;
                                    if (transfer2.v != Transfer.Direction.n) {
                                        config = NotificationChannels.c;
                                    } else {
                                        config = NotificationChannels.d;
                                    }
                                    final Peer peer52 = peer3;
                                    final Transfer transfer62 = transfer2;
                                    return d(this, i52, config, null, new Function1() { // from class: net.blip.android.notifications.d
                                        /* JADX WARN: Multi-variable type inference failed */
                                        /* JADX WARN: Type inference failed for: r1v3, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object b(Object obj4) {
                                            String b;
                                            Intent intent;
                                            String b2;
                                            Context context2 = this.a;
                                            NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj4;
                                            notificationCompat$Builder.getClass();
                                            Transfer transfer7 = Transfer.this;
                                            long b3 = Transfer_DerivedKt.b(transfer7);
                                            String str3 = transfer7.m;
                                            notificationCompat$Builder.j(String_formatAsKt.a(b3));
                                            String str4 = Strings.a;
                                            notificationCompat$Builder.g(StringsKt.e(transfer7));
                                            Transfer.Direction direction = transfer7.v;
                                            Transfer.Direction direction2 = Transfer.Direction.n;
                                            Peer peer6 = peer52;
                                            String str5 = "<unknown>";
                                            if (direction == direction2) {
                                                if (peer6 != null && (b2 = peer6.b()) != null) {
                                                    str5 = b2;
                                                }
                                                notificationCompat$Builder.f("Received from ".concat(str5));
                                                Uri uri3 = uri22;
                                                if (uri3 != null) {
                                                    intent = new Intent("android.intent.action.VIEW", uri3);
                                                } else {
                                                    String str6 = MainActivity.G;
                                                    context2.getClass();
                                                    str3.getClass();
                                                    intent = new Intent(context2, (Class<?>) MainActivity.class);
                                                    intent.setAction(MainActivity.G);
                                                    intent.putExtra(MainActivity.I, str3);
                                                }
                                                int i6 = i52;
                                                PendingIntent b4 = NotificationFactoryKt.b(context2, intent, i6, 8);
                                                notificationCompat$Builder.g = b4;
                                                notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_open, b4, "Open"));
                                                if (TransferClipboardKt.a(context2, list42)) {
                                                    String str7 = TransferNotificationBroadcastReceiver.a;
                                                    str3.getClass();
                                                    Intent intent2 = new Intent(context2, (Class<?>) TransferNotificationBroadcastReceiver.class);
                                                    intent2.setAction(TransferNotificationBroadcastReceiver.e);
                                                    intent2.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i6));
                                                    intent2.putExtra(TransferNotificationBroadcastReceiver.h, str3);
                                                    notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_copy, NotificationFactoryKt.a(context2, intent2, str3), "Copy"));
                                                }
                                            } else {
                                                if (peer6 != null && (b = peer6.b()) != null) {
                                                    str5 = b;
                                                }
                                                notificationCompat$Builder.f = NotificationCompat$Builder.c("Sent to ".concat(str5));
                                            }
                                            Bitmap bitmap3 = bitmap;
                                            if (bitmap3 != null) {
                                                IconCompat iconCompat = new IconCompat(1);
                                                iconCompat.b = bitmap3;
                                                notificationCompat$Builder.h = iconCompat;
                                                ?? obj5 = new Object();
                                                IconCompat iconCompat2 = new IconCompat(1);
                                                iconCompat2.b = bitmap3;
                                                obj5.b = iconCompat2;
                                                notificationCompat$Builder.i(obj5);
                                            }
                                            notificationCompat$Builder.d(true);
                                            notificationCompat$Builder.v = Colors.d;
                                            notificationCompat$Builder.A.icon = R.drawable.ic_notification_complete;
                                            return Unit.a;
                                        }
                                    }, 4);
                                }
                                bitmap2 = null;
                                peer3 = peer4;
                                nextInt = i3;
                                list = list3;
                                transfer2 = transfer4;
                                bitmap = bitmap2;
                                final List list422 = list;
                                final Uri uri222 = uri;
                                final int i522 = nextInt;
                                if (transfer2.v != Transfer.Direction.n) {
                                }
                                final Peer peer522 = peer3;
                                final Transfer transfer622 = transfer2;
                                return d(this, i522, config, null, new Function1() { // from class: net.blip.android.notifications.d
                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        String b;
                                        Intent intent;
                                        String b2;
                                        Context context2 = this.a;
                                        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj4;
                                        notificationCompat$Builder.getClass();
                                        Transfer transfer7 = Transfer.this;
                                        long b3 = Transfer_DerivedKt.b(transfer7);
                                        String str3 = transfer7.m;
                                        notificationCompat$Builder.j(String_formatAsKt.a(b3));
                                        String str4 = Strings.a;
                                        notificationCompat$Builder.g(StringsKt.e(transfer7));
                                        Transfer.Direction direction = transfer7.v;
                                        Transfer.Direction direction2 = Transfer.Direction.n;
                                        Peer peer6 = peer522;
                                        String str5 = "<unknown>";
                                        if (direction == direction2) {
                                            if (peer6 != null && (b2 = peer6.b()) != null) {
                                                str5 = b2;
                                            }
                                            notificationCompat$Builder.f("Received from ".concat(str5));
                                            Uri uri3 = uri222;
                                            if (uri3 != null) {
                                                intent = new Intent("android.intent.action.VIEW", uri3);
                                            } else {
                                                String str6 = MainActivity.G;
                                                context2.getClass();
                                                str3.getClass();
                                                intent = new Intent(context2, (Class<?>) MainActivity.class);
                                                intent.setAction(MainActivity.G);
                                                intent.putExtra(MainActivity.I, str3);
                                            }
                                            int i6 = i522;
                                            PendingIntent b4 = NotificationFactoryKt.b(context2, intent, i6, 8);
                                            notificationCompat$Builder.g = b4;
                                            notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_open, b4, "Open"));
                                            if (TransferClipboardKt.a(context2, list422)) {
                                                String str7 = TransferNotificationBroadcastReceiver.a;
                                                str3.getClass();
                                                Intent intent2 = new Intent(context2, (Class<?>) TransferNotificationBroadcastReceiver.class);
                                                intent2.setAction(TransferNotificationBroadcastReceiver.e);
                                                intent2.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i6));
                                                intent2.putExtra(TransferNotificationBroadcastReceiver.h, str3);
                                                notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_copy, NotificationFactoryKt.a(context2, intent2, str3), "Copy"));
                                            }
                                        } else {
                                            if (peer6 != null && (b = peer6.b()) != null) {
                                                str5 = b;
                                            }
                                            notificationCompat$Builder.f = NotificationCompat$Builder.c("Sent to ".concat(str5));
                                        }
                                        Bitmap bitmap3 = bitmap;
                                        if (bitmap3 != null) {
                                            IconCompat iconCompat = new IconCompat(1);
                                            iconCompat.b = bitmap3;
                                            notificationCompat$Builder.h = iconCompat;
                                            ?? obj5 = new Object();
                                            IconCompat iconCompat2 = new IconCompat(1);
                                            iconCompat2.b = bitmap3;
                                            obj5.b = iconCompat2;
                                            notificationCompat$Builder.i(obj5);
                                        }
                                        notificationCompat$Builder.d(true);
                                        notificationCompat$Builder.v = Colors.d;
                                        notificationCompat$Builder.A.icon = R.drawable.ic_notification_complete;
                                        return Unit.a;
                                    }
                                }, 4);
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        i2 = notificationFactory$transferComplete$1.q;
                        list2 = notificationFactory$transferComplete$1.o;
                        transfer3 = notificationFactory$transferComplete$1.n;
                        peer3 = notificationFactory$transferComplete$1.m;
                        ResultKt.b(obj3);
                        List list5 = list2;
                        uri = (Uri) obj3;
                        list = list5;
                        transfer2 = transfer3;
                        nextInt = i2;
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                obj2 = it.next();
                                int ordinal = FileType_UriKt.a(FileType.j, context, UriUtilKt.a((String) obj2)).ordinal();
                                if (ordinal == 1 || ordinal == 2 || ordinal == 4) {
                                    break;
                                }
                            } else {
                                obj2 = null;
                                break;
                            }
                        }
                        str2 = (String) obj2;
                        if (str2 != null) {
                            try {
                                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                                builder.c = str2;
                                builder.l = new RealSizeResolver(SizeKt.a(1024, 1024));
                                ImageRequest a = builder.a();
                                ImageLoader a2 = SingletonImageLoader.a(context);
                                notificationFactory$transferComplete$1.m = peer3;
                                notificationFactory$transferComplete$1.n = transfer2;
                                notificationFactory$transferComplete$1.o = list;
                                notificationFactory$transferComplete$1.p = uri;
                                notificationFactory$transferComplete$1.q = nextInt;
                                notificationFactory$transferComplete$1.t = 3;
                                c = ((RealImageLoader) a2).c(a, notificationFactory$transferComplete$1);
                            } catch (Exception e3) {
                                e = e3;
                                list3 = list;
                                i3 = nextInt;
                                peer4 = peer3;
                                transfer4 = transfer2;
                                Logger logger2 = LoggerKt.a;
                                Pair[] pairArr2 = {new Pair("exception", e)};
                                logger2.getClass();
                                Logger.e("loading bitmap with coil", pairArr2);
                                bitmap2 = null;
                                peer3 = peer4;
                                nextInt = i3;
                                list = list3;
                                transfer2 = transfer4;
                                bitmap = bitmap2;
                                final List list4222 = list;
                                final Uri uri2222 = uri;
                                final int i5222 = nextInt;
                                if (transfer2.v != Transfer.Direction.n) {
                                }
                                final Peer peer5222 = peer3;
                                final Transfer transfer6222 = transfer2;
                                return d(this, i5222, config, null, new Function1() { // from class: net.blip.android.notifications.d
                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        String b;
                                        Intent intent;
                                        String b2;
                                        Context context2 = this.a;
                                        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj4;
                                        notificationCompat$Builder.getClass();
                                        Transfer transfer7 = Transfer.this;
                                        long b3 = Transfer_DerivedKt.b(transfer7);
                                        String str3 = transfer7.m;
                                        notificationCompat$Builder.j(String_formatAsKt.a(b3));
                                        String str4 = Strings.a;
                                        notificationCompat$Builder.g(StringsKt.e(transfer7));
                                        Transfer.Direction direction = transfer7.v;
                                        Transfer.Direction direction2 = Transfer.Direction.n;
                                        Peer peer6 = peer5222;
                                        String str5 = "<unknown>";
                                        if (direction == direction2) {
                                            if (peer6 != null && (b2 = peer6.b()) != null) {
                                                str5 = b2;
                                            }
                                            notificationCompat$Builder.f("Received from ".concat(str5));
                                            Uri uri3 = uri2222;
                                            if (uri3 != null) {
                                                intent = new Intent("android.intent.action.VIEW", uri3);
                                            } else {
                                                String str6 = MainActivity.G;
                                                context2.getClass();
                                                str3.getClass();
                                                intent = new Intent(context2, (Class<?>) MainActivity.class);
                                                intent.setAction(MainActivity.G);
                                                intent.putExtra(MainActivity.I, str3);
                                            }
                                            int i6 = i5222;
                                            PendingIntent b4 = NotificationFactoryKt.b(context2, intent, i6, 8);
                                            notificationCompat$Builder.g = b4;
                                            notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_open, b4, "Open"));
                                            if (TransferClipboardKt.a(context2, list4222)) {
                                                String str7 = TransferNotificationBroadcastReceiver.a;
                                                str3.getClass();
                                                Intent intent2 = new Intent(context2, (Class<?>) TransferNotificationBroadcastReceiver.class);
                                                intent2.setAction(TransferNotificationBroadcastReceiver.e);
                                                intent2.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i6));
                                                intent2.putExtra(TransferNotificationBroadcastReceiver.h, str3);
                                                notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_copy, NotificationFactoryKt.a(context2, intent2, str3), "Copy"));
                                            }
                                        } else {
                                            if (peer6 != null && (b = peer6.b()) != null) {
                                                str5 = b;
                                            }
                                            notificationCompat$Builder.f = NotificationCompat$Builder.c("Sent to ".concat(str5));
                                        }
                                        Bitmap bitmap3 = bitmap;
                                        if (bitmap3 != null) {
                                            IconCompat iconCompat = new IconCompat(1);
                                            iconCompat.b = bitmap3;
                                            notificationCompat$Builder.h = iconCompat;
                                            ?? obj5 = new Object();
                                            IconCompat iconCompat2 = new IconCompat(1);
                                            iconCompat2.b = bitmap3;
                                            obj5.b = iconCompat2;
                                            notificationCompat$Builder.i(obj5);
                                        }
                                        notificationCompat$Builder.d(true);
                                        notificationCompat$Builder.v = Colors.d;
                                        notificationCompat$Builder.A.icon = R.drawable.ic_notification_complete;
                                        return Unit.a;
                                    }
                                }, 4);
                            }
                            if (c != coroutineSingletons) {
                                list3 = list;
                                i3 = nextInt;
                                peer4 = peer3;
                                transfer4 = transfer2;
                                obj3 = c;
                                e = ((ImageResult) obj3).e();
                                if (e == null) {
                                }
                                if (!(drawable instanceof BitmapDrawable)) {
                                }
                                if (bitmapDrawable != null) {
                                }
                                bitmap2 = null;
                                peer3 = peer4;
                                nextInt = i3;
                                list = list3;
                                transfer2 = transfer4;
                                bitmap = bitmap2;
                                final List list42222 = list;
                                final Uri uri22222 = uri;
                                final int i52222 = nextInt;
                                if (transfer2.v != Transfer.Direction.n) {
                                }
                                final Peer peer52222 = peer3;
                                final Transfer transfer62222 = transfer2;
                                return d(this, i52222, config, null, new Function1() { // from class: net.blip.android.notifications.d
                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        String b;
                                        Intent intent;
                                        String b2;
                                        Context context2 = this.a;
                                        NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj4;
                                        notificationCompat$Builder.getClass();
                                        Transfer transfer7 = Transfer.this;
                                        long b3 = Transfer_DerivedKt.b(transfer7);
                                        String str3 = transfer7.m;
                                        notificationCompat$Builder.j(String_formatAsKt.a(b3));
                                        String str4 = Strings.a;
                                        notificationCompat$Builder.g(StringsKt.e(transfer7));
                                        Transfer.Direction direction = transfer7.v;
                                        Transfer.Direction direction2 = Transfer.Direction.n;
                                        Peer peer6 = peer52222;
                                        String str5 = "<unknown>";
                                        if (direction == direction2) {
                                            if (peer6 != null && (b2 = peer6.b()) != null) {
                                                str5 = b2;
                                            }
                                            notificationCompat$Builder.f("Received from ".concat(str5));
                                            Uri uri3 = uri22222;
                                            if (uri3 != null) {
                                                intent = new Intent("android.intent.action.VIEW", uri3);
                                            } else {
                                                String str6 = MainActivity.G;
                                                context2.getClass();
                                                str3.getClass();
                                                intent = new Intent(context2, (Class<?>) MainActivity.class);
                                                intent.setAction(MainActivity.G);
                                                intent.putExtra(MainActivity.I, str3);
                                            }
                                            int i6 = i52222;
                                            PendingIntent b4 = NotificationFactoryKt.b(context2, intent, i6, 8);
                                            notificationCompat$Builder.g = b4;
                                            notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_open, b4, "Open"));
                                            if (TransferClipboardKt.a(context2, list42222)) {
                                                String str7 = TransferNotificationBroadcastReceiver.a;
                                                str3.getClass();
                                                Intent intent2 = new Intent(context2, (Class<?>) TransferNotificationBroadcastReceiver.class);
                                                intent2.setAction(TransferNotificationBroadcastReceiver.e);
                                                intent2.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i6));
                                                intent2.putExtra(TransferNotificationBroadcastReceiver.h, str3);
                                                notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_copy, NotificationFactoryKt.a(context2, intent2, str3), "Copy"));
                                            }
                                        } else {
                                            if (peer6 != null && (b = peer6.b()) != null) {
                                                str5 = b;
                                            }
                                            notificationCompat$Builder.f = NotificationCompat$Builder.c("Sent to ".concat(str5));
                                        }
                                        Bitmap bitmap3 = bitmap;
                                        if (bitmap3 != null) {
                                            IconCompat iconCompat = new IconCompat(1);
                                            iconCompat.b = bitmap3;
                                            notificationCompat$Builder.h = iconCompat;
                                            ?? obj5 = new Object();
                                            IconCompat iconCompat2 = new IconCompat(1);
                                            iconCompat2.b = bitmap3;
                                            obj5.b = iconCompat2;
                                            notificationCompat$Builder.i(obj5);
                                        }
                                        notificationCompat$Builder.d(true);
                                        notificationCompat$Builder.v = Colors.d;
                                        notificationCompat$Builder.A.icon = R.drawable.ic_notification_complete;
                                        return Unit.a;
                                    }
                                }, 4);
                            }
                            return coroutineSingletons;
                        }
                        bitmap = null;
                        final List list422222 = list;
                        final Uri uri222222 = uri;
                        final int i522222 = nextInt;
                        if (transfer2.v != Transfer.Direction.n) {
                        }
                        final Peer peer522222 = peer3;
                        final Transfer transfer622222 = transfer2;
                        return d(this, i522222, config, null, new Function1() { // from class: net.blip.android.notifications.d
                            /* JADX WARN: Multi-variable type inference failed */
                            /* JADX WARN: Type inference failed for: r1v3, types: [androidx.core.app.NotificationCompat$BigPictureStyle, java.lang.Object, androidx.core.app.NotificationCompat$Style] */
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj4) {
                                String b;
                                Intent intent;
                                String b2;
                                Context context2 = this.a;
                                NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj4;
                                notificationCompat$Builder.getClass();
                                Transfer transfer7 = Transfer.this;
                                long b3 = Transfer_DerivedKt.b(transfer7);
                                String str3 = transfer7.m;
                                notificationCompat$Builder.j(String_formatAsKt.a(b3));
                                String str4 = Strings.a;
                                notificationCompat$Builder.g(StringsKt.e(transfer7));
                                Transfer.Direction direction = transfer7.v;
                                Transfer.Direction direction2 = Transfer.Direction.n;
                                Peer peer6 = peer522222;
                                String str5 = "<unknown>";
                                if (direction == direction2) {
                                    if (peer6 != null && (b2 = peer6.b()) != null) {
                                        str5 = b2;
                                    }
                                    notificationCompat$Builder.f("Received from ".concat(str5));
                                    Uri uri3 = uri222222;
                                    if (uri3 != null) {
                                        intent = new Intent("android.intent.action.VIEW", uri3);
                                    } else {
                                        String str6 = MainActivity.G;
                                        context2.getClass();
                                        str3.getClass();
                                        intent = new Intent(context2, (Class<?>) MainActivity.class);
                                        intent.setAction(MainActivity.G);
                                        intent.putExtra(MainActivity.I, str3);
                                    }
                                    int i6 = i522222;
                                    PendingIntent b4 = NotificationFactoryKt.b(context2, intent, i6, 8);
                                    notificationCompat$Builder.g = b4;
                                    notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_open, b4, "Open"));
                                    if (TransferClipboardKt.a(context2, list422222)) {
                                        String str7 = TransferNotificationBroadcastReceiver.a;
                                        str3.getClass();
                                        Intent intent2 = new Intent(context2, (Class<?>) TransferNotificationBroadcastReceiver.class);
                                        intent2.setAction(TransferNotificationBroadcastReceiver.e);
                                        intent2.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i6));
                                        intent2.putExtra(TransferNotificationBroadcastReceiver.h, str3);
                                        notificationCompat$Builder.a(new NotificationCompat$Action(R.drawable.ic_notification_copy, NotificationFactoryKt.a(context2, intent2, str3), "Copy"));
                                    }
                                } else {
                                    if (peer6 != null && (b = peer6.b()) != null) {
                                        str5 = b;
                                    }
                                    notificationCompat$Builder.f = NotificationCompat$Builder.c("Sent to ".concat(str5));
                                }
                                Bitmap bitmap3 = bitmap;
                                if (bitmap3 != null) {
                                    IconCompat iconCompat = new IconCompat(1);
                                    iconCompat.b = bitmap3;
                                    notificationCompat$Builder.h = iconCompat;
                                    ?? obj5 = new Object();
                                    IconCompat iconCompat2 = new IconCompat(1);
                                    iconCompat2.b = bitmap3;
                                    obj5.b = iconCompat2;
                                    notificationCompat$Builder.i(obj5);
                                }
                                notificationCompat$Builder.d(true);
                                notificationCompat$Builder.v = Colors.d;
                                notificationCompat$Builder.A.icon = R.drawable.ic_notification_complete;
                                return Unit.a;
                            }
                        }, 4);
                    }
                    transfer5 = notificationFactory$transferComplete$1.n;
                    peer2 = notificationFactory$transferComplete$1.m;
                    ResultKt.b(obj3);
                } else {
                    ResultKt.b(obj3);
                    if (transfer5.v == Transfer.Direction.n) {
                        b(transfer5.m);
                    }
                    String absolutePath = context.getFilesDir().getAbsolutePath();
                    absolutePath.getClass();
                    peer2 = peer;
                    notificationFactory$transferComplete$1.m = peer2;
                    notificationFactory$transferComplete$1.n = transfer5;
                    notificationFactory$transferComplete$1.t = 1;
                    obj3 = Transfer_DerivedKt.e(transfer5, absolutePath, notificationFactory$transferComplete$1);
                }
                list = (List) obj3;
                nextInt = new Random().nextInt();
                list.getClass();
                if (list.size() != 1) {
                    obj = list.get(0);
                } else {
                    obj = null;
                }
                str = (String) obj;
                if (str == null) {
                    Uri a3 = UriUtilKt.a(str);
                    notificationFactory$transferComplete$1.m = peer2;
                    notificationFactory$transferComplete$1.n = transfer5;
                    notificationFactory$transferComplete$1.o = list;
                    notificationFactory$transferComplete$1.p = null;
                    notificationFactory$transferComplete$1.q = nextInt;
                    notificationFactory$transferComplete$1.t = 2;
                    Object a4 = InternetShortcutKt.a(context, a3, notificationFactory$transferComplete$1);
                    if (a4 != coroutineSingletons) {
                        transfer3 = transfer5;
                        i2 = nextInt;
                        Peer peer6 = peer2;
                        list2 = list;
                        obj3 = a4;
                        peer3 = peer6;
                        List list52 = list2;
                        uri = (Uri) obj3;
                        list = list52;
                        transfer2 = transfer3;
                        nextInt = i2;
                        it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                            }
                        }
                        str2 = (String) obj2;
                        if (str2 != null) {
                        }
                    }
                    return coroutineSingletons;
                }
                transfer2 = transfer5;
                peer3 = peer2;
                uri = null;
                it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                    }
                }
                str2 = (String) obj2;
                if (str2 != null) {
                }
            }
        }
        notificationFactory$transferComplete$1 = new NotificationFactory$transferComplete$1(this, continuationImpl);
        Object obj32 = notificationFactory$transferComplete$1.r;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = notificationFactory$transferComplete$1.t;
        Context context2 = this.a;
        if (i == 0) {
        }
        list = (List) obj32;
        nextInt = new Random().nextInt();
        list.getClass();
        if (list.size() != 1) {
        }
        str = (String) obj;
        if (str == null) {
        }
    }

    public final Flow f(StateFlow stateFlow, String str) {
        stateFlow.getClass();
        return FlowKt.p(new NotificationFactory$transferWorkerNotificationFlow$1(stateFlow, str, this, null));
    }
}
