package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.DeviceKind;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RegistrationRequested$Companion$ADAPTER$1 extends ProtoAdapter<RegistrationRequested> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = DeviceKind.m;
        long d = protoReader.d();
        String str = "";
        String str2 = str;
        String str3 = str2;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            if (h != 4) {
                                protoReader.o(h);
                            } else {
                                try {
                                    obj = DeviceKind.l.c(protoReader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                                }
                            }
                        } else {
                            protoAdapterKt$commonString$1.getClass();
                            str3 = protoReader.n();
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
                return new RegistrationRequested(str, str2, str3, (DeviceKind) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        RegistrationRequested registrationRequested = (RegistrationRequested) obj;
        protoWriter.getClass();
        registrationRequested.getClass();
        String str = registrationRequested.o;
        String str2 = registrationRequested.n;
        String str3 = registrationRequested.m;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 3, str);
        }
        DeviceKind deviceKind = registrationRequested.p;
        if (deviceKind != DeviceKind.m) {
            DeviceKind.l.f(protoWriter, 4, deviceKind);
        }
        protoWriter.a(registrationRequested.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        RegistrationRequested registrationRequested = (RegistrationRequested) obj;
        reverseProtoWriter.getClass();
        registrationRequested.getClass();
        String str = registrationRequested.m;
        String str2 = registrationRequested.n;
        String str3 = registrationRequested.o;
        reverseProtoWriter.d(registrationRequested.a());
        DeviceKind deviceKind = registrationRequested.p;
        if (deviceKind != DeviceKind.m) {
            DeviceKind.l.g(reverseProtoWriter, 4, deviceKind);
        }
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 3, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        RegistrationRequested registrationRequested = (RegistrationRequested) obj;
        registrationRequested.getClass();
        String str = registrationRequested.o;
        String str2 = registrationRequested.n;
        int e = registrationRequested.a().e();
        String str3 = registrationRequested.m;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(1, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            e += protoAdapterKt$commonString$1.i(2, str2);
        }
        if (!Intrinsics.a(str, "")) {
            e += protoAdapterKt$commonString$1.i(3, str);
        }
        DeviceKind deviceKind = registrationRequested.p;
        if (deviceKind != DeviceKind.m) {
            return DeviceKind.l.i(4, deviceKind) + e;
        }
        return e;
    }
}
