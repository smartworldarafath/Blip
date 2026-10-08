package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferAddContentRequested$Companion$ADAPTER$1 extends ProtoAdapter<TransferAddContentRequested> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ArrayList arrayList = new ArrayList();
        long d = protoReader.d();
        String str = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        protoAdapterKt$commonString$1.getClass();
                        arrayList.add(protoReader.n());
                    }
                } else {
                    protoAdapterKt$commonString$1.getClass();
                    str = protoReader.n();
                }
            } else {
                return new TransferAddContentRequested(str, arrayList, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferAddContentRequested transferAddContentRequested = (TransferAddContentRequested) obj;
        protoWriter.getClass();
        transferAddContentRequested.getClass();
        String str = transferAddContentRequested.m;
        boolean a = Intrinsics.a(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str);
        }
        protoAdapterKt$commonString$1.a().f(protoWriter, 2, transferAddContentRequested.n);
        protoWriter.a(transferAddContentRequested.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferAddContentRequested transferAddContentRequested = (TransferAddContentRequested) obj;
        reverseProtoWriter.getClass();
        transferAddContentRequested.getClass();
        reverseProtoWriter.d(transferAddContentRequested.a());
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        protoAdapterKt$commonString$1.a().g(reverseProtoWriter, 2, transferAddContentRequested.n);
        String str = transferAddContentRequested.m;
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferAddContentRequested transferAddContentRequested = (TransferAddContentRequested) obj;
        transferAddContentRequested.getClass();
        int e = transferAddContentRequested.a().e();
        String str = transferAddContentRequested.m;
        boolean a = Intrinsics.a(str, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(1, str);
        }
        return protoAdapterKt$commonString$1.a().i(2, transferAddContentRequested.n) + e;
    }
}
