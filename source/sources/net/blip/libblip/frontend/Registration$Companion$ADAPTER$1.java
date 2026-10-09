package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.frontend.Registration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Registration$Companion$ADAPTER$1 extends ProtoAdapter<Registration> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = Registration.registration_status.m;
        long d = protoReader.d();
        Object obj2 = null;
        String str = "";
        String str2 = str;
        Object obj3 = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                    if (h != 2) {
                        if (h != 3) {
                            if (h != 4) {
                                if (h != 999) {
                                    protoReader.o(h);
                                } else {
                                    obj3 = Err.o.c(protoReader);
                                }
                            } else {
                                protoAdapterKt$commonString$1.getClass();
                                str2 = protoReader.n();
                            }
                        } else {
                            obj2 = ProtoAdapter.u.c(protoReader);
                        }
                    } else {
                        protoAdapterKt$commonString$1.getClass();
                        str = protoReader.n();
                    }
                } else {
                    try {
                        obj = Registration.registration_status.l.c(protoReader);
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                    }
                }
            } else {
                return new Registration((Registration.registration_status) obj, str, str2, (Instant) obj2, (Err) obj3, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Registration registration = (Registration) obj;
        protoWriter.getClass();
        registration.getClass();
        String str = registration.o;
        String str2 = registration.n;
        Registration.registration_status registration_statusVar = registration.m;
        if (registration_statusVar != Registration.registration_status.m) {
            Registration.registration_status.l.f(protoWriter, 1, registration_statusVar);
        }
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 4, str);
        }
        Instant instant = registration.p;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 3, instant);
        }
        Err.o.f(protoWriter, 999, registration.q);
        protoWriter.a(registration.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Registration registration = (Registration) obj;
        reverseProtoWriter.getClass();
        registration.getClass();
        String str = registration.n;
        String str2 = registration.o;
        reverseProtoWriter.d(registration.a());
        Err.o.g(reverseProtoWriter, 999, registration.q);
        Instant instant = registration.p;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 3, instant);
        }
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 4, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str);
        }
        Registration.registration_status registration_statusVar = registration.m;
        if (registration_statusVar != Registration.registration_status.m) {
            Registration.registration_status.l.g(reverseProtoWriter, 1, registration_statusVar);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Registration registration = (Registration) obj;
        registration.getClass();
        String str = registration.o;
        String str2 = registration.n;
        int e = registration.a().e();
        Registration.registration_status registration_statusVar = registration.m;
        if (registration_statusVar != Registration.registration_status.m) {
            e += Registration.registration_status.l.i(1, registration_statusVar);
        }
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(2, str2);
        }
        if (!Intrinsics.a(str, "")) {
            e += protoAdapterKt$commonString$1.i(4, str);
        }
        Instant instant = registration.p;
        if (instant != null) {
            e += ProtoAdapter.u.i(3, instant);
        }
        return Err.o.i(999, registration.q) + e;
    }
}
