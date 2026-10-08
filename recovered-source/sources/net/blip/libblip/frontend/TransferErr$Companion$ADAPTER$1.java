package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.frontend.TransferErr;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferErr$Companion$ADAPTER$1 extends ProtoAdapter<TransferErr> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = TransferErr.Code.m;
        long d = protoReader.d();
        String str = "";
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                        if (h != 3) {
                            if (h != 4) {
                                protoReader.o(h);
                            } else {
                                z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                            }
                        } else {
                            z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                        }
                    } else {
                        ProtoAdapter.p.getClass();
                        str = protoReader.n();
                    }
                } else {
                    try {
                        obj = TransferErr.Code.l.c(protoReader);
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                    }
                }
            } else {
                return new TransferErr((TransferErr.Code) obj, str, z, z2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        TransferErr transferErr = (TransferErr) obj;
        protoWriter.getClass();
        transferErr.getClass();
        String str = transferErr.n;
        TransferErr.Code code = transferErr.m;
        if (code != TransferErr.Code.m) {
            TransferErr.Code.l.f(protoWriter, 1, code);
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 2, str);
        }
        boolean z = transferErr.o;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 3, Boolean.valueOf(z));
        }
        boolean z2 = transferErr.p;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 4, Boolean.valueOf(z2));
        }
        protoWriter.a(transferErr.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        TransferErr transferErr = (TransferErr) obj;
        reverseProtoWriter.getClass();
        transferErr.getClass();
        String str = transferErr.n;
        reverseProtoWriter.d(transferErr.a());
        boolean z = transferErr.p;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 4, Boolean.valueOf(z));
        }
        boolean z2 = transferErr.o;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 3, Boolean.valueOf(z2));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 2, str);
        }
        TransferErr.Code code = transferErr.m;
        if (code != TransferErr.Code.m) {
            TransferErr.Code.l.g(reverseProtoWriter, 1, code);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        TransferErr transferErr = (TransferErr) obj;
        transferErr.getClass();
        String str = transferErr.n;
        int e = transferErr.a().e();
        TransferErr.Code code = transferErr.m;
        if (code != TransferErr.Code.m) {
            e += TransferErr.Code.l.i(1, code);
        }
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(2, str);
        }
        boolean z = transferErr.o;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 3, e);
        }
        boolean z2 = transferErr.p;
        if (z2) {
            return q.c(z2, protoAdapterKt$commonBool$1, 4, e);
        }
        return e;
    }
}
