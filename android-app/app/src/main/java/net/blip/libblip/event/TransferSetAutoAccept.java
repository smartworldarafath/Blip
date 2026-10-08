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
public final class TransferSetAutoAccept extends Message {
    public static final TransferSetAutoAccept$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferSetAutoAccept.class), "type.googleapis.com/event.TransferSetAutoAccept", Syntax.l, null, 0);
    public final boolean m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferSetAutoAccept(boolean z, ByteString byteString) {
        super(n, byteString);
        byteString.getClass();
        this.m = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferSetAutoAccept)) {
            return false;
        }
        TransferSetAutoAccept transferSetAutoAccept = (TransferSetAutoAccept) obj;
        if (Intrinsics.a(a(), transferSetAutoAccept.a()) && this.m == transferSetAutoAccept.m) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Boolean.hashCode(this.m) + (a().hashCode() * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.A("auto_accept=", this.m, arrayList);
        return CollectionsKt.y(arrayList, ", ", "TransferSetAutoAccept{", "}", null, 56);
    }
}
