package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SystemInfo$Companion$ADAPTER$1 extends ProtoAdapter<SystemInfo> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        boolean z2 = false;
        String str = "";
        long j = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            if (h != 4) {
                                protoReader.o(h);
                            } else {
                                ProtoAdapter.l.getClass();
                                j = protoReader.q();
                            }
                        } else {
                            ProtoAdapter.p.getClass();
                            str = protoReader.n();
                        }
                    } else {
                        z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                    }
                } else {
                    z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                }
            } else {
                return new SystemInfo(z, z2, str, j, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        SystemInfo systemInfo = (SystemInfo) obj;
        protoWriter.getClass();
        systemInfo.getClass();
        String str = systemInfo.o;
        boolean z = systemInfo.m;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 1, Boolean.valueOf(z));
        }
        boolean z2 = systemInfo.n;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 2, Boolean.valueOf(z2));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 3, str);
        }
        long j = systemInfo.p;
        if (j != 0) {
            ProtoAdapter.l.f(protoWriter, 4, Long.valueOf(j));
        }
        protoWriter.a(systemInfo.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        SystemInfo systemInfo = (SystemInfo) obj;
        reverseProtoWriter.getClass();
        systemInfo.getClass();
        String str = systemInfo.o;
        reverseProtoWriter.d(systemInfo.a());
        long j = systemInfo.p;
        if (j != 0) {
            ProtoAdapter.l.g(reverseProtoWriter, 4, Long.valueOf(j));
        }
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 3, str);
        }
        boolean z = systemInfo.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 2, Boolean.valueOf(z));
        }
        boolean z2 = systemInfo.m;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 1, Boolean.valueOf(z2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        SystemInfo systemInfo = (SystemInfo) obj;
        systemInfo.getClass();
        String str = systemInfo.o;
        int e = systemInfo.a().e();
        boolean z = systemInfo.m;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 1, e);
        }
        boolean z2 = systemInfo.n;
        if (z2) {
            e = q.c(z2, protoAdapterKt$commonBool$1, 2, e);
        }
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(3, str);
        }
        long j = systemInfo.p;
        if (j != 0) {
            return ProtoAdapter.l.i(4, Long.valueOf(j)) + e;
        }
        return e;
    }
}
