package net.blip.libblip.event;

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
public final class NotificationTokenGenerated extends Message {
    public static final NotificationTokenGenerated$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(NotificationTokenGenerated.class), "type.googleapis.com/event.NotificationTokenGenerated", Syntax.l, null, 0);
    public final int m;
    public final ByteString n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationTokenGenerated(int i, ByteString byteString, ByteString byteString2) {
        super(o, byteString2);
        byteString.getClass();
        byteString2.getClass();
        this.m = i;
        this.n = byteString;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NotificationTokenGenerated)) {
            return false;
        }
        NotificationTokenGenerated notificationTokenGenerated = (NotificationTokenGenerated) obj;
        if (Intrinsics.a(a(), notificationTokenGenerated.a()) && this.m == notificationTokenGenerated.m && Intrinsics.a(this.n, notificationTokenGenerated.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + q.b(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("service_kind=" + this.m);
        arrayList.add("token=" + this.n);
        return CollectionsKt.y(arrayList, ", ", "NotificationTokenGenerated{", "}", null, 56);
    }
}
