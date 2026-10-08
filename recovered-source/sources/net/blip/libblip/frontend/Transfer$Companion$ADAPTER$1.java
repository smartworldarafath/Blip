package net.blip.libblip.frontend;

import bsarchive.Metadata;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoAdapterKt$commonUint32$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import java.time.Instant;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.PeerId;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Transfer$Companion$ADAPTER$1 extends ProtoAdapter<Transfer> {
    /* JADX WARN: Failed to find 'out' block for switch in B:37:0x0070. Please report as an issue. */
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        Object obj;
        Object obj2;
        String str;
        protoReader.getClass();
        Object obj3 = Transfer.Direction.m;
        Object obj4 = Transfer.Status.m;
        long d = protoReader.d();
        Object obj5 = null;
        String str2 = "";
        String str3 = str2;
        Object obj6 = null;
        Object obj7 = null;
        Object obj8 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        long j = 0;
        Object obj9 = obj4;
        String str4 = str3;
        Object obj10 = null;
        Object obj11 = null;
        while (true) {
            Object obj12 = obj3;
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (h != 100) {
                    if (h != 200) {
                        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
                        if (h != 300) {
                            if (h != 400) {
                                if (h != 700) {
                                    if (h != 800) {
                                        obj = obj9;
                                        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                                        if (h != 900) {
                                            if (h != 1000) {
                                                if (h != 1100) {
                                                    if (h != 1300) {
                                                        if (h != 600) {
                                                            if (h != 601) {
                                                                if (h != 1200) {
                                                                    if (h != 1201) {
                                                                        switch (h) {
                                                                            case 500:
                                                                                protoAdapterKt$commonString$1.getClass();
                                                                                str2 = protoReader.n();
                                                                                break;
                                                                            case 501:
                                                                                protoAdapterKt$commonString$1.getClass();
                                                                                str3 = protoReader.n();
                                                                                break;
                                                                            case 502:
                                                                                z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                                                                                break;
                                                                            default:
                                                                                protoReader.o(h);
                                                                                obj2 = obj5;
                                                                                str = str4;
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        protoAdapterKt$commonUint32$1.getClass();
                                                                        i2 = protoReader.p();
                                                                    }
                                                                } else {
                                                                    obj7 = ConnStats.s.c(protoReader);
                                                                }
                                                            } else {
                                                                obj6 = TransferErr.q.c(protoReader);
                                                            }
                                                        } else {
                                                            obj11 = TransferErr.q.c(protoReader);
                                                        }
                                                    } else {
                                                        obj8 = ProtoAdapter.u.c(protoReader);
                                                    }
                                                } else {
                                                    ProtoAdapter.k.getClass();
                                                    j = protoReader.q();
                                                    obj3 = obj12;
                                                    obj9 = obj;
                                                }
                                            } else {
                                                z3 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                                            }
                                        } else {
                                            z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                                        }
                                        obj9 = obj;
                                    } else {
                                        obj = obj9;
                                        try {
                                            obj9 = Transfer.Status.l.c(protoReader);
                                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                            obj2 = obj5;
                                            str = str4;
                                            protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                                        }
                                    }
                                } else {
                                    obj = obj9;
                                    obj2 = obj5;
                                    str = str4;
                                    try {
                                        obj3 = Transfer.Direction.l.c(protoReader);
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e2.j));
                                    }
                                    obj9 = obj;
                                    str4 = str;
                                    obj5 = obj2;
                                }
                                obj3 = obj12;
                                obj9 = obj;
                                str4 = str;
                                obj5 = obj2;
                            } else {
                                obj10 = Metadata.o.c(protoReader);
                            }
                        } else {
                            protoAdapterKt$commonUint32$1.getClass();
                            i = protoReader.p();
                        }
                    } else {
                        obj5 = PeerId.o.c(protoReader);
                    }
                } else {
                    protoAdapterKt$commonString$1.getClass();
                    str4 = protoReader.n();
                }
                obj3 = obj12;
            } else {
                return new Transfer(str4, (PeerId) obj5, i, (Metadata) obj10, str2, str3, z, (TransferErr) obj11, (TransferErr) obj6, (Transfer.Direction) obj12, (Transfer.Status) obj9, z2, z3, j, (ConnStats) obj7, i2, (Instant) obj8, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Transfer transfer = (Transfer) obj;
        protoWriter.getClass();
        transfer.getClass();
        String str = transfer.r;
        String str2 = transfer.q;
        String str3 = transfer.m;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 100, str3);
        }
        PeerId peerId = transfer.n;
        if (peerId != null) {
            PeerId.o.f(protoWriter, 200, peerId);
        }
        int i = transfer.o;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
        if (i != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 300, Integer.valueOf(i));
        }
        Metadata metadata = transfer.p;
        if (metadata != null) {
            Metadata.o.f(protoWriter, 400, metadata);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 500, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 501, str);
        }
        boolean z = transfer.s;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 502, Boolean.valueOf(z));
        }
        TransferErr transferErr = transfer.t;
        if (transferErr != null) {
            TransferErr.q.f(protoWriter, 600, transferErr);
        }
        TransferErr transferErr2 = transfer.u;
        if (transferErr2 != null) {
            TransferErr.q.f(protoWriter, 601, transferErr2);
        }
        Transfer.Direction direction = transfer.v;
        if (direction != Transfer.Direction.m) {
            Transfer.Direction.l.f(protoWriter, 700, direction);
        }
        Transfer.Status status = transfer.w;
        if (status != Transfer.Status.m) {
            Transfer.Status.l.f(protoWriter, 800, status);
        }
        boolean z2 = transfer.x;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 900, Boolean.valueOf(z2));
        }
        boolean z3 = transfer.y;
        if (z3) {
            protoAdapterKt$commonBool$1.f(protoWriter, 1000, Boolean.valueOf(z3));
        }
        long j = transfer.z;
        if (j != 0) {
            ProtoAdapter.k.f(protoWriter, 1100, Long.valueOf(j));
        }
        ConnStats connStats = transfer.A;
        if (connStats != null) {
            ConnStats.s.f(protoWriter, 1200, connStats);
        }
        int i2 = transfer.B;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.f(protoWriter, 1201, Integer.valueOf(i2));
        }
        Instant instant = transfer.C;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 1300, instant);
        }
        protoWriter.a(transfer.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Transfer transfer = (Transfer) obj;
        reverseProtoWriter.getClass();
        transfer.getClass();
        String str = transfer.m;
        String str2 = transfer.q;
        String str3 = transfer.r;
        reverseProtoWriter.d(transfer.a());
        Instant instant = transfer.C;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 1300, instant);
        }
        int i = transfer.B;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
        if (i != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 1201, Integer.valueOf(i));
        }
        ConnStats connStats = transfer.A;
        if (connStats != null) {
            ConnStats.s.g(reverseProtoWriter, 1200, connStats);
        }
        long j = transfer.z;
        if (j != 0) {
            ProtoAdapter.k.g(reverseProtoWriter, 1100, Long.valueOf(j));
        }
        boolean z = transfer.y;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 1000, Boolean.valueOf(z));
        }
        boolean z2 = transfer.x;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 900, Boolean.valueOf(z2));
        }
        Transfer.Status status = transfer.w;
        if (status != Transfer.Status.m) {
            Transfer.Status.l.g(reverseProtoWriter, 800, status);
        }
        Transfer.Direction direction = transfer.v;
        if (direction != Transfer.Direction.m) {
            Transfer.Direction.l.g(reverseProtoWriter, 700, direction);
        }
        TransferErr transferErr = transfer.u;
        if (transferErr != null) {
            TransferErr.q.g(reverseProtoWriter, 601, transferErr);
        }
        TransferErr transferErr2 = transfer.t;
        if (transferErr2 != null) {
            TransferErr.q.g(reverseProtoWriter, 600, transferErr2);
        }
        boolean z3 = transfer.s;
        if (z3) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 502, Boolean.valueOf(z3));
        }
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 501, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 500, str2);
        }
        Metadata metadata = transfer.p;
        if (metadata != null) {
            Metadata.o.g(reverseProtoWriter, 400, metadata);
        }
        int i2 = transfer.o;
        if (i2 != 0) {
            protoAdapterKt$commonUint32$1.g(reverseProtoWriter, 300, Integer.valueOf(i2));
        }
        PeerId peerId = transfer.n;
        if (peerId != null) {
            PeerId.o.g(reverseProtoWriter, 200, peerId);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 100, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Transfer transfer = (Transfer) obj;
        transfer.getClass();
        String str = transfer.r;
        String str2 = transfer.q;
        int e = transfer.a().e();
        String str3 = transfer.m;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(100, str3);
        }
        PeerId peerId = transfer.n;
        if (peerId != null) {
            e += PeerId.o.i(200, peerId);
        }
        int i = transfer.o;
        ProtoAdapterKt$commonUint32$1 protoAdapterKt$commonUint32$1 = ProtoAdapter.i;
        if (i != 0) {
            e += protoAdapterKt$commonUint32$1.i(300, Integer.valueOf(i));
        }
        Metadata metadata = transfer.p;
        if (metadata != null) {
            e += Metadata.o.i(400, metadata);
        }
        if (!Intrinsics.a(str2, "")) {
            e += protoAdapterKt$commonString$1.i(500, str2);
        }
        if (!Intrinsics.a(str, "")) {
            e += protoAdapterKt$commonString$1.i(501, str);
        }
        boolean z = transfer.s;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 502, e);
        }
        TransferErr transferErr = transfer.t;
        if (transferErr != null) {
            e += TransferErr.q.i(600, transferErr);
        }
        TransferErr transferErr2 = transfer.u;
        if (transferErr2 != null) {
            e += TransferErr.q.i(601, transferErr2);
        }
        Transfer.Direction direction = transfer.v;
        if (direction != Transfer.Direction.m) {
            e += Transfer.Direction.l.i(700, direction);
        }
        Transfer.Status status = transfer.w;
        if (status != Transfer.Status.m) {
            e += Transfer.Status.l.i(800, status);
        }
        boolean z2 = transfer.x;
        if (z2) {
            e = q.c(z2, protoAdapterKt$commonBool$1, 900, e);
        }
        boolean z3 = transfer.y;
        if (z3) {
            e = q.c(z3, protoAdapterKt$commonBool$1, 1000, e);
        }
        long j = transfer.z;
        if (j != 0) {
            e += ProtoAdapter.k.i(1100, Long.valueOf(j));
        }
        ConnStats connStats = transfer.A;
        if (connStats != null) {
            e += ConnStats.s.i(1200, connStats);
        }
        int i2 = transfer.B;
        if (i2 != 0) {
            e += protoAdapterKt$commonUint32$1.i(1201, Integer.valueOf(i2));
        }
        Instant instant = transfer.C;
        if (instant != null) {
            return ProtoAdapter.u.i(1300, instant) + e;
        }
        return e;
    }
}
