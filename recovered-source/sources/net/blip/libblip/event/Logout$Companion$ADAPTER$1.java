package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Logout$Companion$ADAPTER$1 extends ProtoAdapter<Logout> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                return new Logout(protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Logout logout = (Logout) obj;
        protoWriter.getClass();
        logout.getClass();
        protoWriter.a(logout.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Logout logout = (Logout) obj;
        reverseProtoWriter.getClass();
        logout.getClass();
        reverseProtoWriter.d(logout.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Logout logout = (Logout) obj;
        logout.getClass();
        return logout.a().e();
    }
}
