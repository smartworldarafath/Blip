package androidx.compose.foundation.selection;

import android.view.autofill.AutofillValue;
import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import defpackage.lh;
import defpackage.q6;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToggleableNode extends ClickableNode {
    public boolean V;
    public Function1 W;
    public final a X;

    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.foundation.selection.a] */
    public ToggleableNode(boolean z, MutableInteractionSource mutableInteractionSource, Role role, Function1 function1) {
        super(mutableInteractionSource, null, false, true, null, role, new q6(function1, z));
        this.V = z;
        this.W = function1;
        this.X = new Function0() { // from class: androidx.compose.foundation.selection.a
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                ToggleableNode.this.W.b(Boolean.valueOf(!r1.V));
                return Unit.a;
            }
        };
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void b1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        ToggleableState toggleableState;
        if (this.V) {
            toggleableState = ToggleableState.j;
        } else {
            toggleableState = ToggleableState.k;
        }
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.L;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
        KProperty kProperty = kPropertyArr2[26];
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey, toggleableState);
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.s;
        KProperty kProperty2 = kPropertyArr2[9];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey2, ContentDataType.Companion.c);
        AndroidFillableData androidFillableData = new AndroidFillableData(AutofillValue.forToggle(this.V));
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.t;
        KProperty kProperty3 = kPropertyArr2[10];
        semanticsPropertyKey3.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey3, androidFillableData);
        semanticsPropertyReceiver.b(SemanticsActions.h, new AccessibilityAction(null, new lh(0, semanticsPropertyReceiver)));
    }
}
