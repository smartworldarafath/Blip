package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PushNotifications$Companion$ADAPTER$1 extends ProtoAdapter<PushNotifications> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = NotificationPermissionStatus.m;
        ByteString byteString = ByteString.m;
        long d = protoReader.d();
        int i = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            protoReader.o(h);
                        } else {
                            ProtoAdapter.o.getClass();
                            byteString = protoReader.k();
                        }
                    } else {
                        ProtoAdapter.h.getClass();
                        i = protoReader.p();
                    }
                } else {
                    try {
                        obj = NotificationPermissionStatus.l.c(protoReader);
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                    }
                }
            } else {
                return new PushNotifications((NotificationPermissionStatus) obj, i, byteString, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        PushNotifications pushNotifications = (PushNotifications) obj;
        protoWriter.getClass();
        pushNotifications.getClass();
        ByteString byteString = pushNotifications.o;
        NotificationPermissionStatus notificationPermissionStatus = pushNotifications.m;
        if (notificationPermissionStatus != NotificationPermissionStatus.m) {
            NotificationPermissionStatus.l.f(protoWriter, 1, notificationPermissionStatus);
        }
        int i = pushNotifications.n;
        if (i != 0) {
            ProtoAdapter.h.f(protoWriter, 2, Integer.valueOf(i));
        }
        if (!Intrinsics.a(byteString, ByteString.m)) {
            ProtoAdapter.o.f(protoWriter, 3, byteString);
        }
        protoWriter.a(pushNotifications.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        PushNotifications pushNotifications = (PushNotifications) obj;
        reverseProtoWriter.getClass();
        pushNotifications.getClass();
        reverseProtoWriter.d(pushNotifications.a());
        ByteString byteString = pushNotifications.o;
        if (!Intrinsics.a(byteString, ByteString.m)) {
            ProtoAdapter.o.g(reverseProtoWriter, 3, byteString);
        }
        int i = pushNotifications.n;
        if (i != 0) {
            ProtoAdapter.h.g(reverseProtoWriter, 2, Integer.valueOf(i));
        }
        NotificationPermissionStatus notificationPermissionStatus = pushNotifications.m;
        if (notificationPermissionStatus != NotificationPermissionStatus.m) {
            NotificationPermissionStatus.l.g(reverseProtoWriter, 1, notificationPermissionStatus);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        PushNotifications pushNotifications = (PushNotifications) obj;
        pushNotifications.getClass();
        ByteString byteString = pushNotifications.o;
        int e = pushNotifications.a().e();
        NotificationPermissionStatus notificationPermissionStatus = pushNotifications.m;
        if (notificationPermissionStatus != NotificationPermissionStatus.m) {
            e += NotificationPermissionStatus.l.i(1, notificationPermissionStatus);
        }
        int i = pushNotifications.n;
        if (i != 0) {
            e += ProtoAdapter.h.i(2, Integer.valueOf(i));
        }
        if (!Intrinsics.a(byteString, ByteString.m)) {
            return ProtoAdapter.o.i(3, byteString) + e;
        }
        return e;
    }
}
