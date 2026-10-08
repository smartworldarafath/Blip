package androidx.compose.ui.text.input;

import android.view.View;
import androidx.core.view.SoftwareKeyboardControllerCompat;
import defpackage.r1;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class InputMethodManagerImpl {
    public final View a;
    public final Lazy b = LazyKt.a(LazyThreadSafetyMode.k, new r1(22, this));
    public final SoftwareKeyboardControllerCompat c;

    public InputMethodManagerImpl(View view) {
        this.a = view;
        this.c = new SoftwareKeyboardControllerCompat(view);
    }
}
