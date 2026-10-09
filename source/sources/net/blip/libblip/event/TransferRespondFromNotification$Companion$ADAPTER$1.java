package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.frontend.TransferNotificationResponse;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferRespondFromNotification$Companion$ADAPTER$1 extends ProtoAdapter<TransferRespondFromNotification> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        obj = TransferNotificationResponse.p.c(protoReader);
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new TransferRespondFromNotification(str, (TransferNotificationResponse) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferRespondFromNotification transferRespondFromNotification = (TransferRespondFromNotification) obj;
        protoWriter.getClass();
        transferRespondFromNotification.getClass();
        String str = transferRespondFromNotification.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        TransferNotificationResponse transferNotificationResponse = transferRespondFromNotification.n;
        if (transferNotificationResponse != null) {
            TransferNotificationResponse.p.f(protoWriter, 2, transferNotificationResponse);
        }
        protoWriter.a(transferRespondFromNotification.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferRespondFromNotification transferRespondFromNotification = (TransferRespondFromNotification) obj;
        reverseProtoWriter.getClass();
        transferRespondFromNotification.getClass();
        String str = transferRespondFromNotification.m;
        reverseProtoWriter.d(transferRespondFromNotification.a());
        TransferNotificationResponse transferNotificationResponse = transferRespondFromNotification.n;
        if (transferNotificationResponse != null) {
            TransferNotificationResponse.p.g(reverseProtoWriter, 2, transferNotificationResponse);
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferRespondFromNotification transferRespondFromNotification = (TransferRespondFromNotification) obj;
        transferRespondFromNotification.getClass();
        int e = transferRespondFromNotification.a().e();
        String str = transferRespondFromNotification.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        TransferNotificationResponse transferNotificationResponse = transferRespondFromNotification.n;
        if (transferNotificationResponse != null) {
            return TransferNotificationResponse.p.i(2, transferNotificationResponse) + e;
        }
        return e;
    }
}
