package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class cd implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;

    public /* synthetic */ cd(MutableState mutableState, int i) {
        this.j = i;
        this.k = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.k;
        switch (i) {
            case 0:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 1:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates != null) {
                    return layoutCoordinates;
                }
                InlineClassHelperKt.d("Required value was null.");
                f7.h();
                return null;
            case KeyModifiers.a /* 9 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case KeyModifiers.b /* 10 */:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 11:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case KeyModifiers.c /* 12 */:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 13:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 14:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 15:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 16:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 17:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 18:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 19:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getValue()).booleanValue()));
                return unit;
            case 20:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 21:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 22:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 23:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 24:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 25:
                mutableState.setValue(null);
                return unit;
            case 26:
                mutableState.setValue(null);
                return unit;
            case 27:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 28:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            default:
                mutableState.setValue(null);
                return unit;
        }
    }
}
