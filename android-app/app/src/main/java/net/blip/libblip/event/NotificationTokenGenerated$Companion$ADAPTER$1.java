package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationTokenGenerated$Companion$ADAPTER$1 extends ProtoAdapter<NotificationTokenGenerated> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        ByteString byteString = ByteString.m;
        long d = protoReader.d();
        int i = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        ProtoAdapter.o.getClass();
                        byteString = protoReader.k();
                    }
                } else {
                    ProtoAdapter.h.getClass();
                    i = protoReader.p();
                }
            } else {
                return new NotificationTokenGenerated(i, byteString, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        NotificationTokenGenerated notificationTokenGenerated = (NotificationTokenGenerated) obj;
        protoWriter.getClass();
        notificationTokenGenerated.getClass();
        ByteString byteString = notificationTokenGenerated.n;
        int i = notificationTokenGenerated.m;
        if (i != 0) {
            ProtoAdapter.h.f(protoWriter, 1, Integer.valueOf(i));
        }
        if (!Intrinsics.a(byteString, ByteString.m)) {
            ProtoAdapter.o.f(protoWriter, 2, byteString);
        }
        protoWriter.a(notificationTokenGenerated.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        NotificationTokenGenerated notificationTokenGenerated = (NotificationTokenGenerated) obj;
        reverseProtoWriter.getClass();
        notificationTokenGenerated.getClass();
        reverseProtoWriter.d(notificationTokenGenerated.a());
        ByteString byteString = notificationTokenGenerated.n;
        if (!Intrinsics.a(byteString, ByteString.m)) {
            ProtoAdapter.o.g(reverseProtoWriter, 2, byteString);
        }
        int i = notificationTokenGenerated.m;
        if (i != 0) {
            ProtoAdapter.h.g(reverseProtoWriter, 1, Integer.valueOf(i));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        NotificationTokenGenerated notificationTokenGenerated = (NotificationTokenGenerated) obj;
        notificationTokenGenerated.getClass();
        ByteString byteString = notificationTokenGenerated.n;
        int e = notificationTokenGenerated.a().e();
        int i = notificationTokenGenerated.m;
        if (i != 0) {
            e += ProtoAdapter.h.i(1, Integer.valueOf(i));
        }
        if (!Intrinsics.a(byteString, ByteString.m)) {
            return ProtoAdapter.o.i(2, byteString) + e;
        }
        return e;
    }
}
