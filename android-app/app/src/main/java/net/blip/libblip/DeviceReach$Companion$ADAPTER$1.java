package net.blip.libblip;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeviceReach$Companion$ADAPTER$1 extends ProtoAdapter<DeviceReach> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    }
                } else {
                    z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                }
            } else {
                return new DeviceReach(z, z2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        DeviceReach deviceReach = (DeviceReach) obj;
        protoWriter.getClass();
        deviceReach.getClass();
        boolean z = deviceReach.m;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 1, Boolean.valueOf(z));
        }
        boolean z2 = deviceReach.n;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 2, Boolean.valueOf(z2));
        }
        protoWriter.a(deviceReach.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        DeviceReach deviceReach = (DeviceReach) obj;
        reverseProtoWriter.getClass();
        deviceReach.getClass();
        reverseProtoWriter.d(deviceReach.a());
        boolean z = deviceReach.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 2, Boolean.valueOf(z));
        }
        boolean z2 = deviceReach.m;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 1, Boolean.valueOf(z2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        DeviceReach deviceReach = (DeviceReach) obj;
        deviceReach.getClass();
        int e = deviceReach.a().e();
        boolean z = deviceReach.m;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 1, e);
        }
        boolean z2 = deviceReach.n;
        if (z2) {
            return q.c(z2, protoAdapterKt$commonBool$1, 2, e);
        }
        return e;
    }
}
