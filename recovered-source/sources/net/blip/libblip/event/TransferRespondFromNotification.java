package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.frontend.TransferNotificationResponse;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferRespondFromNotification extends Message {
    public static final TransferRespondFromNotification$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferRespondFromNotification.class), "type.googleapis.com/event.TransferRespondFromNotification", Syntax.l, null, 0);
    public final String m;
    public final TransferNotificationResponse n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferRespondFromNotification(String str, TransferNotificationResponse transferNotificationResponse, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = transferNotificationResponse;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferRespondFromNotification)) {
            return false;
        }
        TransferRespondFromNotification transferRespondFromNotification = (TransferRespondFromNotification) obj;
        if (Intrinsics.a(a(), transferRespondFromNotification.a()) && Intrinsics.a(this.m, transferRespondFromNotification.m) && Intrinsics.a(this.n, transferRespondFromNotification.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int c = jb.c(this.m, a().hashCode() * 37, 37);
            TransferNotificationResponse transferNotificationResponse = this.n;
            if (transferNotificationResponse != null) {
                i = transferNotificationResponse.hashCode();
            } else {
                i = 0;
            }
            int i3 = c + i;
            this.l = i3;
            return i3;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "transfer_id=", arrayList);
        TransferNotificationResponse transferNotificationResponse = this.n;
        if (transferNotificationResponse != null) {
            arrayList.add("response=" + transferNotificationResponse);
        }
        return CollectionsKt.y(arrayList, ", ", "TransferRespondFromNotification{", "}", null, 56);
    }
}
