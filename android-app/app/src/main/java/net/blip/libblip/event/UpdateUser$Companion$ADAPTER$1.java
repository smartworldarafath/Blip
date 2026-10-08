package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UpdateUser$Companion$ADAPTER$1 extends ProtoAdapter<UpdateUser> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        String str = null;
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        obj = ProtoAdapter.g.c(protoReader);
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new UpdateUser(str, (Boolean) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        UpdateUser updateUser = (UpdateUser) obj;
        protoWriter.getClass();
        updateUser.getClass();
        ProtoAdapter.p.f(protoWriter, 1, updateUser.m);
        ProtoAdapter.g.f(protoWriter, 2, updateUser.n);
        protoWriter.a(updateUser.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        UpdateUser updateUser = (UpdateUser) obj;
        reverseProtoWriter.getClass();
        updateUser.getClass();
        reverseProtoWriter.d(updateUser.a());
        ProtoAdapter.g.g(reverseProtoWriter, 2, updateUser.n);
        ProtoAdapter.p.g(reverseProtoWriter, 1, updateUser.m);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        UpdateUser updateUser = (UpdateUser) obj;
        updateUser.getClass();
        return ProtoAdapter.g.i(2, updateUser.n) + ProtoAdapter.p.i(1, updateUser.m) + updateUser.a().e();
    }
}
