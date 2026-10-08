package bsarchive;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonInt64$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FolderStub$Companion$ADAPTER$1 extends ProtoAdapter<FolderStub> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        long j = 0;
        long j2 = 0;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        protoAdapterKt$commonInt64$1.getClass();
                        j2 = protoReader.q();
                    }
                } else {
                    protoAdapterKt$commonInt64$1.getClass();
                    j = protoReader.q();
                }
            } else {
                return new FolderStub(j, j2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        FolderStub folderStub = (FolderStub) obj;
        protoWriter.getClass();
        folderStub.getClass();
        long j = folderStub.m;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
        if (j != 0) {
            protoAdapterKt$commonInt64$1.f(protoWriter, 1, Long.valueOf(j));
        }
        long j2 = folderStub.n;
        if (j2 != 0) {
            protoAdapterKt$commonInt64$1.f(protoWriter, 2, Long.valueOf(j2));
        }
        protoWriter.a(folderStub.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        FolderStub folderStub = (FolderStub) obj;
        reverseProtoWriter.getClass();
        folderStub.getClass();
        reverseProtoWriter.d(folderStub.a());
        long j = folderStub.n;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
        if (j != 0) {
            protoAdapterKt$commonInt64$1.g(reverseProtoWriter, 2, Long.valueOf(j));
        }
        long j2 = folderStub.m;
        if (j2 != 0) {
            protoAdapterKt$commonInt64$1.g(reverseProtoWriter, 1, Long.valueOf(j2));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        FolderStub folderStub = (FolderStub) obj;
        folderStub.getClass();
        int e = folderStub.a().e();
        long j = folderStub.m;
        ProtoAdapterKt$commonInt64$1 protoAdapterKt$commonInt64$1 = ProtoAdapter.k;
        if (j != 0) {
            e += protoAdapterKt$commonInt64$1.i(1, Long.valueOf(j));
        }
        long j2 = folderStub.n;
        if (j2 != 0) {
            return protoAdapterKt$commonInt64$1.i(2, Long.valueOf(j2)) + e;
        }
        return e;
    }
}
