package net.blip.libblip;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.time.Instant;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Plan$Companion$ADAPTER$1 extends ProtoAdapter<Plan> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h == 1) {
                    obj = ProtoAdapter.u.c(protoReader);
                } else {
                    protoReader.o(h);
                }
            } else {
                return new Plan((Instant) obj, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Plan plan = (Plan) obj;
        protoWriter.getClass();
        plan.getClass();
        Instant instant = plan.m;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 1, instant);
        }
        protoWriter.a(plan.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Plan plan = (Plan) obj;
        reverseProtoWriter.getClass();
        plan.getClass();
        reverseProtoWriter.d(plan.a());
        Instant instant = plan.m;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 1, instant);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Plan plan = (Plan) obj;
        plan.getClass();
        int e = plan.a().e();
        Instant instant = plan.m;
        if (instant != null) {
            return ProtoAdapter.u.i(1, instant) + e;
        }
        return e;
    }
}
