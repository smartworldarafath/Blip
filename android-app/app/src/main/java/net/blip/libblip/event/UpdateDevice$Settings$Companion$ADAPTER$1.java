package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import net.blip.libblip.event.UpdateDevice;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UpdateDevice$Settings$Companion$ADAPTER$1 extends ProtoAdapter<UpdateDevice.Settings> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    obj = ProtoAdapter.g.c(protoReader);
                } else {
                    protoReader.o(h);
                }
            } else {
                return new UpdateDevice.Settings((Boolean) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        UpdateDevice.Settings settings = (UpdateDevice.Settings) obj;
        protoWriter.getClass();
        settings.getClass();
        ProtoAdapter.g.f(protoWriter, 1, settings.m);
        protoWriter.a(settings.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        UpdateDevice.Settings settings = (UpdateDevice.Settings) obj;
        reverseProtoWriter.getClass();
        settings.getClass();
        reverseProtoWriter.d(settings.a());
        ProtoAdapter.g.g(reverseProtoWriter, 1, settings.m);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        UpdateDevice.Settings settings = (UpdateDevice.Settings) obj;
        settings.getClass();
        return ProtoAdapter.g.i(1, settings.m) + settings.a().e();
    }
}
