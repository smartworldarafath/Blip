package net.blip.libblip.messaging;

import com.squareup.wire.AnyMessage;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.time.Instant;
import net.blip.libblip.PeerId;
import net.blip.libblip.User;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MessageFromServer$Companion$ADAPTER$1 extends ProtoAdapter<MessageFromServer> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 3) {
                        if (h != 4) {
                            if (h != 5) {
                                protoReader.o(h);
                            } else {
                                obj4 = ProtoAdapter.u.c(protoReader);
                            }
                        } else {
                            obj3 = User.y.c(protoReader);
                        }
                    } else {
                        obj2 = PeerId.o.c(protoReader);
                    }
                } else {
                    obj = AnyMessage.o.c(protoReader);
                }
            } else {
                return new MessageFromServer((AnyMessage) obj, (PeerId) obj2, (User) obj3, (Instant) obj4, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        MessageFromServer messageFromServer = (MessageFromServer) obj;
        protoWriter.getClass();
        messageFromServer.getClass();
        AnyMessage anyMessage = messageFromServer.m;
        if (anyMessage != null) {
            AnyMessage.o.f(protoWriter, 1, anyMessage);
        }
        PeerId.o.f(protoWriter, 3, messageFromServer.n);
        User.y.f(protoWriter, 4, messageFromServer.o);
        Instant instant = messageFromServer.p;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 5, instant);
        }
        protoWriter.a(messageFromServer.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        MessageFromServer messageFromServer = (MessageFromServer) obj;
        reverseProtoWriter.getClass();
        messageFromServer.getClass();
        reverseProtoWriter.d(messageFromServer.a());
        Instant instant = messageFromServer.p;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 5, instant);
        }
        User.y.g(reverseProtoWriter, 4, messageFromServer.o);
        PeerId.o.g(reverseProtoWriter, 3, messageFromServer.n);
        AnyMessage anyMessage = messageFromServer.m;
        if (anyMessage != null) {
            AnyMessage.o.g(reverseProtoWriter, 1, anyMessage);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        MessageFromServer messageFromServer = (MessageFromServer) obj;
        messageFromServer.getClass();
        int e = messageFromServer.a().e();
        AnyMessage anyMessage = messageFromServer.m;
        if (anyMessage != null) {
            e += AnyMessage.o.i(1, anyMessage);
        }
        int i = User.y.i(4, messageFromServer.o) + PeerId.o.i(3, messageFromServer.n) + e;
        Instant instant = messageFromServer.p;
        if (instant != null) {
            return ProtoAdapter.u.i(5, instant) + i;
        }
        return i;
    }
}
