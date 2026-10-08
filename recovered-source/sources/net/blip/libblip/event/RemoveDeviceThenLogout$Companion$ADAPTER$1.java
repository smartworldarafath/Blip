package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RemoveDeviceThenLogout$Companion$ADAPTER$1 extends ProtoAdapter<RemoveDeviceThenLogout> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                return new RemoveDeviceThenLogout(protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        RemoveDeviceThenLogout removeDeviceThenLogout = (RemoveDeviceThenLogout) obj;
        protoWriter.getClass();
        removeDeviceThenLogout.getClass();
        protoWriter.a(removeDeviceThenLogout.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        RemoveDeviceThenLogout removeDeviceThenLogout = (RemoveDeviceThenLogout) obj;
        reverseProtoWriter.getClass();
        removeDeviceThenLogout.getClass();
        reverseProtoWriter.d(removeDeviceThenLogout.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        RemoveDeviceThenLogout removeDeviceThenLogout = (RemoveDeviceThenLogout) obj;
        removeDeviceThenLogout.getClass();
        return removeDeviceThenLogout.a().e();
    }
}
