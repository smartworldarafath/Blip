package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PushNotifications extends Message {
    public static final PushNotifications$Companion$ADAPTER$1 p = new ProtoAdapter(FieldEncoding.m, Reflection.a(PushNotifications.class), "type.googleapis.com/frontend.PushNotifications", Syntax.l, null, 0);
    public final NotificationPermissionStatus m;
    public final int n;
    public final ByteString o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PushNotifications(NotificationPermissionStatus notificationPermissionStatus, int i, ByteString byteString, ByteString byteString2) {
        super(p, byteString2);
        notificationPermissionStatus.getClass();
        byteString.getClass();
        byteString2.getClass();
        this.m = notificationPermissionStatus;
        this.n = i;
        this.o = byteString;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PushNotifications)) {
            return false;
        }
        PushNotifications pushNotifications = (PushNotifications) obj;
        if (Intrinsics.a(a(), pushNotifications.a()) && this.m == pushNotifications.m && this.n == pushNotifications.n && Intrinsics.a(this.o, pushNotifications.o)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.o.hashCode() + q.b(this.n, (this.m.hashCode() + (a().hashCode() * 37)) * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("permissions=" + this.m);
        arrayList.add("service_type=" + this.n);
        arrayList.add("token=" + this.o);
        return CollectionsKt.y(arrayList, ", ", "PushNotifications{", "}", null, 56);
    }
}
