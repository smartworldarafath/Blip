package net.blip.libblip.frontend;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import defpackage.q;
import net.blip.libblip.frontend.Onboarding;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Onboarding$Companion$ADAPTER$1 extends ProtoAdapter<Onboarding> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        Object obj = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                    switch (h) {
                        case 100:
                            z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                            break;
                        case 101:
                            z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                            break;
                        case 102:
                            z3 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                            break;
                        case 103:
                            z4 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                            break;
                        case 104:
                            z5 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                            break;
                        default:
                            protoReader.o(h);
                            break;
                    }
                } else {
                    obj = Onboarding.Step.p.c(protoReader);
                }
            } else {
                return new Onboarding((Onboarding.Step) obj, z, z2, z3, z4, z5, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Onboarding onboarding = (Onboarding) obj;
        protoWriter.getClass();
        onboarding.getClass();
        Onboarding.Step step = onboarding.m;
        if (step != null) {
            Onboarding.Step.p.f(protoWriter, 1, step);
        }
        boolean z = onboarding.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 100, Boolean.valueOf(z));
        }
        boolean z2 = onboarding.o;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 101, Boolean.valueOf(z2));
        }
        boolean z3 = onboarding.p;
        if (z3) {
            protoAdapterKt$commonBool$1.f(protoWriter, 102, Boolean.valueOf(z3));
        }
        boolean z4 = onboarding.q;
        if (z4) {
            protoAdapterKt$commonBool$1.f(protoWriter, 103, Boolean.valueOf(z4));
        }
        boolean z5 = onboarding.r;
        if (z5) {
            protoAdapterKt$commonBool$1.f(protoWriter, 104, Boolean.valueOf(z5));
        }
        protoWriter.a(onboarding.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Onboarding onboarding = (Onboarding) obj;
        reverseProtoWriter.getClass();
        onboarding.getClass();
        reverseProtoWriter.d(onboarding.a());
        boolean z = onboarding.r;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 104, Boolean.valueOf(z));
        }
        boolean z2 = onboarding.q;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 103, Boolean.valueOf(z2));
        }
        boolean z3 = onboarding.p;
        if (z3) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 102, Boolean.valueOf(z3));
        }
        boolean z4 = onboarding.o;
        if (z4) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 101, Boolean.valueOf(z4));
        }
        boolean z5 = onboarding.n;
        if (z5) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 100, Boolean.valueOf(z5));
        }
        Onboarding.Step step = onboarding.m;
        if (step != null) {
            Onboarding.Step.p.g(reverseProtoWriter, 1, step);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Onboarding onboarding = (Onboarding) obj;
        onboarding.getClass();
        int e = onboarding.a().e();
        Onboarding.Step step = onboarding.m;
        if (step != null) {
            e += Onboarding.Step.p.i(1, step);
        }
        boolean z = onboarding.n;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            e = q.c(z, protoAdapterKt$commonBool$1, 100, e);
        }
        boolean z2 = onboarding.o;
        if (z2) {
            e = q.c(z2, protoAdapterKt$commonBool$1, 101, e);
        }
        boolean z3 = onboarding.p;
        if (z3) {
            e = q.c(z3, protoAdapterKt$commonBool$1, 102, e);
        }
        boolean z4 = onboarding.q;
        if (z4) {
            e = q.c(z4, protoAdapterKt$commonBool$1, 103, e);
        }
        boolean z5 = onboarding.r;
        if (z5) {
            return q.c(z5, protoAdapterKt$commonBool$1, 104, e);
        }
        return e;
    }
}
