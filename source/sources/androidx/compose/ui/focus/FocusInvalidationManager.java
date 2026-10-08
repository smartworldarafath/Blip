package androidx.compose.ui.focus;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.platform.AndroidComposeView;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusInvalidationManager {
    public final FocusOwnerImpl a;
    public final AndroidComposeView b;
    public final MutableScatterSet c;
    public final MutableScatterSet d;
    public boolean e;

    public FocusInvalidationManager(FocusOwnerImpl focusOwnerImpl, AndroidComposeView androidComposeView) {
        this.a = focusOwnerImpl;
        this.b = androidComposeView;
        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
        this.c = new MutableScatterSet();
        this.d = new MutableScatterSet();
    }

    public final void a() {
        if (!this.e) {
            FunctionReference functionReference = new FunctionReference(0, this, FocusInvalidationManager.class, "invalidateNodes", "invalidateNodes()V", 0);
            MutableObjectList mutableObjectList = this.b.z0;
            if (mutableObjectList.c(functionReference) < 0) {
                mutableObjectList.g(functionReference);
            }
            this.e = true;
        }
    }
}
