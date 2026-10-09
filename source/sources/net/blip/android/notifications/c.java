package net.blip.android.notifications;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.graphics.drawable.IconCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k8;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import net.blip.android.R;
import net.blip.libblip.Device;
import net.blip.libblip.DeviceReach;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.String_formatAsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Transfer k;
    public final /* synthetic */ Peer l;
    public final /* synthetic */ NotificationFactory m;
    public final /* synthetic */ int n;

    public /* synthetic */ c(Peer peer, Transfer transfer, NotificationFactory notificationFactory, int i) {
        this.j = 2;
        this.l = peer;
        this.k = transfer;
        this.m = notificationFactory;
        this.n = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        String b;
        String b2;
        Boolean bool;
        String str;
        String concat;
        String b3;
        DeviceReach deviceReach;
        String b4;
        String str2;
        String str3;
        Boolean bool2;
        Device device;
        boolean z;
        DeviceReach deviceReach2;
        String b5;
        String b6;
        int i = this.j;
        String str4 = "<unknown>";
        boolean z2 = false;
        Unit unit = Unit.a;
        Peer peer = this.l;
        int i2 = this.n;
        NotificationFactory notificationFactory = this.m;
        Transfer transfer = this.k;
        switch (i) {
            case 0:
                NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj;
                notificationCompat$Builder.getClass();
                Notification notification = notificationCompat$Builder.A;
                notificationCompat$Builder.j("Reconnecting…");
                String str5 = Strings.a;
                notificationCompat$Builder.g(StringsKt.e(transfer));
                notificationCompat$Builder.a(notificationFactory.a(i2, transfer.m));
                int b7 = (int) Transfer_DerivedKt.b(transfer);
                int i3 = (int) transfer.z;
                notificationCompat$Builder.n = b7;
                notificationCompat$Builder.o = i3;
                notificationCompat$Builder.p = false;
                if (transfer.v == Transfer.Direction.n) {
                    if (peer != null && (b2 = peer.b()) != null) {
                        str4 = b2;
                    }
                    notificationCompat$Builder.f("Downloading from ".concat(str4));
                    notification.icon = R.drawable.ic_notification_downloading;
                } else {
                    if (peer != null && (b = peer.b()) != null) {
                        str4 = b;
                    }
                    notificationCompat$Builder.f("Sending to ".concat(str4));
                    notification.icon = R.drawable.ic_notification_uploading;
                }
                notificationCompat$Builder.v = Colors.a;
                notificationCompat$Builder.e();
                return unit;
            case 1:
                NotificationCompat$Builder notificationCompat$Builder2 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder2.getClass();
                notificationCompat$Builder2.j(String.format("%.0f%% of %s", Arrays.copyOf(new Object[]{Float.valueOf(Transfer_DerivedKt.a(transfer) * 100.0f), String_formatAsKt.a(Transfer_DerivedKt.b(transfer))}, 2)));
                String str6 = Strings.a;
                notificationCompat$Builder2.g(StringsKt.e(transfer));
                notificationCompat$Builder2.f(StringsKt.b(transfer, peer));
                String str7 = transfer.m;
                notificationCompat$Builder2.a(notificationFactory.a(i2, str7));
                if (Intrinsics.a(Transfer_DerivedKt.d(transfer), transfer.t)) {
                    String str8 = TransferNotificationBroadcastReceiver.a;
                    Context context = notificationFactory.a;
                    context.getClass();
                    Intent intent = new Intent(context, (Class<?>) TransferNotificationBroadcastReceiver.class);
                    intent.setAction(TransferNotificationBroadcastReceiver.d);
                    intent.putExtra(TransferNotificationBroadcastReceiver.f, String.valueOf(i2));
                    intent.putExtra(TransferNotificationBroadcastReceiver.h, str7);
                    notificationCompat$Builder2.a(new NotificationCompat$Action((IconCompat) null, "Resume", NotificationFactoryKt.a(context, intent, str7)));
                }
                notificationCompat$Builder2.v = Colors.c;
                notificationCompat$Builder2.A.icon = R.drawable.ic_notification_warning;
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                NotificationCompat$Builder notificationCompat$Builder3 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder3.getClass();
                if (peer != null) {
                    if (peer instanceof Peer.User) {
                        User user = ((Peer.User) peer).j;
                        user.getClass();
                        Map map = user.x;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Map.Entry entry : map.entrySet()) {
                            DeviceReach deviceReach3 = ((Device) entry.getValue()).p;
                            if (deviceReach3 != null && deviceReach3.m) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                        boolean z3 = !linkedHashMap.isEmpty();
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Map.Entry entry2 : map.entrySet()) {
                            DeviceReach deviceReach4 = ((Device) entry2.getValue()).p;
                            if (deviceReach4 != null && deviceReach4.n) {
                                linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                            }
                        }
                        deviceReach = new DeviceReach(4, z3, !linkedHashMap2.isEmpty());
                    } else if (peer instanceof Peer.Device) {
                        deviceReach = ((Peer.Device) peer).j.p;
                        if (deviceReach == null) {
                            deviceReach = new DeviceReach(7, z2, z2);
                        }
                    } else {
                        k8.e();
                        return null;
                    }
                    if (deviceReach.n || deviceReach.m) {
                        z2 = true;
                    }
                    bool = Boolean.valueOf(!z2);
                } else {
                    bool = null;
                }
                if (Intrinsics.a(bool, Boolean.TRUE)) {
                    concat = String_formatAsKt.a(Transfer_DerivedKt.b(transfer));
                } else {
                    if (peer == null || (str = peer.d()) == null) {
                        str = "<unknown>";
                    }
                    concat = str.concat(" is offline");
                }
                notificationCompat$Builder3.j(concat);
                String str9 = Strings.a;
                notificationCompat$Builder3.g(StringsKt.e(transfer));
                if (peer != null && (b3 = peer.b()) != null) {
                    str4 = b3;
                }
                notificationCompat$Builder3.f("Waiting for " + str4 + " to accept…");
                notificationCompat$Builder3.a(notificationFactory.a(i2, transfer.m));
                notificationCompat$Builder3.v = Colors.a;
                notificationCompat$Builder3.e();
                notificationCompat$Builder3.A.icon = R.drawable.ic_notification_waiting;
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                NotificationCompat$Builder notificationCompat$Builder4 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder4.getClass();
                Notification notification2 = notificationCompat$Builder4.A;
                String str10 = Strings.a;
                notificationCompat$Builder4.g(StringsKt.e(transfer));
                notificationCompat$Builder4.a(notificationFactory.a(i2, transfer.m));
                int b8 = MathKt.b(Transfer_DerivedKt.a(transfer) * 100.0f);
                notificationCompat$Builder4.n = 100;
                notificationCompat$Builder4.o = b8;
                notificationCompat$Builder4.p = false;
                notificationCompat$Builder4.v = Colors.a;
                notificationCompat$Builder4.e();
                if (transfer.v == Transfer.Direction.n) {
                    if (peer != null && (b5 = peer.b()) != null) {
                        str4 = b5;
                    }
                    notificationCompat$Builder4.f("Receiving from ".concat(str4));
                    notification2.icon = R.drawable.ic_notification_downloading;
                } else {
                    if (peer != null && (b4 = peer.b()) != null) {
                        str4 = b4;
                    }
                    notificationCompat$Builder4.f("Sending to ".concat(str4));
                    notification2.icon = R.drawable.ic_notification_uploading;
                }
                PeerId peerId = transfer.n;
                if (peerId != null && (str3 = peerId.n) != null) {
                    if (peer != null) {
                        if (peer instanceof Peer.User) {
                            device = (Device) ((Peer.User) peer).j.x.get(str3);
                        } else if (peer instanceof Peer.Device) {
                            device = ((Peer.Device) peer).j;
                        } else {
                            k8.e();
                            return null;
                        }
                        if (device != null && (deviceReach2 = device.p) != null) {
                            z = deviceReach2.m;
                        } else {
                            z = false;
                        }
                        bool2 = Boolean.valueOf(z);
                    } else {
                        bool2 = null;
                    }
                    if (bool2 != null) {
                        z2 = bool2.booleanValue();
                    }
                }
                if (!z2) {
                    if (peer != null) {
                        str2 = peer.d();
                    } else {
                        str2 = null;
                    }
                    notificationCompat$Builder4.j(str2 + " is offline");
                    notification2.icon = R.drawable.ic_notification_dim;
                } else {
                    notificationCompat$Builder4.j(String.format("%.0f%% of %s", Arrays.copyOf(new Object[]{Float.valueOf(Transfer_DerivedKt.a(transfer) * 100.0f), String_formatAsKt.a(Transfer_DerivedKt.b(transfer))}, 2)));
                }
                return unit;
            default:
                NotificationCompat$Builder notificationCompat$Builder5 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder5.getClass();
                notificationCompat$Builder5.j(String.format("%.0f%% of %s", Arrays.copyOf(new Object[]{Float.valueOf(Transfer_DerivedKt.a(transfer) * 100.0f), String_formatAsKt.a(Transfer_DerivedKt.b(transfer))}, 2)));
                String str11 = Strings.a;
                notificationCompat$Builder5.g(StringsKt.e(transfer));
                notificationCompat$Builder5.a(notificationFactory.a(i2, transfer.m));
                if (peer != null && (b6 = peer.b()) != null) {
                    str4 = b6;
                }
                notificationCompat$Builder5.f("Connecting to " + str4 + "…");
                notificationCompat$Builder5.n = 0;
                notificationCompat$Builder5.o = 0;
                notificationCompat$Builder5.p = true;
                notificationCompat$Builder5.v = Colors.a;
                notificationCompat$Builder5.e();
                Transfer.Direction direction = transfer.v;
                Transfer.Direction direction2 = Transfer.Direction.n;
                Notification notification3 = notificationCompat$Builder5.A;
                if (direction == direction2) {
                    notification3.icon = R.drawable.ic_notification_downloading;
                } else {
                    notification3.icon = R.drawable.ic_notification_uploading;
                }
                return unit;
        }
    }

    public /* synthetic */ c(Transfer transfer, NotificationFactory notificationFactory, int i, Peer peer, int i2) {
        this.j = i2;
        this.k = transfer;
        this.m = notificationFactory;
        this.n = i;
        this.l = peer;
    }

    public /* synthetic */ c(Transfer transfer, Peer peer, NotificationFactory notificationFactory, int i) {
        this.j = 1;
        this.k = transfer;
        this.l = peer;
        this.m = notificationFactory;
        this.n = i;
    }
}
