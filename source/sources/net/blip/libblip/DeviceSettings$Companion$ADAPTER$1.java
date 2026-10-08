package net.blip.libblip;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeviceSettings$Companion$ADAPTER$1 extends ProtoAdapter<DeviceSettings> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                } else {
                    protoReader.o(h);
                }
            } else {
                return new DeviceSettings(z, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        DeviceSettings deviceSettings = (DeviceSettings) obj;
        protoWriter.getClass();
        deviceSettings.getClass();
        boolean z = deviceSettings.m;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 1, Boolean.valueOf(z));
        }
        protoWriter.a(deviceSettings.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        DeviceSettings deviceSettings = (DeviceSettings) obj;
        reverseProtoWriter.getClass();
        deviceSettings.getClass();
        reverseProtoWriter.d(deviceSettings.a());
        boolean z = deviceSettings.m;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 1, Boolean.valueOf(z));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        DeviceSettings deviceSettings = (DeviceSettings) obj;
        deviceSettings.getClass();
        int e = deviceSettings.a().e();
        boolean z = deviceSettings.m;
        if (z) {
            return q.c(z, ProtoAdapter.g, 1, e);
        }
        return e;
    }
}
