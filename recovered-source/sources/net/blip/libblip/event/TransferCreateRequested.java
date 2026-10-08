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
import net.blip.libblip.PeerId;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferCreateRequested extends Message {
    public static final TransferCreateRequested$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferCreateRequested.class), "type.googleapis.com/event.TransferCreateRequested", Syntax.l, null, 0);
    public final String m;
    public final PeerId n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferCreateRequested(String str, PeerId peerId, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = peerId;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferCreateRequested)) {
            return false;
        }
        TransferCreateRequested transferCreateRequested = (TransferCreateRequested) obj;
        if (Intrinsics.a(a(), transferCreateRequested.a()) && Intrinsics.a(this.m, transferCreateRequested.m) && Intrinsics.a(this.n, transferCreateRequested.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int c = jb.c(this.m, a().hashCode() * 37, 37);
            PeerId peerId = this.n;
            if (peerId != null) {
                i = peerId.hashCode();
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
        PeerId peerId = this.n;
        if (peerId != null) {
            arrayList.add("peer_id=" + peerId);
        }
        return CollectionsKt.y(arrayList, ", ", "TransferCreateRequested{", "}", null, 56);
    }
}
