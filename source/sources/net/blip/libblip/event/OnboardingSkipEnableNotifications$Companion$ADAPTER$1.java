package net.blip.libblip.event;

import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingSkipEnableNotifications$Companion$ADAPTER$1 extends ProtoAdapter<OnboardingSkipEnableNotifications> {
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                protoReader.o(h);
            } else {
                return new OnboardingSkipEnableNotifications(protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        OnboardingSkipEnableNotifications onboardingSkipEnableNotifications = (OnboardingSkipEnableNotifications) obj;
        protoWriter.getClass();
        onboardingSkipEnableNotifications.getClass();
        protoWriter.a(onboardingSkipEnableNotifications.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        OnboardingSkipEnableNotifications onboardingSkipEnableNotifications = (OnboardingSkipEnableNotifications) obj;
        reverseProtoWriter.getClass();
        onboardingSkipEnableNotifications.getClass();
        reverseProtoWriter.d(onboardingSkipEnableNotifications.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        OnboardingSkipEnableNotifications onboardingSkipEnableNotifications = (OnboardingSkipEnableNotifications) obj;
        onboardingSkipEnableNotifications.getClass();
        return onboardingSkipEnableNotifications.a().e();
    }
}
