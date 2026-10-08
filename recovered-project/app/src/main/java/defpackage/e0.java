package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.core.app.NotificationCompat$Builder;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.android.notifications.NotificationFactory;
import net.blip.android.notifications.b;
import net.blip.android.notifications.c;
import net.blip.libblip.Peer;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.TransferErr;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e0 implements Function1 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ int k;
    public final /* synthetic */ Serializable l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;

    public /* synthetic */ e0(ArrayList arrayList, MeasureScope measureScope, int i, ArrayList arrayList2) {
        this.l = arrayList;
        this.n = measureScope;
        this.k = i;
        this.m = arrayList2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i;
        Function1 bVar;
        int i2 = this.j;
        Unit unit = Unit.a;
        int i3 = 1;
        Object obj2 = this.n;
        Object obj3 = this.m;
        Serializable serializable = this.l;
        switch (i2) {
            case 0:
                ArrayList arrayList = (ArrayList) serializable;
                MeasureScope measureScope = (MeasureScope) obj2;
                ArrayList arrayList2 = (ArrayList) obj3;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                int i4 = 0;
                while (i4 < size) {
                    List list = (List) arrayList.get(i4);
                    int size2 = list.size();
                    int[] iArr = new int[size2];
                    for (int i5 = 0; i5 < size2; i5++) {
                        int i6 = ((Placeable) list.get(i5)).j;
                        if (i5 < list.size() - i3) {
                            i = measureScope.y0(8.0f);
                        } else {
                            i = 0;
                        }
                        iArr[i5] = i6 + i;
                    }
                    int[] iArr2 = new int[size2];
                    Arrangement.c(this.k, iArr, iArr2, false);
                    int size3 = list.size();
                    for (int i7 = 0; i7 < size3; i7++) {
                        placementScope.e((Placeable) list.get(i7), iArr2[i7], ((Number) arrayList2.get(i4)).intValue(), 0.0f);
                    }
                    i4++;
                    i3 = 1;
                }
                return unit;
            default:
                Transfer transfer = (Transfer) serializable;
                NotificationFactory notificationFactory = (NotificationFactory) obj3;
                Peer peer = (Peer) obj2;
                NotificationCompat$Builder notificationCompat$Builder = (NotificationCompat$Builder) obj;
                notificationCompat$Builder.getClass();
                int ordinal = transfer.w.ordinal();
                int i8 = this.k;
                switch (ordinal) {
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        bVar = new b(transfer, notificationFactory, i8);
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        bVar = new c(peer, transfer, notificationFactory, i8);
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        if (transfer.z == 0) {
                            bVar = new c(transfer, notificationFactory, i8, peer, 4);
                            break;
                        } else {
                            bVar = new c(transfer, notificationFactory, i8, peer, 0);
                            break;
                        }
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        bVar = new c(transfer, notificationFactory, i8, peer, 3);
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        TransferErr d = Transfer_DerivedKt.d(transfer);
                        if (d != null) {
                            if (!d.o) {
                                bVar = new c(transfer, notificationFactory, i8, peer, 3);
                                break;
                            } else {
                                bVar = new c(transfer, peer, notificationFactory, i8);
                                break;
                            }
                        } else {
                            u2.l("Transfer is paused, but has no error");
                            return null;
                        }
                    default:
                        throw new IllegalStateException("Unexpected status (" + transfer.w + ") encountered in worker");
                }
                bVar.b(notificationCompat$Builder);
                notificationCompat$Builder.h(8, true);
                notificationCompat$Builder.h(2, true);
                notificationCompat$Builder.y = 1;
                notificationCompat$Builder.w = 1;
                return unit;
        }
    }

    public /* synthetic */ e0(Peer peer, Transfer transfer, NotificationFactory notificationFactory, int i) {
        this.l = transfer;
        this.m = notificationFactory;
        this.k = i;
        this.n = peer;
    }
}
