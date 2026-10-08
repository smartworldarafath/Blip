package net.blip.libblip.messaging;

import com.squareup.wire.AnyMessage;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import java.time.Instant;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.PeerId;
import net.blip.libblip.User;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MessageFromServer extends Message {
    public static final MessageFromServer$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(MessageFromServer.class), "type.googleapis.com/blip.MessageFromServer", Syntax.l, null, 0);
    public final AnyMessage m;
    public final PeerId n;
    public final User o;
    public final Instant p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageFromServer(AnyMessage anyMessage, PeerId peerId, User user, Instant instant, ByteString byteString) {
        super(q, byteString);
        byteString.getClass();
        this.m = anyMessage;
        this.n = peerId;
        this.o = user;
        this.p = instant;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MessageFromServer)) {
            return false;
        }
        MessageFromServer messageFromServer = (MessageFromServer) obj;
        if (Intrinsics.a(a(), messageFromServer.a()) && Intrinsics.a(this.m, messageFromServer.m) && Intrinsics.a(this.n, messageFromServer.n) && Intrinsics.a(this.o, messageFromServer.o) && Intrinsics.a(this.p, messageFromServer.p)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = this.l;
        if (i4 == 0) {
            int hashCode = a().hashCode() * 37;
            int i5 = 0;
            AnyMessage anyMessage = this.m;
            if (anyMessage != null) {
                i = anyMessage.hashCode();
            } else {
                i = 0;
            }
            int i6 = (hashCode + i) * 37;
            PeerId peerId = this.n;
            if (peerId != null) {
                i2 = peerId.hashCode();
            } else {
                i2 = 0;
            }
            int i7 = (i6 + i2) * 37;
            User user = this.o;
            if (user != null) {
                i3 = user.hashCode();
            } else {
                i3 = 0;
            }
            int i8 = (i7 + i3) * 37;
            Instant instant = this.p;
            if (instant != null) {
                i5 = instant.hashCode();
            }
            int i9 = i8 + i5;
            this.l = i9;
            return i9;
        }
        return i4;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        AnyMessage anyMessage = this.m;
        if (anyMessage != null) {
            arrayList.add("body=" + anyMessage);
        }
        PeerId peerId = this.n;
        if (peerId != null) {
            arrayList.add("sender_peer_id=" + peerId);
        }
        User user = this.o;
        if (user != null) {
            arrayList.add("sender_user=" + user);
        }
        Instant instant = this.p;
        if (instant != null) {
            arrayList.add("date=" + instant);
        }
        return CollectionsKt.y(arrayList, ", ", "MessageFromServer{", "}", null, 56);
    }
}
