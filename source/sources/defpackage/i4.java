package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i4 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ TextLinkScope k;

    public /* synthetic */ i4(TextLinkScope textLinkScope, int i) {
        this.j = i;
        this.k = textLinkScope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        AnnotatedString annotatedString;
        TextLayoutInput textLayoutInput;
        int i = this.j;
        boolean z = false;
        int i2 = 2;
        TextLinkScope textLinkScope = this.k;
        switch (i) {
            case 0:
                if (textLinkScope != null) {
                    z = ((Boolean) new i4(textLinkScope, i2).a()).booleanValue();
                }
                return Boolean.valueOf(z);
            case 1:
                if (textLinkScope != null) {
                    z = ((Boolean) new i4(textLinkScope, i2).a()).booleanValue();
                }
                return Boolean.valueOf(z);
            default:
                AnnotatedString annotatedString2 = textLinkScope.b;
                TextLayoutResult textLayoutResult = (TextLayoutResult) ((SnapshotMutableStateImpl) textLinkScope.a).getValue();
                if (textLayoutResult != null && (textLayoutInput = textLayoutResult.a) != null) {
                    annotatedString = textLayoutInput.a;
                } else {
                    annotatedString = null;
                }
                return Boolean.valueOf(Intrinsics.a(annotatedString2, annotatedString));
        }
    }
}
