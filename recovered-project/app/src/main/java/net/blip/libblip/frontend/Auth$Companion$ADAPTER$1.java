package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Auth$Companion$ADAPTER$1 extends ProtoAdapter<Auth> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ByteString byteString = ByteString.m;
        long d = protoReader.d();
        ByteString byteString2 = byteString;
        String str = "";
        String str2 = str;
        String str3 = str2;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                switch (h) {
                    case 201:
                        ProtoAdapter.o.getClass();
                        byteString2 = protoReader.k();
                        break;
                    case 202:
                        protoAdapterKt$commonString$1.getClass();
                        str = protoReader.n();
                        break;
                    case 203:
                        protoAdapterKt$commonString$1.getClass();
                        str2 = protoReader.n();
                        break;
                    case 204:
                        protoAdapterKt$commonString$1.getClass();
                        str3 = protoReader.n();
                        break;
                    default:
                        protoReader.o(h);
                        break;
                }
            } else {
                return new Auth(byteString2, str, str2, str3, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Auth auth = (Auth) obj;
        protoWriter.getClass();
        auth.getClass();
        String str = auth.p;
        String str2 = auth.o;
        String str3 = auth.n;
        ByteString byteString = auth.m;
        if (!Intrinsics.a(byteString, ByteString.m)) {
            ProtoAdapter.o.f(protoWriter, 201, byteString);
        }
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 202, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 203, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 204, str);
        }
        protoWriter.a(auth.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Auth auth = (Auth) obj;
        reverseProtoWriter.getClass();
        auth.getClass();
        ByteString byteString = auth.m;
        String str = auth.n;
        String str2 = auth.o;
        reverseProtoWriter.d(auth.a());
        String str3 = auth.p;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 204, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 203, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 202, str);
        }
        if (!Intrinsics.a(byteString, ByteString.m)) {
            ProtoAdapter.o.g(reverseProtoWriter, 201, byteString);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Auth auth = (Auth) obj;
        auth.getClass();
        String str = auth.p;
        String str2 = auth.o;
        String str3 = auth.n;
        int e = auth.a().e();
        ByteString byteString = auth.m;
        if (!Intrinsics.a(byteString, ByteString.m)) {
            e += ProtoAdapter.o.i(201, byteString);
        }
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(202, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            e += protoAdapterKt$commonString$1.i(203, str2);
        }
        if (!Intrinsics.a(str, "")) {
            return protoAdapterKt$commonString$1.i(204, str) + e;
        }
        return e;
    }
}
