package androidx.compose.ui.autofill;

import android.view.autofill.AutofillId;
import androidx.compose.ui.platform.AndroidComposeView;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidAutofill implements Autofill {
    public final AndroidComposeView a;
    public final AutofillTree b;
    public final AutofillId c;

    public AndroidAutofill(AndroidComposeView androidComposeView, AutofillTree autofillTree) {
        this.a = androidComposeView;
        this.b = autofillTree;
        androidComposeView.setImportantForAutofill(1);
        AutofillId autofillId = androidComposeView.getAutofillId();
        if (autofillId != null) {
            this.c = autofillId;
            return;
        }
        throw q.p("Required value was null.");
    }
}
