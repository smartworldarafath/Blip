package bsarchive;

import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Folder$Companion$ADAPTER$1 extends ProtoAdapter<Folder> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                ByteString f = protoReader.f(d);
                f.getClass();
                return new Message(Folder.m, f);
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Folder folder = (Folder) obj;
        protoWriter.getClass();
        folder.getClass();
        protoWriter.a(folder.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Folder folder = (Folder) obj;
        reverseProtoWriter.getClass();
        folder.getClass();
        reverseProtoWriter.d(folder.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Folder folder = (Folder) obj;
        folder.getClass();
        return folder.a().e();
    }
}
