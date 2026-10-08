package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import androidx.compose.ui.autofill.ContentDataType;
import io.sentry.d;
import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidAutofill_androidKt {
    public static final void a(AndroidAutofill androidAutofill, ViewStructure viewStructure) {
        AutofillTree autofillTree = androidAutofill.b;
        if (!autofillTree.a.isEmpty()) {
            int addChildCount = viewStructure.addChildCount(autofillTree.a.size());
            Iterator it = autofillTree.a.entrySet().iterator();
            if (!it.hasNext()) {
                return;
            }
            Map.Entry entry = (Map.Entry) it.next();
            int intValue = ((Number) entry.getKey()).intValue();
            if (entry.getValue() != null) {
                d.i();
                return;
            }
            ViewStructure newChild = viewStructure.newChild(addChildCount);
            newChild.setAutofillId(androidAutofill.c, intValue);
            newChild.setId(intValue, androidAutofill.a.getContext().getPackageName(), null, null);
            newChild.setAutofillType(((AndroidContentDataType) ContentDataType.Companion.b).a);
            throw null;
        }
    }
}
