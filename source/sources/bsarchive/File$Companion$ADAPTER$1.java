package bsarchive;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonInt64$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class File$Companion$ADAPTER$1 extends ProtoAdapter<File> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        boolean z = false;
        long j = 0;
        long j2 = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            protoReader.o(h);
                        } else {
                            z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                        }
                    } else {
                        protoAdapterKt$commonInt64$1.getClass();
                        j2 = protoReader.q();
                    }
                } else {
                    protoAdapterKt$commonInt64$1.getClass();
                    j = protoReader.q();
                }
            } else {
                return new File(j, j2, z, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        File file = (File) obj;
        protoWriter.getClass();
        file.getClass();
        long j = file.m;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
        if (j != 0) {
            protoAdapterKt$commonInt64$1.f(protoWriter, 1, Long.valueOf(j));
        }
        long j2 = file.n;
        if (j2 != 0) {
            protoAdapterKt$commonInt64$1.f(protoWriter, 2, Long.valueOf(j2));
        }
        boolean z = file.o;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 3, Boolean.valueOf(z));
        }
        protoWriter.a(file.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        File file = (File) obj;
        reverseProtoWriter.getClass();
        file.getClass();
        reverseProtoWriter.d(file.a());
        boolean z = file.o;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 3, Boolean.valueOf(z));
        }
        long j = file.n;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
        if (j != 0) {
            protoAdapterKt$commonInt64$1.g(reverseProtoWriter, 2, Long.valueOf(j));
        }
        long j2 = file.m;
        if (j2 != 0) {
            protoAdapterKt$commonInt64$1.g(reverseProtoWriter, 1, Long.valueOf(j2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        File file = (File) obj;
        file.getClass();
        int e = file.a().e();
        long j = file.m;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
        if (j != 0) {
            e += protoAdapterKt$commonInt64$1.i(1, Long.valueOf(j));
        }
        long j2 = file.n;
        if (j2 != 0) {
            e += protoAdapterKt$commonInt64$1.i(2, Long.valueOf(j2));
        }
        boolean z = file.o;
        if (z) {
            return q.c(z, ProtoAdapter.g, 3, e);
        }
        return e;
    }
}
