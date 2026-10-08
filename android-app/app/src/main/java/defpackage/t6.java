package defpackage;

import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class t6 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ LegacyTextFieldState k;

    public /* synthetic */ t6(LegacyTextFieldState legacyTextFieldState, int i) {
        this.j = i;
        this.k = legacyTextFieldState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        String str;
        int i = this.j;
        Unit unit = Unit.a;
        LegacyTextFieldState legacyTextFieldState = this.k;
        switch (i) {
            case 0:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                TextLayoutResultProxy d = legacyTextFieldState.d();
                if (d != null) {
                    d.c = layoutCoordinates;
                }
                return unit;
            case 1:
                MutableState mutableState = legacyTextFieldState.t;
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                String str2 = textFieldValue.a.k;
                AnnotatedString annotatedString = legacyTextFieldState.j;
                if (annotatedString != null) {
                    str = annotatedString.k;
                } else {
                    str = null;
                }
                if (!Intrinsics.a(str2, str)) {
                    ((SnapshotMutableStateImpl) legacyTextFieldState.k).setValue(HandleState.j);
                    if (((Boolean) ((SnapshotMutableStateImpl) mutableState).getValue()).booleanValue()) {
                        ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
                    } else {
                        ((SnapshotMutableStateImpl) legacyTextFieldState.s).setValue(Boolean.FALSE);
                    }
                }
                long j = TextRange.b;
                legacyTextFieldState.f(j);
                legacyTextFieldState.e(j);
                legacyTextFieldState.u.b(textFieldValue);
                RecomposeScopeImpl recomposeScopeImpl = legacyTextFieldState.b;
                RecomposeScopeOwner recomposeScopeOwner = recomposeScopeImpl.a;
                if (recomposeScopeOwner != null) {
                    recomposeScopeOwner.c(recomposeScopeImpl, null);
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                legacyTextFieldState.r.b(((ImeAction) obj).a);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return Boolean.valueOf(legacyTextFieldState.r.b(((ImeAction) obj).a));
            default:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((SnapshotMutableStateImpl) legacyTextFieldState.q).setValue(bool);
                return unit;
        }
    }
}
