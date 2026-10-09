package defpackage;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Placeable k;

    public /* synthetic */ f(Placeable placeable, int i) {
        this.j = i;
        this.k = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Placeable placeable = this.k;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i) {
            case 0:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case 1:
                placementScope.e(placeable, 0, 0, 0.0f);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                placementScope.e(placeable, 0, 0, 0.0f);
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                if (placementScope.c() != LayoutDirection.j && placementScope.d() != 0) {
                    Placeable.PlacementScope.a(placementScope, placeable);
                    placeable.c0(IntOffset.c((placementScope.d() - placeable.j) << 32, placeable.n), 0.0f, null);
                } else {
                    Placeable.PlacementScope.a(placementScope, placeable);
                    placeable.c0(IntOffset.c(0L, placeable.n), 0.0f, null);
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                placementScope.e(placeable, 0, 0, 0.0f);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                placementScope.getClass();
                placementScope.e(placeable, 0, 0, 0.0f);
                return unit;
            case KeyModifiers.a /* 9 */:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case KeyModifiers.b /* 10 */:
                Placeable.PlacementScope.l(placementScope, placeable, 0, 0);
                return unit;
            case 11:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case KeyModifiers.c /* 12 */:
                placementScope.e(placeable, 0, 0, 0.0f);
                return unit;
            case 13:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
            case 14:
                placementScope.e(placeable, 0, 0, 0.0f);
                return unit;
            default:
                Placeable.PlacementScope.j(placementScope, placeable, 0, 0);
                return unit;
        }
    }
}
