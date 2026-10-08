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
public final class PeerMessageBody$TransferAcceptedElsewhere extends Message {
    public static final PeerMessageBody$TransferAcceptedElsewhere$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(PeerMessageBody$TransferAcceptedElsewhere.class), "type.googleapis.com/frontend.PeerMessageBody.TransferAcceptedElsewhere", Syntax.l, null, 0);
    public final String m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeerMessageBody$TransferAcceptedElsewhere(String str, ByteString byteString) {
        super(n, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PeerMessageBody$TransferAcceptedElsewhere)) {
            return false;
        }
        PeerMessageBody$TransferAcceptedElsewhere peerMessageBody$TransferAcceptedElsewhere = (PeerMessageBody$TransferAcceptedElsewhere) obj;
        if (Intrinsics.a(a(), peerMessageBody$TransferAcceptedElsewhere.a()) && Intrinsics.a(this.m, peerMessageBody$TransferAcceptedElsewhere.m)) {
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
        q.z(this.m, "transfer_id=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "TransferAcceptedElsewhere{", "}", null, 56);
    }
}
