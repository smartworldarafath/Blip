package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.event.UpdateDevice;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UpdateDevice$Companion$ADAPTER$1 extends ProtoAdapter<UpdateDevice> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        String str2 = null;
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            protoReader.o(h);
                        } else {
                            obj = UpdateDevice.Settings.n.c(protoReader);
                        }
                    } else {
                        protoAdapterKt$commonString$1.getClass();
                        str2 = protoReader.n();
                    }
                } else {
                    protoAdapterKt$commonString$1.getClass();
                    str = protoReader.n();
                }
            } else {
                return new UpdateDevice(str, str2, (UpdateDevice.Settings) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        UpdateDevice updateDevice = (UpdateDevice) obj;
        protoWriter.getClass();
        updateDevice.getClass();
        String str = updateDevice.m;
        boolean a = Intrinsics.a(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str);
        }
        protoAdapterKt$commonString$1.f(protoWriter, 2, updateDevice.n);
        UpdateDevice.Settings settings = updateDevice.o;
        if (settings != null) {
            UpdateDevice.Settings.n.f(protoWriter, 3, settings);
        }
        protoWriter.a(updateDevice.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        UpdateDevice updateDevice = (UpdateDevice) obj;
        reverseProtoWriter.getClass();
        updateDevice.getClass();
        String str = updateDevice.m;
        reverseProtoWriter.d(updateDevice.a());
        UpdateDevice.Settings settings = updateDevice.o;
        if (settings != null) {
            UpdateDevice.Settings.n.g(reverseProtoWriter, 3, settings);
        }
        String str2 = updateDevice.n;
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str2);
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        UpdateDevice updateDevice = (UpdateDevice) obj;
        updateDevice.getClass();
        int e = updateDevice.a().e();
        String str = updateDevice.m;
        boolean a = Intrinsics.a(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(1, str);
        }
        int i = protoAdapterKt$commonString$1.i(2, updateDevice.n) + e;
        UpdateDevice.Settings settings = updateDevice.o;
        if (settings != null) {
            return UpdateDevice.Settings.n.i(3, settings) + i;
        }
        return i;
    }
}
