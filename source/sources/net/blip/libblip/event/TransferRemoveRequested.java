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
public final class TransferRemoveRequested extends Message {
    public static final TransferRemoveRequested$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferRemoveRequested.class), "type.googleapis.com/event.TransferRemoveRequested", Syntax.l, null, 0);
    public final String m;
    public final boolean n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferRemoveRequested(String str, boolean z, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferRemoveRequested)) {
            return false;
        }
        TransferRemoveRequested transferRemoveRequested = (TransferRemoveRequested) obj;
        if (Intrinsics.a(a(), transferRemoveRequested.a()) && Intrinsics.a(this.m, transferRemoveRequested.m) && this.n == transferRemoveRequested.n) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Boolean.hashCode(this.n) + jb.c(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "transfer_id=", arrayList);
        q.A("delete_files=", this.n, arrayList);
        return CollectionsKt.y(arrayList, ", ", "TransferRemoveRequested{", "}", null, 56);
    }

    public /* synthetic */ TransferRemoveRequested(int i, String str, boolean z) {
        this(str, (i & 2) != 0 ? false : z, ByteString.m);
    }
}
