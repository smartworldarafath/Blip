package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import net.blip.libblip.frontend.NotificationPermissionStatus;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationPermissionsChanged$Companion$ADAPTER$1 extends ProtoAdapter<NotificationPermissionsChanged> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = NotificationPermissionStatus.m;
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    try {
                        obj = NotificationPermissionStatus.l.c(protoReader);
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                    }
                } else {
                    protoReader.o(h);
                }
            } else {
                return new NotificationPermissionsChanged((NotificationPermissionStatus) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        NotificationPermissionsChanged notificationPermissionsChanged = (NotificationPermissionsChanged) obj;
        protoWriter.getClass();
        notificationPermissionsChanged.getClass();
        NotificationPermissionStatus notificationPermissionStatus = notificationPermissionsChanged.m;
        if (notificationPermissionStatus != NotificationPermissionStatus.m) {
            NotificationPermissionStatus.l.f(protoWriter, 1, notificationPermissionStatus);
        }
        protoWriter.a(notificationPermissionsChanged.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        NotificationPermissionsChanged notificationPermissionsChanged = (NotificationPermissionsChanged) obj;
        reverseProtoWriter.getClass();
        notificationPermissionsChanged.getClass();
        reverseProtoWriter.d(notificationPermissionsChanged.a());
        NotificationPermissionStatus notificationPermissionStatus = notificationPermissionsChanged.m;
        if (notificationPermissionStatus != NotificationPermissionStatus.m) {
            NotificationPermissionStatus.l.g(reverseProtoWriter, 1, notificationPermissionStatus);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        NotificationPermissionsChanged notificationPermissionsChanged = (NotificationPermissionsChanged) obj;
        notificationPermissionsChanged.getClass();
        int e = notificationPermissionsChanged.a().e();
        NotificationPermissionStatus notificationPermissionStatus = notificationPermissionsChanged.m;
        if (notificationPermissionStatus != NotificationPermissionStatus.m) {
            return NotificationPermissionStatus.l.i(1, notificationPermissionStatus) + e;
        }
        return e;
    }
}
