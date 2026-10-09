package net.blip.libblip;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Device$Companion$ADAPTER$1 extends ProtoAdapter<Device> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = DeviceKind.m;
        long d = protoReader.d();
        Object obj2 = null;
        String str = "";
        Object obj3 = null;
        Object obj4 = null;
        boolean z = false;
        String str2 = str;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1000) {
                    ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                    switch (h) {
                        case 1:
                            protoAdapterKt$commonString$1.getClass();
                            str2 = protoReader.n();
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            try {
                                obj = DeviceKind.l.c(protoReader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                                break;
                            }
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            protoAdapterKt$commonString$1.getClass();
                            str = protoReader.n();
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            obj2 = DeviceReach.o.c(protoReader);
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            obj3 = ProtoAdapter.u.c(protoReader);
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                            break;
                        default:
                            protoReader.o(h);
                            break;
                    }
                } else {
                    obj4 = DeviceSettings.n.c(protoReader);
                }
            } else {
                return new Device(str2, (DeviceKind) obj, str, (DeviceReach) obj2, (Instant) obj3, z, (DeviceSettings) obj4, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Device device = (Device) obj;
        protoWriter.getClass();
        device.getClass();
        String str = device.o;
        String str2 = device.m;
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str2);
        }
        DeviceKind deviceKind = device.n;
        if (deviceKind != DeviceKind.m) {
            DeviceKind.l.f(protoWriter, 2, deviceKind);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 3, str);
        }
        DeviceReach deviceReach = device.p;
        if (deviceReach != null) {
            DeviceReach.o.f(protoWriter, 4, deviceReach);
        }
        Instant instant = device.q;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 5, instant);
        }
        boolean z = device.r;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 6, Boolean.valueOf(z));
        }
        DeviceSettings deviceSettings = device.s;
        if (deviceSettings != null) {
            DeviceSettings.n.f(protoWriter, 1000, deviceSettings);
        }
        protoWriter.a(device.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Device device = (Device) obj;
        reverseProtoWriter.getClass();
        device.getClass();
        String str = device.m;
        String str2 = device.o;
        reverseProtoWriter.d(device.a());
        DeviceSettings deviceSettings = device.s;
        if (deviceSettings != null) {
            DeviceSettings.n.g(reverseProtoWriter, 1000, deviceSettings);
        }
        boolean z = device.r;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 6, Boolean.valueOf(z));
        }
        Instant instant = device.q;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 5, instant);
        }
        DeviceReach deviceReach = device.p;
        if (deviceReach != null) {
            DeviceReach.o.g(reverseProtoWriter, 4, deviceReach);
        }
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 3, str2);
        }
        DeviceKind deviceKind = device.n;
        if (deviceKind != DeviceKind.m) {
            DeviceKind.l.g(reverseProtoWriter, 2, deviceKind);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Device device = (Device) obj;
        device.getClass();
        String str = device.o;
        int e = device.a().e();
        String str2 = device.m;
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(1, str2);
        }
        DeviceKind deviceKind = device.n;
        if (deviceKind != DeviceKind.m) {
            e += DeviceKind.l.i(2, deviceKind);
        }
        if (!Intrinsics.a(str, "")) {
            e += protoAdapterKt$commonString$1.i(3, str);
        }
        DeviceReach deviceReach = device.p;
        if (deviceReach != null) {
            e += DeviceReach.o.i(4, deviceReach);
        }
        Instant instant = device.q;
        if (instant != null) {
            e += ProtoAdapter.u.i(5, instant);
        }
        boolean z = device.r;
        if (z) {
            e = q.c(z, ProtoAdapter.g, 6, e);
        }
        DeviceSettings deviceSettings = device.s;
        if (deviceSettings != null) {
            return DeviceSettings.n.i(1000, deviceSettings) + e;
        }
        return e;
    }
}
