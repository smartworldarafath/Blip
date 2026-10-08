package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.frontend.NotificationPermissionStatus;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationPermissionsChanged extends Message {
    public static final NotificationPermissionsChanged$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(NotificationPermissionsChanged.class), "type.googleapis.com/event.NotificationPermissionsChanged", Syntax.l, null, 0);
    public final NotificationPermissionStatus m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPermissionsChanged(NotificationPermissionStatus notificationPermissionStatus, ByteString byteString) {
        super(n, byteString);
        notificationPermissionStatus.getClass();
        byteString.getClass();
        this.m = notificationPermissionStatus;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NotificationPermissionsChanged)) {
            return false;
        }
        NotificationPermissionsChanged notificationPermissionsChanged = (NotificationPermissionsChanged) obj;
        if (Intrinsics.a(a(), notificationPermissionsChanged.a()) && this.m == notificationPermissionsChanged.m) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.m.hashCode() + (a().hashCode() * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("value=" + this.m);
        return CollectionsKt.y(arrayList, ", ", "NotificationPermissionsChanged{", "}", null, 56);
    }
}
