package net.blip.android.notifications;

import androidx.core.app.NotificationCompat$Builder;
import bsarchive.Metadata;
import com.squareup.wire.Message;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.android.R;
import net.blip.libblip.Metadata_DerivedKt;
import net.blip.libblip.Peer;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.String_formatAsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Message k;
    public final /* synthetic */ Peer l;

    public /* synthetic */ e(Peer peer, Metadata metadata) {
        this.j = 2;
        this.l = peer;
        this.k = metadata;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        String b;
        long j;
        String a;
        String str;
        String b2;
        int i = this.j;
        String str2 = "<unknown>";
        Unit unit = Unit.a;
        Message message = this.k;
        Peer peer = this.l;
        switch (i) {
            case 0:
                Transfer transfer = (Transfer) message;
                NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj;
                notificationCompat$Builder.getClass();
                notificationCompat$Builder.t = "missed_call";
                notificationCompat$Builder.j(String_formatAsKt.a(Transfer_DerivedKt.b(transfer)));
                String str3 = Strings.a;
                notificationCompat$Builder.g(StringsKt.e(transfer));
                if (peer != null && (b = peer.b()) != null) {
                    str2 = b;
                }
                notificationCompat$Builder.f(str2.concat(" declined"));
                notificationCompat$Builder.A.icon = R.drawable.ic_notification_error;
                notificationCompat$Builder.v = Colors.b;
                notificationCompat$Builder.d(true);
                return unit;
            case 1:
                Transfer transfer2 = (Transfer) message;
                NotificationCompat$Builder notificationCompat$Builder2 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder2.getClass();
                notificationCompat$Builder2.t = "err";
                notificationCompat$Builder2.j(String_formatAsKt.a(Transfer_DerivedKt.b(transfer2)));
                String str4 = Strings.a;
                notificationCompat$Builder2.g(StringsKt.e(transfer2));
                notificationCompat$Builder2.f(StringsKt.b(transfer2, peer));
                notificationCompat$Builder2.A.icon = R.drawable.ic_notification_error;
                notificationCompat$Builder2.v = Colors.b;
                notificationCompat$Builder2.d(true);
                return unit;
            default:
                Metadata metadata = (Metadata) message;
                NotificationCompat$Builder notificationCompat$Builder3 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder3.getClass();
                notificationCompat$Builder3.t = "missed_call";
                if (peer instanceof Peer.User) {
                    a = ((Peer.User) peer).j.n;
                } else {
                    if (metadata != null) {
                        j = Metadata_DerivedKt.d(metadata);
                    } else {
                        j = 0;
                    }
                    a = String_formatAsKt.a(j);
                }
                notificationCompat$Builder3.j(a);
                if (metadata != null) {
                    String str5 = Strings.a;
                    str = StringsKt.d(metadata.m);
                } else {
                    str = "Transfer";
                }
                notificationCompat$Builder3.g(str);
                if (peer != null && (b2 = peer.b()) != null) {
                    str2 = b2;
                }
                notificationCompat$Builder3.f("Cancelled by ".concat(str2));
                notificationCompat$Builder3.A.icon = R.drawable.ic_notification_error;
                notificationCompat$Builder3.v = Colors.b;
                notificationCompat$Builder3.d(true);
                return unit;
        }
    }

    public /* synthetic */ e(Transfer transfer, Peer peer, int i) {
        this.j = i;
        this.k = transfer;
        this.l = peer;
    }
}
