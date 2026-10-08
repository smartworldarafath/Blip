package androidx.compose.foundation.text.input.internal;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import defpackage.r1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InputMethodManagerImpl {
    public final View a;
    public final Lazy b = LazyKt.a(LazyThreadSafetyMode.k, new r1(23, this));

    public InputMethodManagerImpl(View view) {
        this.a = view;
        new SoftwareKeyboardControllerCompat(view);
    }

    public final InputMethodManager a() {
        return (InputMethodManager) this.b.getValue();
    }
}
