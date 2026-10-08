package net.blip.libblip.frontend;

import bsarchive.Metadata;
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
public final class PeerMessageBody$TransferInvite extends Message {
    public static final PeerMessageBody$TransferInvite$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(PeerMessageBody$TransferInvite.class), "type.googleapis.com/frontend.PeerMessageBody.TransferInvite", Syntax.l, null, 0);
    public final String m;
    public final Metadata n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeerMessageBody$TransferInvite(String str, Metadata metadata, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = metadata;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PeerMessageBody$TransferInvite)) {
            return false;
        }
        PeerMessageBody$TransferInvite peerMessageBody$TransferInvite = (PeerMessageBody$TransferInvite) obj;
        if (Intrinsics.a(a(), peerMessageBody$TransferInvite.a()) && Intrinsics.a(this.m, peerMessageBody$TransferInvite.m) && Intrinsics.a(this.n, peerMessageBody$TransferInvite.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int c = jb.c(this.m, a().hashCode() * 37, 37);
            Metadata metadata = this.n;
            if (metadata != null) {
                i = metadata.hashCode();
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
        Metadata metadata = this.n;
        if (metadata != null) {
            arrayList.add("archive_stub=" + metadata);
        }
        return CollectionsKt.y(arrayList, ", ", "TransferInvite{", "}", null, 56);
    }
}
