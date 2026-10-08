package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.q;
import java.time.Instant;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.PeerId;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeerInteraction extends Message {
    public static final PeerInteraction$Companion$ADAPTER$1 p = new ProtoAdapter(FieldEncoding.m, Reflection.a(PeerInteraction.class), "type.googleapis.com/frontend.PeerInteraction", Syntax.l, null, 0);
    public final Instant m;
    public final PeerId n;
    public final boolean o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PeerInteraction(Instant instant, PeerId peerId, boolean z, ByteString byteString) {
        super(p, byteString);
        byteString.getClass();
        this.m = instant;
        this.n = peerId;
        this.o = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PeerInteraction)) {
            return false;
        }
        PeerInteraction peerInteraction = (PeerInteraction) obj;
        if (Intrinsics.a(a(), peerInteraction.a()) && Intrinsics.a(this.m, peerInteraction.m) && Intrinsics.a(this.n, peerInteraction.n) && this.o == peerInteraction.o) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int hashCode = a().hashCode() * 37;
            int i3 = 0;
            Instant instant = this.m;
            if (instant != null) {
                i = instant.hashCode();
            } else {
                i = 0;
            }
            int i4 = (hashCode + i) * 37;
            PeerId peerId = this.n;
            if (peerId != null) {
                i3 = peerId.hashCode();
            }
            int hashCode2 = Boolean.hashCode(this.o) + ((i4 + i3) * 37);
            this.l = hashCode2;
            return hashCode2;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Instant instant = this.m;
        if (instant != null) {
            arrayList.add("time=" + instant);
        }
        PeerId peerId = this.n;
        if (peerId != null) {
            arrayList.add("peer_id=" + peerId);
        }
        q.A("initiated_by_peer=", this.o, arrayList);
        return CollectionsKt.y(arrayList, ", ", "PeerInteraction{", "}", null, 56);
    }
}
