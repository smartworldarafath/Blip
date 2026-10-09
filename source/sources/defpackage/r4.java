package defpackage;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.android.ui.list.SendToOtherPeopleListRowKt;
import net.blip.android.ui.list.SendToYourDevicesListRowKt;
import net.blip.android.ui.onboarding.OnboardingEnableNotificationsStepKt;
import net.blip.android.ui.onboarding.OnboardingShareInstructionsStepKt;
import net.blip.android.ui.settings.SettingsComposablesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r4 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier k;

    public /* synthetic */ r4(Modifier modifier, int i, int i2) {
        this.j = i2;
        this.k = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        Unit unit = Unit.a;
        Modifier modifier = this.k;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                BoxKt.a(modifier, composer, RecomposeScopeImplKt.a(1));
                return unit;
            case 1:
                OnboardingEnableNotificationsStepKt.b(modifier, composer, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                OnboardingShareInstructionsStepKt.c(modifier, composer, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                PeerTrayCellsKt.e(modifier, composer, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                SendToOtherPeopleListRowKt.a(modifier, composer, RecomposeScopeImplKt.a(1));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                SendToYourDevicesListRowKt.a(modifier, composer, RecomposeScopeImplKt.a(1));
                return unit;
            default:
                SettingsComposablesKt.b(modifier, composer, RecomposeScopeImplKt.a(49));
                return unit;
        }
    }
}
