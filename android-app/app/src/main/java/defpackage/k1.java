package defpackage;

import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class k1 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function0 k;
    public final /* synthetic */ MutableState l;

    public /* synthetic */ k1(Function0 function0, MutableState mutableState, int i) {
        this.j = i;
        this.k = function0;
        this.l = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.l;
        Function0 function0 = this.k;
        switch (i) {
            case 0:
                function0.a();
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 1:
                function0.a();
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                function0.a();
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                function0.a();
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                function0.a();
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                mutableState.setValue(Boolean.FALSE);
                function0.a();
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                mutableState.setValue(Boolean.TRUE);
                function0.a();
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                mutableState.setValue(Boolean.TRUE);
                function0.a();
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                mutableState.setValue(Boolean.FALSE);
                function0.a();
                return unit;
            default:
                mutableState.setValue(Boolean.FALSE);
                function0.a();
                return unit;
        }
    }
}
