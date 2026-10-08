package androidx.compose.ui.autofill;

import android.content.Context;
import android.view.View;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlatformAutofillManagerImpl {
    public final Context a;
    public android.view.autofill.AutofillManager b;

    public PlatformAutofillManagerImpl(Context context) {
        this.a = context;
    }

    public final android.view.autofill.AutofillManager a() {
        android.view.autofill.AutofillManager autofillManager = this.b;
        if (autofillManager == null) {
            android.view.autofill.AutofillManager autofillManager2 = (android.view.autofill.AutofillManager) this.a.getSystemService(android.view.autofill.AutofillManager.class);
            if (autofillManager2 != null) {
                this.b = autofillManager2;
                return autofillManager2;
            }
            u2.l("Could not locate AutofillManager from context");
            return null;
        }
        return autofillManager;
    }

    public final void b(View view, int i, boolean z) {
        a().notifyViewVisibilityChanged(view, i, z);
    }
}
