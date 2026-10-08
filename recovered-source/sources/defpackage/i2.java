package defpackage;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.focus.CancelIndicatingFocusBoundaryScope;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusEnterExitScope;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.FocusBlockerKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i2 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ MutableState k;

    public /* synthetic */ i2(MutableState mutableState, int i) {
        this.j = i;
        this.k = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        AnnotatedString annotatedString;
        int i = this.j;
        Unit unit = Unit.a;
        MutableState mutableState = this.k;
        switch (i) {
            case 0:
                mutableState.setValue((LayoutCoordinates) obj);
                return unit;
            case 1:
                mutableState.setValue((LayoutCoordinates) obj);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = (TextAnnotatedStringNode.TextSubstitutionValue) obj;
                if (textSubstitutionValue.c) {
                    annotatedString = textSubstitutionValue.b;
                } else {
                    annotatedString = textSubstitutionValue.a;
                }
                mutableState.setValue(annotatedString);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                List list = (List) obj;
                if (mutableState != null) {
                    mutableState.setValue(list);
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                FocusProperties focusProperties = (FocusProperties) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = FocusBlockerKt.a;
                focusProperties.getClass();
                focusProperties.c(false);
                focusProperties.d(new i2(mutableState, 5));
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                FocusEnterExitScope focusEnterExitScope = (FocusEnterExitScope) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = FocusBlockerKt.a;
                focusEnterExitScope.getClass();
                mutableState.setValue(new FocusDirection(((CancelIndicatingFocusBoundaryScope) focusEnterExitScope).a));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Transfer transfer = (Transfer) obj;
                transfer.getClass();
                mutableState.setValue(transfer.m);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Transfer transfer2 = (Transfer) obj;
                transfer2.getClass();
                mutableState.setValue(transfer2.m);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                textFieldValue.getClass();
                mutableState.setValue(textFieldValue);
                return unit;
            case KeyModifiers.a /* 9 */:
                TextFieldValue textFieldValue2 = (TextFieldValue) obj;
                textFieldValue2.getClass();
                mutableState.setValue(textFieldValue2);
                return unit;
            case KeyModifiers.b /* 10 */:
                TextFieldValue textFieldValue3 = (TextFieldValue) obj;
                textFieldValue3.getClass();
                mutableState.setValue(textFieldValue3);
                return unit;
            case 11:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                mutableState.setValue(bool);
                return unit;
            case KeyModifiers.c /* 12 */:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                mutableState.setValue(bool2);
                return unit;
            case 13:
                mutableState.setValue((LayoutCoordinates) obj);
                return unit;
            case 14:
                Float f = (Float) obj;
                f.getClass();
                return Float.valueOf(((Number) ((Function1) mutableState.getValue()).b(f)).floatValue());
            case 15:
                FocusState focusState = (FocusState) obj;
                focusState.getClass();
                mutableState.setValue(Boolean.valueOf(((FocusStateImpl) focusState).b()));
                return unit;
            case 16:
                TextFieldValue textFieldValue4 = (TextFieldValue) obj;
                textFieldValue4.getClass();
                mutableState.setValue(textFieldValue4);
                return unit;
            case 17:
                ((Function1) mutableState.getValue()).b((Offset) obj);
                return unit;
            default:
                Boolean bool3 = (Boolean) obj;
                bool3.getClass();
                mutableState.setValue(bool3);
                return unit;
        }
    }
}
