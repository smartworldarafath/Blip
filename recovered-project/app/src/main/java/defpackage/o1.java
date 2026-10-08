package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.blip.android.ui.home.HomeScreenKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o1 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;

    public /* synthetic */ o1(MutableState mutableState, int i) {
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
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates != null) {
                    return layoutCoordinates;
                }
                InlineClassHelperKt.d("Required value was null.");
                f7.h();
                return null;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates2 != null) {
                    return layoutCoordinates2;
                }
                InlineClassHelperKt.d("Required value was null.");
                f7.h();
                return null;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                if (mutableState == null) {
                    return null;
                }
                return (List) mutableState.getValue();
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Boolean bool = (Boolean) mutableState.getValue();
                bool.booleanValue();
                return bool;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getValue()).booleanValue()));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getValue()).booleanValue()));
                return unit;
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
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 13:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 14:
                HomeScreenKt.b(mutableState, true);
                return unit;
            case 15:
                HomeScreenKt.b(mutableState, false);
                return unit;
            case 16:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 17:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            case 18:
                return new LazyGridIntervalContent((Function1) mutableState.getValue());
            case 19:
                return (LazyLayoutItemProvider) ((Function0) mutableState.getValue()).a();
            case 20:
                return new LazyListIntervalContent((Function1) mutableState.getValue());
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
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 26:
                mutableState.setValue(Boolean.FALSE);
                return unit;
            case 27:
                mutableState.setValue(Boolean.TRUE);
                return unit;
            default:
                mutableState.setValue(Boolean.TRUE);
                return unit;
        }
    }
}
