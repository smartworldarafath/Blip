package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.ma;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutSemanticsModifierNode extends Modifier.Node implements SemanticsModifierNode {
    public boolean A;
    public ScrollAxisRange B;
    public final e C = new e(this, 0);
    public e D;
    public Function0 x;
    public LazyLayoutSemanticState y;
    public Orientation z;

    public LazyLayoutSemanticsModifierNode(Function0 function0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        this.x = function0;
        this.y = lazyLayoutSemanticState;
        this.z = orientation;
        this.A = z;
        Y0();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.n;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
        KProperty kProperty = kPropertyArr2[6];
        Boolean bool = Boolean.TRUE;
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey, bool);
        semanticsPropertyReceiver.b(SemanticsProperties.P, this.C);
        Orientation orientation = this.z;
        Orientation orientation2 = Orientation.j;
        ScrollAxisRange scrollAxisRange = this.B;
        if (orientation == orientation2) {
            if (scrollAxisRange != null) {
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.w;
                KProperty kProperty2 = kPropertyArr2[13];
                semanticsPropertyKey2.getClass();
                semanticsPropertyReceiver.b(semanticsPropertyKey2, scrollAxisRange);
            } else {
                Intrinsics.e("scrollAxisRange");
                throw null;
            }
        } else if (scrollAxisRange != null) {
            SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.v;
            KProperty kProperty3 = kPropertyArr2[12];
            semanticsPropertyKey3.getClass();
            semanticsPropertyReceiver.b(semanticsPropertyKey3, scrollAxisRange);
        } else {
            Intrinsics.e("scrollAxisRange");
            throw null;
        }
        e eVar = this.D;
        if (eVar != null) {
            semanticsPropertyReceiver.b(SemanticsActions.f, new AccessibilityAction(null, eVar));
        }
        semanticsPropertyReceiver.b(SemanticsActions.C, new AccessibilityAction(null, new ma(21, new f(this, 2))));
        CollectionInfo f = this.y.f();
        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.f;
        KProperty kProperty4 = kPropertyArr2[24];
        semanticsPropertyKey4.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey4, f);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    public final void Y0() {
        e eVar;
        this.B = new ScrollAxisRange(new f(this, 0), new f(this, 1));
        if (this.A) {
            eVar = new e(this, 1);
        } else {
            eVar = null;
        }
        this.D = eVar;
    }
}
