package net.blip.android.notifications;

import androidx.core.app.NotificationCompat$Builder;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.android.R;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.String_formatAsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ NotificationFactory k;
    public final /* synthetic */ int l;
    public final /* synthetic */ Serializable m;

    public /* synthetic */ b(NotificationFactory notificationFactory, int i, String str) {
        this.k = notificationFactory;
        this.l = i;
        this.m = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = this.l;
        NotificationFactory notificationFactory = this.k;
        Serializable serializable = this.m;
        switch (i) {
            case 0:
                NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj;
                notificationCompat$Builder.getClass();
                notificationCompat$Builder.f("Preparing transfer…");
                notificationCompat$Builder.a(notificationFactory.a(i2, (String) serializable));
                notificationCompat$Builder.v = Colors.a;
                notificationCompat$Builder.e();
                notificationCompat$Builder.A.icon = R.drawable.ic_notification_waiting;
                notificationCompat$Builder.h(8, true);
                notificationCompat$Builder.h(2, true);
                notificationCompat$Builder.y = 1;
                notificationCompat$Builder.w = 1;
                return unit;
            default:
                Transfer transfer = (Transfer) serializable;
                NotificationCompat$Builder notificationCompat$Builder2 = (NotificationCompat$Builder) obj;
                notificationCompat$Builder2.getClass();
                notificationCompat$Builder2.j(String_formatAsKt.a(Transfer_DerivedKt.b(transfer)));
                String str = Strings.a;
                notificationCompat$Builder2.g(StringsKt.e(transfer));
                notificationCompat$Builder2.f("Processing content…");
                notificationCompat$Builder2.a(notificationFactory.a(i2, transfer.m));
                notificationCompat$Builder2.v = Colors.a;
                notificationCompat$Builder2.e();
                notificationCompat$Builder2.A.icon = R.drawable.ic_notification_waiting;
                return unit;
        }
    }

    public /* synthetic */ b(Transfer transfer, NotificationFactory notificationFactory, int i) {
        this.m = transfer;
        this.k = notificationFactory;
        this.l = i;
    }
}
