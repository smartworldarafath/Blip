package defpackage;

import android.view.autofill.AutofillValue;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class y6 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ CoreTextFieldSemanticsModifierNode k;

    public /* synthetic */ y6(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        this.j = 3;
        this.k = coreTextFieldSemanticsModifierNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        CharSequence charSequence = null;
        StringBuilder sb = null;
        boolean z = true;
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.k;
        switch (i) {
            case 0:
                MutableState mutableState = coreTextFieldSemanticsModifierNode.B.t;
                Boolean bool = Boolean.TRUE;
                ((SnapshotMutableStateImpl) mutableState).setValue(bool);
                ((SnapshotMutableStateImpl) coreTextFieldSemanticsModifierNode.B.s).setValue(bool);
                LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.B;
                AutofillValue autofillValue = ((AndroidFillableData) ((FillableData) obj)).a;
                if (autofillValue.isText()) {
                    charSequence = autofillValue.getTextValue();
                }
                charSequence.getClass();
                CoreTextFieldSemanticsModifierNode.b1(legacyTextFieldState, (String) charSequence, coreTextFieldSemanticsModifierNode.C);
                return bool;
            case 1:
                List list = (List) obj;
                if (coreTextFieldSemanticsModifierNode.B.d() != null) {
                    TextLayoutResultProxy d = coreTextFieldSemanticsModifierNode.B.d();
                    d.getClass();
                    list.add(d.a);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                CoreTextFieldSemanticsModifierNode.b1(coreTextFieldSemanticsModifierNode.B, ((AnnotatedString) obj).k, coreTextFieldSemanticsModifierNode.C);
                return Boolean.TRUE;
            default:
                AnnotatedString annotatedString = (AnnotatedString) obj;
                if (!coreTextFieldSemanticsModifierNode.C) {
                    z = false;
                } else {
                    TextInputSession textInputSession = coreTextFieldSemanticsModifierNode.B.e;
                    if (textInputSession != null) {
                        List C = CollectionsKt.C(new Object(), new CommitTextCommand(annotatedString, 1));
                        LegacyTextFieldState legacyTextFieldState2 = coreTextFieldSemanticsModifierNode.B;
                        EditProcessor editProcessor = legacyTextFieldState2.d;
                        t6 t6Var = legacyTextFieldState2.v;
                        TextFieldValue a = editProcessor.a(C);
                        if (Intrinsics.a((TextInputSession) textInputSession.a.b.get(), textInputSession)) {
                            textInputSession.b.f(null, a);
                        }
                        t6Var.b(a);
                    } else {
                        TextFieldValue textFieldValue = coreTextFieldSemanticsModifierNode.A;
                        String str = textFieldValue.a.k;
                        long j = textFieldValue.b;
                        int i2 = TextRange.c;
                        int i3 = (int) (j >> 32);
                        int i4 = (int) (j & 4294967295L);
                        str.getClass();
                        annotatedString.getClass();
                        if (i4 >= i3) {
                            sb = new StringBuilder();
                            sb.append((CharSequence) str, 0, i3);
                            sb.append((CharSequence) annotatedString);
                            sb.append((CharSequence) str, i4, str.length());
                        } else {
                            u2.o(jb.e("End index (", i4, ") is less than start index (", i3, ")."));
                        }
                        String obj2 = sb.toString();
                        int length = annotatedString.k.length() + ((int) (coreTextFieldSemanticsModifierNode.A.b >> 32));
                        coreTextFieldSemanticsModifierNode.B.v.b(new TextFieldValue(4, TextRangeKt.a(length, length), obj2));
                    }
                }
                return Boolean.valueOf(z);
        }
    }

    public /* synthetic */ y6(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, int i) {
        this.j = i;
        this.k = coreTextFieldSemanticsModifierNode;
    }
}
