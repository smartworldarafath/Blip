package androidx.compose.ui.autofill;

import android.graphics.Rect;
import android.view.autofill.AutofillId;
import androidx.collection.MutableIntSet;
import androidx.compose.ui.focus.FocusListener;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsListener;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.spatial.RectList;
import androidx.compose.ui.spatial.RectManager;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidAutofillManager extends AutofillManager implements SemanticsListener, FocusListener {
    public final PlatformAutofillManagerImpl j;
    public final SemanticsOwner k;
    public final AndroidComposeView l;
    public final RectManager m;
    public final String n;
    public final Rect o = new Rect();
    public final AutofillId p;
    public final MutableIntSet q;
    public boolean r;

    public AndroidAutofillManager(PlatformAutofillManagerImpl platformAutofillManagerImpl, SemanticsOwner semanticsOwner, AndroidComposeView androidComposeView, RectManager rectManager, String str) {
        this.j = platformAutofillManagerImpl;
        this.k = semanticsOwner;
        this.l = androidComposeView;
        this.m = rectManager;
        this.n = str;
        androidComposeView.setImportantForAutofill(1);
        AutofillId autofillId = androidComposeView.getAutofillId();
        if (autofillId != null) {
            this.p = autofillId;
            this.q = new MutableIntSet();
            return;
        }
        throw q.p("Required value was null.");
    }

    @Override // androidx.compose.ui.focus.FocusListener
    public final void a(FocusTargetModifierNode focusTargetModifierNode, FocusTargetNode focusTargetNode) {
        LayoutNode g;
        SemanticsConfiguration y;
        LayoutNode g2;
        SemanticsConfiguration y2;
        AndroidComposeView androidComposeView = this.l;
        PlatformAutofillManagerImpl platformAutofillManagerImpl = this.j;
        if (focusTargetModifierNode != null && (g2 = DelegatableNodeKt.g(focusTargetModifierNode)) != null && (y2 = g2.y()) != null && AndroidAutofillManager_androidKt.a(y2)) {
            platformAutofillManagerImpl.a().notifyViewExited(androidComposeView, g2.k);
        }
        if (focusTargetNode != null && (g = DelegatableNodeKt.g(focusTargetNode)) != null && (y = g.y()) != null && AndroidAutofillManager_androidKt.a(y)) {
            int i = g.k;
            RectManager rectManager = this.m;
            LayoutNode layoutNode = (LayoutNode) rectManager.a.b(i);
            if (layoutNode != null && layoutNode.p != -4) {
                RectList rectList = rectManager.c;
                int e = rectManager.e(layoutNode);
                long[] jArr = rectList.a;
                long j = jArr[e];
                long j2 = jArr[e + 1];
                platformAutofillManagerImpl.a().notifyViewEntered(androidComposeView, i, new Rect((int) (j >> 32), (int) j, (int) (j2 >> 32), (int) j2));
            }
        }
    }
}
