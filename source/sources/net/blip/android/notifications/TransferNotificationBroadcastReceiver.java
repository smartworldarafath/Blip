package net.blip.android.notifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import bsarchive.Metadata;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.App;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.PeerId;
import net.blip.libblip.PeerId_DerivedKt;
import net.blip.libblip.event.TransferCancellationRequested;
import net.blip.libblip.event.TransferRespondFromNotification;
import net.blip.libblip.event.TransferResume;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferNotificationBroadcastReceiver extends BroadcastReceiver {
    public static final String a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final String f;
    public static final String g;
    public static final String h;
    public static final String i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Type inference failed for: r4v1, types: [okio.Buffer, java.lang.Object] */
        public static Intent a(Context context, String str, int i, String str2, Metadata metadata, PeerId peerId) {
            Intent intent = new Intent(context, (Class<?>) TransferNotificationBroadcastReceiver.class);
            intent.setAction(str);
            intent.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i));
            intent.putExtra(TransferNotificationBroadcastReceiver.g, PeerId_DerivedKt.b(peerId));
            intent.putExtra(TransferNotificationBroadcastReceiver.h, str2);
            String str3 = TransferNotificationBroadcastReceiver.i;
            ProtoAdapter protoAdapter = metadata.j;
            ?? obj = new Object();
            protoAdapter.getClass();
            ReverseProtoWriter reverseProtoWriter = new ReverseProtoWriter();
            protoAdapter.e(reverseProtoWriter, metadata);
            reverseProtoWriter.a();
            obj.a0(reverseProtoWriter.a);
            intent.putExtra(str3, obj.A(obj.k));
            return intent;
        }
    }

    static {
        String name = TransferNotificationBroadcastReceiver.class.getName();
        a = name.concat(".ACTION_ACCEPT_TRANSFER");
        b = name.concat(".ACTION_DECLINE_TRANSFER");
        c = name.concat(".ACTION_CANCEL_TRANSFER");
        d = name.concat(".ACTION_RESUME_TRANSFER");
        e = name.concat(".ACTION_COPY_TRANSFER");
        f = name.concat(".KEY_FROM_NOTIFICATION_ID");
        g = name.concat(".KEY_SENDER_ID");
        h = name.concat(".KEY_TRANSFER_ID");
        i = name.concat(".KEY_EXPECTED_STUB");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra;
        Logger logger = LoggerKt.a;
        Pair[] pairArr = {new Pair("intent", intent)};
        logger.getClass();
        Logger logger2 = new Logger(CollectionsKt.F(logger.a, Logger.a(null, pairArr)));
        Logger.c("onReceive", new Pair[0]);
        if (context != null && intent != null) {
            String stringExtra2 = intent.getStringExtra(f);
            if (stringExtra2 != null) {
                Context context2 = App.m;
                new NotificationManagerCompat(App.Companion.a()).b.cancel(null, Integer.parseInt(stringExtra2));
            }
            String action = intent.getAction();
            if (Intrinsics.a(action, a)) {
                try {
                    TransferRespondFromNotification a2 = TransferNotificationBroadcastReceiverKt.a(true, intent);
                    Context context3 = App.m;
                    App.Companion.b().b.b(a2);
                    Toast.makeText(context, "Transfer Accepted", 0).show();
                    return;
                } catch (Exception e2) {
                    Logger.f(e2, new Pair[0]);
                    return;
                }
            }
            if (Intrinsics.a(action, b)) {
                try {
                    TransferRespondFromNotification a3 = TransferNotificationBroadcastReceiverKt.a(false, intent);
                    Context context4 = App.m;
                    App.Companion.b().b.b(a3);
                    Toast.makeText(context, "Transfer Declined", 0).show();
                    return;
                } catch (Exception e3) {
                    Logger.f(e3, new Pair[0]);
                    return;
                }
            }
            boolean a4 = Intrinsics.a(action, c);
            String str = h;
            if (a4) {
                String stringExtra3 = intent.getStringExtra(str);
                if (stringExtra3 != null) {
                    Context context5 = App.m;
                    App.Companion.b().b.b(new TransferCancellationRequested(stringExtra3));
                    Toast.makeText(context, "Transfer Cancelled", 0).show();
                    return;
                }
                return;
            }
            if (Intrinsics.a(action, d)) {
                String stringExtra4 = intent.getStringExtra(str);
                if (stringExtra4 != null) {
                    Context context6 = App.m;
                    App.Companion.b().b.b(new TransferResume(stringExtra4, ByteString.m));
                    return;
                }
                return;
            }
            if (Intrinsics.a(action, e) && (stringExtra = intent.getStringExtra(str)) != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                DefaultScheduler defaultScheduler = Dispatchers.a;
                BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.l), null, null, new TransferNotificationBroadcastReceiver$onReceive$2(stringExtra, goAsync, context, logger2, null), 3);
            }
        }
    }
}
