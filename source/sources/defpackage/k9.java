package defpackage;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.ui.home.HomeScreenKt;
import net.blip.android.ui.util.UmbrellaContentPickerType;
import net.blip.libblip.event.UpdateUser;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k9 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function1 k;
    public final /* synthetic */ MutableState l;

    public /* synthetic */ k9(MutableState mutableState, Function1 function1) {
        this.j = 13;
        this.l = mutableState;
        this.k = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.l;
        Function1 function1 = this.k;
        switch (i) {
            case 0:
                HomeScreenKt.b(mutableState, false);
                function1.b(UmbrellaContentPickerType.o);
                return unit;
            case 1:
                HomeScreenKt.b(mutableState, false);
                function1.b(UmbrellaContentPickerType.j);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                HomeScreenKt.b(mutableState, false);
                function1.b(UmbrellaContentPickerType.k);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                HomeScreenKt.b(mutableState, false);
                function1.b(UmbrellaContentPickerType.l);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                HomeScreenKt.b(mutableState, false);
                function1.b(UmbrellaContentPickerType.m);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                function1.b(((TextFieldValue) mutableState.getValue()).a.k);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                function1.b(((TextFieldValue) mutableState.getValue()).a.k);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                mutableState.setValue(Boolean.FALSE);
                function1.b(UmbrellaContentPickerType.o);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                mutableState.setValue(Boolean.FALSE);
                function1.b(UmbrellaContentPickerType.j);
                return unit;
            case KeyModifiers.a /* 9 */:
                mutableState.setValue(Boolean.FALSE);
                function1.b(UmbrellaContentPickerType.k);
                return unit;
            case KeyModifiers.b /* 10 */:
                mutableState.setValue(Boolean.FALSE);
                function1.b(UmbrellaContentPickerType.l);
                return unit;
            case 11:
                mutableState.setValue(Boolean.FALSE);
                function1.b(UmbrellaContentPickerType.m);
                return unit;
            case KeyModifiers.c /* 12 */:
                mutableState.setValue(Boolean.FALSE);
                function1.b(UmbrellaContentPickerType.n);
                return unit;
            case 13:
                boolean z = !((Boolean) mutableState.getValue()).booleanValue();
                mutableState.setValue(Boolean.valueOf(z));
                function1.b(new UpdateUser((String) null, Boolean.valueOf(z), 5));
                return unit;
            default:
                function1.b(((TextFieldValue) mutableState.getValue()).a.k);
                return unit;
        }
    }

    public /* synthetic */ k9(int i, MutableState mutableState, Function1 function1) {
        this.j = i;
        this.k = function1;
        this.l = mutableState;
    }
}
