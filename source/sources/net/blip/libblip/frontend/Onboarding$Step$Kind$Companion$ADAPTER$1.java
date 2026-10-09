package net.blip.libblip.frontend;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import net.blip.libblip.frontend.Onboarding;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Onboarding$Step$Kind$Companion$ADAPTER$1 extends EnumAdapter<Onboarding.Step.Kind> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        Onboarding.Step.Kind.k.getClass();
        switch (i) {
            case 0:
                return Onboarding.Step.Kind.m;
            case 1:
                return Onboarding.Step.Kind.n;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return Onboarding.Step.Kind.o;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return Onboarding.Step.Kind.p;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return Onboarding.Step.Kind.q;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return Onboarding.Step.Kind.r;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return Onboarding.Step.Kind.s;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Onboarding.Step.Kind.t;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Onboarding.Step.Kind.u;
            default:
                return null;
        }
    }
}
