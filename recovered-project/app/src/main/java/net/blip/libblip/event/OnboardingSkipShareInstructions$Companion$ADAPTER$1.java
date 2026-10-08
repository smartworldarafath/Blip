package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingSkipShareInstructions$Companion$ADAPTER$1 extends ProtoAdapter<OnboardingSkipShareInstructions> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                return new OnboardingSkipShareInstructions(protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        OnboardingSkipShareInstructions onboardingSkipShareInstructions = (OnboardingSkipShareInstructions) obj;
        protoWriter.getClass();
        onboardingSkipShareInstructions.getClass();
        protoWriter.a(onboardingSkipShareInstructions.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        OnboardingSkipShareInstructions onboardingSkipShareInstructions = (OnboardingSkipShareInstructions) obj;
        reverseProtoWriter.getClass();
        onboardingSkipShareInstructions.getClass();
        reverseProtoWriter.d(onboardingSkipShareInstructions.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        OnboardingSkipShareInstructions onboardingSkipShareInstructions = (OnboardingSkipShareInstructions) obj;
        onboardingSkipShareInstructions.getClass();
        return onboardingSkipShareInstructions.a().e();
    }
}
