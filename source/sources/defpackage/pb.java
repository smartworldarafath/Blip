package defpackage;

import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class pb implements Function1 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;

    public /* synthetic */ pb(LegacyTextFieldState legacyTextFieldState, FocusRequester focusRequester, boolean z, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping) {
        this.l = legacyTextFieldState;
        this.m = focusRequester;
        this.k = z;
        this.n = textFieldSelectionManager;
        this.o = offsetMapping;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.o;
        Object obj3 = this.n;
        boolean z = this.k;
        Object obj4 = this.m;
        Object obj5 = this.l;
        switch (i) {
            case 0:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).j = true;
                ((Ref$BooleanRef) obj4).j = true;
                ((NavControllerImpl) obj3).m(navBackStackEntry, z, (ArrayDeque) obj2);
                return unit;
            default:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj5;
                FocusRequester focusRequester = (FocusRequester) obj4;
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj3;
                OffsetMapping offsetMapping = (OffsetMapping) obj2;
                Offset offset = (Offset) obj;
                if (!legacyTextFieldState.b()) {
                    FocusRequester.a(focusRequester);
                } else {
                    SoftwareKeyboardController softwareKeyboardController = legacyTextFieldState.c;
                    if (softwareKeyboardController != null) {
                        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).b();
                    }
                }
                if (legacyTextFieldState.b() && z) {
                    if (legacyTextFieldState.a() != HandleState.k) {
                        TextLayoutResultProxy d = legacyTextFieldState.d();
                        if (d != null) {
                            long j = offset.a;
                            EditProcessor editProcessor = legacyTextFieldState.d;
                            t6 t6Var = legacyTextFieldState.v;
                            int a = offsetMapping.a(d.b(j, true));
                            t6Var.b(TextFieldValue.a(editProcessor.a, null, TextRangeKt.a(a, a), 5));
                            if (legacyTextFieldState.a.a.k.length() > 0) {
                                ((SnapshotMutableStateImpl) legacyTextFieldState.k).setValue(HandleState.l);
                            }
                        }
                    } else {
                        textFieldSelectionManager.g(offset);
                    }
                }
                return unit;
        }
    }

    public /* synthetic */ pb(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, NavControllerImpl navControllerImpl, boolean z, ArrayDeque arrayDeque) {
        this.l = ref$BooleanRef;
        this.m = ref$BooleanRef2;
        this.n = navControllerImpl;
        this.k = z;
        this.o = arrayDeque;
    }
}
