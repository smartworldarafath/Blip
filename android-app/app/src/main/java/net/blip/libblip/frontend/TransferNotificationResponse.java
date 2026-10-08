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
import net.blip.libblip.PeerId;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferNotificationResponse extends Message {
    public static final TransferNotificationResponse$Companion$ADAPTER$1 p = new ProtoAdapter(FieldEncoding.m, Reflection.a(TransferNotificationResponse.class), "type.googleapis.com/frontend.TransferNotificationResponse", Syntax.l, null, 0);
    public final boolean m;
    public final PeerId n;
    public final Metadata o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferNotificationResponse(boolean z, PeerId peerId, Metadata metadata, ByteString byteString) {
        super(p, byteString);
        byteString.getClass();
        this.m = z;
        this.n = peerId;
        this.o = metadata;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TransferNotificationResponse)) {
            return false;
        }
        TransferNotificationResponse transferNotificationResponse = (TransferNotificationResponse) obj;
        if (Intrinsics.a(a(), transferNotificationResponse.a()) && this.m == transferNotificationResponse.m && Intrinsics.a(this.n, transferNotificationResponse.n) && Intrinsics.a(this.o, transferNotificationResponse.o)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int b = jb.b(a().hashCode() * 37, 37, this.m);
            int i3 = 0;
            PeerId peerId = this.n;
            if (peerId != null) {
                i = peerId.hashCode();
            } else {
                i = 0;
            }
            int i4 = (b + i) * 37;
            Metadata metadata = this.o;
            if (metadata != null) {
                i3 = metadata.hashCode();
            }
            int i5 = i4 + i3;
            this.l = i5;
            return i5;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.A("accept=", this.m, arrayList);
        PeerId peerId = this.n;
        if (peerId != null) {
            arrayList.add("expected_peer_id=" + peerId);
        }
        Metadata metadata = this.o;
        if (metadata != null) {
            arrayList.add("expected_stub=" + metadata);
        }
        return CollectionsKt.y(arrayList, ", ", "TransferNotificationResponse{", "}", null, 56);
    }
}
