package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SendRegistrationCodeRequested$Companion$ADAPTER$1 extends ProtoAdapter<SendRegistrationCodeRequested> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = "";
        String str2 = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        protoAdapterKt$commonString$1.getClass();
                        str2 = protoReader.n();
                    }
                } else {
                    protoAdapterKt$commonString$1.getClass();
                    str = protoReader.n();
                }
            } else {
                return new SendRegistrationCodeRequested(str, str2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        SendRegistrationCodeRequested sendRegistrationCodeRequested = (SendRegistrationCodeRequested) obj;
        protoWriter.getClass();
        sendRegistrationCodeRequested.getClass();
        String str = sendRegistrationCodeRequested.n;
        String str2 = sendRegistrationCodeRequested.m;
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str);
        }
        protoWriter.a(sendRegistrationCodeRequested.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        SendRegistrationCodeRequested sendRegistrationCodeRequested = (SendRegistrationCodeRequested) obj;
        reverseProtoWriter.getClass();
        sendRegistrationCodeRequested.getClass();
        String str = sendRegistrationCodeRequested.m;
        reverseProtoWriter.d(sendRegistrationCodeRequested.a());
        String str2 = sendRegistrationCodeRequested.n;
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        SendRegistrationCodeRequested sendRegistrationCodeRequested = (SendRegistrationCodeRequested) obj;
        sendRegistrationCodeRequested.getClass();
        String str = sendRegistrationCodeRequested.n;
        int e = sendRegistrationCodeRequested.a().e();
        String str2 = sendRegistrationCodeRequested.m;
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(1, str2);
        }
        if (!Intrinsics.a(str, "")) {
            return protoAdapterKt$commonString$1.i(2, str) + e;
        }
        return e;
    }
}
