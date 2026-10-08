package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferAddContentRequested extends Message {
    public static final TransferAddContentRequested$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferAddContentRequested.class), "type.googleapis.com/event.TransferAddContentRequested", Syntax.l, null, 0);
    public final String m;
    public final List n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferAddContentRequested(String str, List list, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        list.getClass();
        byteString.getClass();
        this.m = str;
        this.n = Internal.a("locations", list);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferAddContentRequested)) {
            return false;
        }
        TransferAddContentRequested transferAddContentRequested = (TransferAddContentRequested) obj;
        if (Intrinsics.a(a(), transferAddContentRequested.a()) && Intrinsics.a(this.m, transferAddContentRequested.m) && Intrinsics.a(this.n, transferAddContentRequested.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + jb.c(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "transfer_id=", arrayList);
        List list = this.n;
        if (!list.isEmpty()) {
            arrayList.add("locations=".concat(Internal.d(list)));
        }
        return CollectionsKt.y(arrayList, ", ", "TransferAddContentRequested{", "}", null, 56);
    }
}
