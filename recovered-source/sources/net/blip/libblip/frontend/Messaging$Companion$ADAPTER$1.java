package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Messaging$Companion$ADAPTER$1 extends ProtoAdapter<Messaging> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = MessagingStatus.m;
        long d = protoReader.d();
        boolean z = false;
        long j = 0;
        Object obj2 = null;
        boolean z2 = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                    if (h != 2) {
                        if (h != 3) {
                            if (h != 4) {
                                if (h != 999) {
                                    protoReader.o(h);
                                } else {
                                    obj2 = Err.o.c(protoReader);
                                }
                            } else {
                                ProtoAdapter.l.getClass();
                                j = protoReader.q();
                            }
                        } else {
                            z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                        }
                    } else {
                        z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    }
                } else {
                    try {
                        obj = MessagingStatus.l.c(protoReader);
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                    }
                }
            } else {
                return new Messaging((MessagingStatus) obj, z2, z, j, (Err) obj2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Messaging messaging = (Messaging) obj;
        protoWriter.getClass();
        messaging.getClass();
        MessagingStatus messagingStatus = messaging.m;
        if (messagingStatus != MessagingStatus.m) {
            MessagingStatus.l.f(protoWriter, 1, messagingStatus);
        }
        boolean z = messaging.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 2, Boolean.valueOf(z));
        }
        boolean z2 = messaging.o;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 3, Boolean.valueOf(z2));
        }
        long j = messaging.p;
        if (j != 0) {
            ProtoAdapter.l.f(protoWriter, 4, Long.valueOf(j));
        }
        Err err = messaging.q;
        if (err != null) {
            Err.o.f(protoWriter, 999, err);
        }
        protoWriter.a(messaging.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Messaging messaging = (Messaging) obj;
        reverseProtoWriter.getClass();
        messaging.getClass();
        reverseProtoWriter.d(messaging.a());
        Err err = messaging.q;
        if (err != null) {
            Err.o.g(reverseProtoWriter, 999, err);
        }
        long j = messaging.p;
        if (j != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 4, Long.valueOf(j));
        }
        boolean z = messaging.o;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 3, Boolean.valueOf(z));
        }
        boolean z2 = messaging.n;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 2, Boolean.valueOf(z2));
        }
        MessagingStatus messagingStatus = messaging.m;
        if (messagingStatus != MessagingStatus.m) {
            MessagingStatus.l.g(reverseProtoWriter, 1, messagingStatus);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Messaging messaging = (Messaging) obj;
        messaging.getClass();
        int e = messaging.a().e();
        MessagingStatus messagingStatus = messaging.m;
        if (messagingStatus != MessagingStatus.m) {
            e += MessagingStatus.l.i(1, messagingStatus);
        }
        boolean z = messaging.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 2, e);
        }
        boolean z2 = messaging.o;
        if (z2) {
            e = q.c(z2, protoAdapterKt$commonBool$1, 3, e);
        }
        long j = messaging.p;
        if (j != 0) {
            e += ProtoAdapter.l.i(4, Long.valueOf(j));
        }
        Err err = messaging.q;
        if (err != null) {
            return Err.o.i(999, err) + e;
        }
        return e;
    }
}
