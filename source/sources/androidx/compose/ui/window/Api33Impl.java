package androidx.compose.ui.window;

import android.window.OnBackInvokedDispatcher;
import defpackage.v2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class Api33Impl {
    public static final void a(PopupLayout popupLayout, v2 v2Var) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (v2Var != null && (findOnBackInvokedDispatcher = popupLayout.findOnBackInvokedDispatcher()) != null) {
            findOnBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, v2Var);
        }
    }

    public static final void b(PopupLayout popupLayout, v2 v2Var) {
        OnBackInvokedDispatcher findOnBackInvokedDispatcher;
        if (v2Var != null && (findOnBackInvokedDispatcher = popupLayout.findOnBackInvokedDispatcher()) != null) {
            findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(v2Var);
        }
    }
}
