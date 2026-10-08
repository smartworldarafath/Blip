package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import net.blip.libblip.frontend.Onboarding;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Onboarding$Step$Companion$ADAPTER$1 extends ProtoAdapter<Onboarding.Step> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        Object obj = Onboarding.Step.Kind.m;
        long d = protoReader.d();
        boolean z = false;
        Object obj2 = null;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        if (h != 3) {
                            protoReader.o(h);
                        } else {
                            obj2 = Err.o.c(protoReader);
                        }
                    } else {
                        z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                    }
                } else {
                    try {
                        obj = Onboarding.Step.Kind.l.c(protoReader);
                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                    }
                }
            } else {
                return new Onboarding.Step((Onboarding.Step.Kind) obj, z, (Err) obj2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Onboarding.Step step = (Onboarding.Step) obj;
        protoWriter.getClass();
        step.getClass();
        Onboarding.Step.Kind kind = step.m;
        if (kind != Onboarding.Step.Kind.m) {
            Onboarding.Step.Kind.l.f(protoWriter, 1, kind);
        }
        boolean z = step.n;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 2, Boolean.valueOf(z));
        }
        Err err = step.o;
        if (err != null) {
            Err.o.f(protoWriter, 3, err);
        }
        protoWriter.a(step.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Onboarding.Step step = (Onboarding.Step) obj;
        reverseProtoWriter.getClass();
        step.getClass();
        reverseProtoWriter.d(step.a());
        Err err = step.o;
        if (err != null) {
            Err.o.g(reverseProtoWriter, 3, err);
        }
        boolean z = step.n;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 2, Boolean.valueOf(z));
        }
        Onboarding.Step.Kind kind = step.m;
        if (kind != Onboarding.Step.Kind.m) {
            Onboarding.Step.Kind.l.g(reverseProtoWriter, 1, kind);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Onboarding.Step step = (Onboarding.Step) obj;
        step.getClass();
        int e = step.a().e();
        Onboarding.Step.Kind kind = step.m;
        if (kind != Onboarding.Step.Kind.m) {
            e += Onboarding.Step.Kind.l.i(1, kind);
        }
        boolean z = step.n;
        if (z) {
            e = q.c(z, ProtoAdapter.g, 2, e);
        }
        Err err = step.o;
        if (err != null) {
            return Err.o.i(3, err) + e;
        }
        return e;
    }
}
