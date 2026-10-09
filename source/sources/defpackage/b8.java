package defpackage;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.DrawerKt;
import androidx.compose.material.DrawerState;
import androidx.compose.material.DrawerValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.ui.util.UmbrellaContentPickerType;
import net.blip.libblip.event.Logout;
import net.blip.libblip.event.OnboardingSkipCompanionDeviceSetup;
import net.blip.libblip.event.OnboardingSkipEnableNotifications;
import net.blip.libblip.event.OnboardingSkipShareInstructions;
import net.blip.libblip.event.OnboardingSkipSplash;
import net.blip.libblip.event.RemoveDeviceThenLogout;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b8 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;

    public /* synthetic */ b8(Function1 function1) {
        this.j = 0;
        DrawerValue drawerValue = DrawerValue.j;
        this.k = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        Function1 function1 = this.k;
        switch (i) {
            case 0:
                DrawerValue drawerValue = DrawerValue.j;
                TweenSpec tweenSpec = DrawerKt.a;
                return new DrawerState(drawerValue, function1);
            case 1:
                function1.b(UmbrellaContentPickerType.n);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                function1.b(new OnboardingSkipCompanionDeviceSetup(ByteString.m));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                function1.b(new OnboardingSkipEnableNotifications(ByteString.m));
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                function1.b(new OnboardingSkipShareInstructions(ByteString.m));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                function1.b(new OnboardingSkipSplash(ByteString.m));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                function1.b(new Logout(ByteString.m));
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                function1.b(UmbrellaContentPickerType.l);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                function1.b(UmbrellaContentPickerType.m);
                return unit;
            case KeyModifiers.a /* 9 */:
                function1.b(UmbrellaContentPickerType.n);
                return unit;
            case KeyModifiers.b /* 10 */:
                function1.b(UmbrellaContentPickerType.o);
                return unit;
            case 11:
                function1.b(UmbrellaContentPickerType.j);
                return unit;
            case KeyModifiers.c /* 12 */:
                function1.b(UmbrellaContentPickerType.k);
                return unit;
            default:
                function1.b(new RemoveDeviceThenLogout(ByteString.m));
                return unit;
        }
    }

    public /* synthetic */ b8(Function1 function1, int i) {
        this.j = i;
        this.k = function1;
    }
}
