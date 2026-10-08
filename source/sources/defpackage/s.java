package defpackage;

import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class s implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Function0 k;

    public /* synthetic */ s(int i, Function0 function0) {
        this.j = i;
        this.k = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        Function0 function0 = this.k;
        switch (i) {
            case 0:
                if (function0 != null) {
                    function0.a();
                }
                return unit;
            case 1:
                function0.a();
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                function0.a();
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                function0.a();
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                function0.a();
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                function0.a();
                return unit;
            default:
                function0.a();
                return unit;
        }
    }
}
