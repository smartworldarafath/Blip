package androidx.compose.ui.platform;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeView extends AbstractComposeView {
    public static final /* synthetic */ int v = 0;
    public final MutableState t;
    public boolean u;

    public ComposeView(Context context) {
        super(context);
        this.t = SnapshotStateKt.g(null);
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public final void a(int i, Composer composer) {
        int i2;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(420213850);
        if (gapComposer.h(this)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            Function2 function2 = (Function2) ((SnapshotMutableStateImpl) this.t).getValue();
            if (function2 == null) {
                gapComposer.W(-1238823553);
            } else {
                gapComposer.W(98585282);
                function2.n(gapComposer, 0);
            }
            gapComposer.p(false);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new defpackage.d(i, 3, this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.compose.ui.platform.ComposeView";
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.u;
    }

    public final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.u = true;
        ((SnapshotMutableStateImpl) this.t).setValue(function2);
        if (!isAttachedToWindow() && getComposeViewContext$ui() == null) {
            return;
        }
        d();
    }

    public static /* synthetic */ void getShouldCreateCompositionOnAttachedToWindow$annotations() {
    }
}
