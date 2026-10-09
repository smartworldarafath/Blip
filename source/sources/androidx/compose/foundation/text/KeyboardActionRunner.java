package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import defpackage.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class KeyboardActionRunner implements KeyboardActionScope {
    public final SoftwareKeyboardController a;
    public KeyboardActions b;
    public FocusManager c;

    public KeyboardActionRunner(SoftwareKeyboardController softwareKeyboardController) {
        this.a = softwareKeyboardController;
    }

    public final KeyboardActions a() {
        KeyboardActions keyboardActions = this.b;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        Intrinsics.e("keyboardActions");
        throw null;
    }

    public final boolean b(int i) {
        Function1 function1;
        SoftwareKeyboardController softwareKeyboardController;
        if (i == 7) {
            function1 = a().a;
        } else if (i == 2) {
            function1 = a().b;
        } else if (i == 6) {
            function1 = a().c;
        } else if (i == 5) {
            function1 = a().d;
        } else if (i == 3) {
            function1 = a().e;
        } else if (i == 4) {
            function1 = a().f;
        } else if (i == 1 || i == 0) {
            function1 = null;
        } else {
            u2.l("invalid ImeAction");
            return false;
        }
        if (function1 != null) {
            function1.b(this);
            return true;
        }
        if (i == 6) {
            FocusManager focusManager = this.c;
            if (focusManager != null) {
                ((FocusOwnerImpl) focusManager).h(1, true);
                return true;
            }
            Intrinsics.e("focusManager");
            throw null;
        }
        if (i == 5) {
            FocusManager focusManager2 = this.c;
            if (focusManager2 != null) {
                ((FocusOwnerImpl) focusManager2).h(2, true);
                return true;
            }
            Intrinsics.e("focusManager");
            throw null;
        }
        if (i != 7 || (softwareKeyboardController = this.a) == null) {
            return false;
        }
        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).a();
        return true;
    }
}
