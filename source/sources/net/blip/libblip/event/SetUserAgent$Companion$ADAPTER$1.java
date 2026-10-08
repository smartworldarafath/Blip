package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import net.blip.libblip.UserAgent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SetUserAgent$Companion$ADAPTER$1 extends ProtoAdapter<SetUserAgent> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    obj = UserAgent.v.c(protoReader);
                } else {
                    protoReader.o(h);
                }
            } else {
                return new SetUserAgent((UserAgent) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        SetUserAgent setUserAgent = (SetUserAgent) obj;
        protoWriter.getClass();
        setUserAgent.getClass();
        UserAgent userAgent = setUserAgent.m;
        if (userAgent != null) {
            UserAgent.v.f(protoWriter, 1, userAgent);
        }
        protoWriter.a(setUserAgent.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        SetUserAgent setUserAgent = (SetUserAgent) obj;
        reverseProtoWriter.getClass();
        setUserAgent.getClass();
        reverseProtoWriter.d(setUserAgent.a());
        UserAgent userAgent = setUserAgent.m;
        if (userAgent != null) {
            UserAgent.v.g(reverseProtoWriter, 1, userAgent);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        SetUserAgent setUserAgent = (SetUserAgent) obj;
        setUserAgent.getClass();
        int e = setUserAgent.a().e();
        UserAgent userAgent = setUserAgent.m;
        if (userAgent != null) {
            return UserAgent.v.i(1, userAgent) + e;
        }
        return e;
    }
}
