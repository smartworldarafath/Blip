package defpackage;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.input.ImeAction;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class x6 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ CoreTextFieldSemanticsModifierNode k;

    public /* synthetic */ x6(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, int i) {
        this.j = i;
        this.k = coreTextFieldSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.k;
        switch (i) {
            case 0:
                DelegatableNodeKt.d(coreTextFieldSemanticsModifierNode);
                return unit;
            case 1:
                coreTextFieldSemanticsModifierNode.E.h(true);
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                coreTextFieldSemanticsModifierNode.E.d(true);
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                coreTextFieldSemanticsModifierNode.E.f();
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                DelegatableNodeKt.d(coreTextFieldSemanticsModifierNode);
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                coreTextFieldSemanticsModifierNode.E.q();
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                coreTextFieldSemanticsModifierNode.B.w.b(new ImeAction(coreTextFieldSemanticsModifierNode.F.e));
                break;
            default:
                LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.B;
                FocusRequester focusRequester = coreTextFieldSemanticsModifierNode.G;
                if (!legacyTextFieldState.b()) {
                    FocusRequester.a(focusRequester);
                } else {
                    SoftwareKeyboardController softwareKeyboardController = legacyTextFieldState.c;
                    if (softwareKeyboardController != null) {
                        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).b();
                    }
                }
                return Boolean.TRUE;
        }
        return Boolean.TRUE;
    }
}
