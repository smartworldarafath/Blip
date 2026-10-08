package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnboardingSkipEnableNotifications extends Message {
    public static final OnboardingSkipEnableNotifications$Companion$ADAPTER$1 m = new ProtoAdapter(FieldEncoding.m, Reflection.a(OnboardingSkipEnableNotifications.class), "type.googleapis.com/event.OnboardingSkipEnableNotifications", Syntax.l, null, 0);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingSkipEnableNotifications(ByteString byteString) {
        super(m, byteString);
        byteString.getClass();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof OnboardingSkipEnableNotifications) && Intrinsics.a(a(), ((OnboardingSkipEnableNotifications) obj).a())) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return "OnboardingSkipEnableNotifications{}";
    }
}
