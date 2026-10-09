package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingSkipSplash$Companion$ADAPTER$1 extends ProtoAdapter<OnboardingSkipSplash> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                return new OnboardingSkipSplash(protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        OnboardingSkipSplash onboardingSkipSplash = (OnboardingSkipSplash) obj;
        protoWriter.getClass();
        onboardingSkipSplash.getClass();
        protoWriter.a(onboardingSkipSplash.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        OnboardingSkipSplash onboardingSkipSplash = (OnboardingSkipSplash) obj;
        reverseProtoWriter.getClass();
        onboardingSkipSplash.getClass();
        reverseProtoWriter.d(onboardingSkipSplash.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        OnboardingSkipSplash onboardingSkipSplash = (OnboardingSkipSplash) obj;
        onboardingSkipSplash.getClass();
        return onboardingSkipSplash.a().e();
    }
}
