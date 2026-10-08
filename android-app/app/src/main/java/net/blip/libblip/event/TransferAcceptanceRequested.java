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
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferAcceptanceRequested extends Message {
    public static final TransferAcceptanceRequested$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferAcceptanceRequested.class), "type.googleapis.com/event.TransferAcceptanceRequested", Syntax.l, null, 0);
    public final String m;
    public final String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferAcceptanceRequested(String str, String str2, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.m = str;
        this.n = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferAcceptanceRequested)) {
            return false;
        }
        TransferAcceptanceRequested transferAcceptanceRequested = (TransferAcceptanceRequested) obj;
        if (Intrinsics.a(a(), transferAcceptanceRequested.a()) && Intrinsics.a(this.m, transferAcceptanceRequested.m) && Intrinsics.a(this.n, transferAcceptanceRequested.n)) {
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
        q.z(this.n, "save_path=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "TransferAcceptanceRequested{", "}", null, 56);
    }
}
