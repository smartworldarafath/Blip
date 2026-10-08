package androidx.compose.foundation.text.input.internal;

import android.view.autofill.AutofillValue;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.AutofillUtils_androidKt;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import defpackage.b0;
import defpackage.t6;
import defpackage.x6;
import defpackage.y6;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CoreTextFieldSemanticsModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public TextFieldValue A;
    public LegacyTextFieldState B;
    public boolean C;
    public OffsetMapping D;
    public TextFieldSelectionManager E;
    public ImeOptions F;
    public FocusRequester G;
    public TransformedText z;

    /* JADX WARN: Multi-variable type inference failed */
    public static void b1(LegacyTextFieldState legacyTextFieldState, String str, boolean z) {
        if (!z) {
            return;
        }
        TextInputSession textInputSession = legacyTextFieldState.e;
        t6 t6Var = legacyTextFieldState.v;
        if (textInputSession != null) {
            TextFieldValue a = legacyTextFieldState.d.a(CollectionsKt.C(new Object(), new CommitTextCommand(str, 1)));
            if (Intrinsics.a((TextInputSession) textInputSession.a.b.get(), textInputSession)) {
                textInputSession.b.f(null, a);
            }
            t6Var.b(a);
            return;
        }
        int length = str.length();
        t6Var.b(new TextFieldValue(4, TextRangeKt.a(length, length), str));
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        AnnotatedString annotatedString = this.A.a;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.F;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
        KProperty kProperty = kPropertyArr2[18];
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey, annotatedString);
        AnnotatedString annotatedString2 = this.z.a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.G;
        KProperty kProperty2 = kPropertyArr2[19];
        semanticsPropertyKey2.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey2, annotatedString2);
        long j = this.A.b;
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.H;
        KProperty kProperty3 = kPropertyArr2[20];
        TextRange textRange = new TextRange(j);
        semanticsPropertyKey3.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey3, textRange);
        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.s;
        KProperty kProperty4 = kPropertyArr2[9];
        semanticsPropertyKey4.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey4, ContentDataType.Companion.b);
        AndroidFillableData androidFillableData = new AndroidFillableData(AutofillValue.forText(AutofillUtils_androidKt.a(this.A.a)));
        SemanticsPropertyKey semanticsPropertyKey5 = SemanticsProperties.t;
        KProperty kProperty5 = kPropertyArr2[10];
        semanticsPropertyKey5.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey5, androidFillableData);
        semanticsPropertyReceiver.b(SemanticsActions.h, new AccessibilityAction(null, new y6(this, 0)));
        int i = this.F.d;
        if (i == 6) {
            ContentType.a.getClass();
            SemanticsPropertiesKt.b(semanticsPropertyReceiver, ContentType.Companion.c);
        } else if (i == 7 || i == 8) {
            ContentType.a.getClass();
            SemanticsPropertiesKt.b(semanticsPropertyReceiver, ContentType.Companion.b);
        } else if (i == 4) {
            ContentType.a.getClass();
            SemanticsPropertiesKt.b(semanticsPropertyReceiver, ContentType.Companion.d);
        }
        if (!this.C) {
            semanticsPropertyReceiver.b(SemanticsProperties.j, Unit.a);
        }
        boolean z = this.C;
        SemanticsPropertyKey semanticsPropertyKey6 = SemanticsProperties.Q;
        KProperty kProperty6 = kPropertyArr2[28];
        Boolean valueOf = Boolean.valueOf(z);
        semanticsPropertyKey6.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey6, valueOf);
        SemanticsPropertiesKt.a(semanticsPropertyReceiver, new y6(this, 1));
        if (z) {
            semanticsPropertyReceiver.b(SemanticsActions.k, new AccessibilityAction(null, new y6(this, 2)));
            semanticsPropertyReceiver.b(SemanticsActions.o, new AccessibilityAction(null, new y6(this, semanticsPropertyReceiver)));
        }
        semanticsPropertyReceiver.b(SemanticsActions.j, new AccessibilityAction(null, new b0(3, this)));
        int i2 = this.F.e;
        x6 x6Var = new x6(this, 6);
        semanticsPropertyReceiver.b(SemanticsProperties.J, new ImeAction(i2));
        semanticsPropertyReceiver.b(SemanticsActions.p, new AccessibilityAction(null, x6Var));
        semanticsPropertyReceiver.b(SemanticsActions.b, new AccessibilityAction(null, new x6(this, 7)));
        semanticsPropertyReceiver.b(SemanticsActions.c, new AccessibilityAction(null, new x6(this, 1)));
        if (!TextRange.c(this.A.b)) {
            semanticsPropertyReceiver.b(SemanticsActions.q, new AccessibilityAction(null, new x6(this, 2)));
            if (this.C) {
                semanticsPropertyReceiver.b(SemanticsActions.r, new AccessibilityAction(null, new x6(this, 3)));
            }
        }
        if (this.C) {
            semanticsPropertyReceiver.b(SemanticsActions.s, new AccessibilityAction(null, new x6(this, 5)));
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean J0() {
        return true;
    }
}
