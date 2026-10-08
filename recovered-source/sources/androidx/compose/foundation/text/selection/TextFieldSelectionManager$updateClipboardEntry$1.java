package androidx.compose.foundation.text.selection;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager", f = "TextFieldSelectionManager.kt", l = {827}, m = "updateClipboardEntry$foundation", v = 1)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$updateClipboardEntry$1 extends ContinuationImpl {
    public TextFieldSelectionManager m;
    public /* synthetic */ Object n;
    public final /* synthetic */ TextFieldSelectionManager o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$updateClipboardEntry$1(TextFieldSelectionManager textFieldSelectionManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.t(this);
    }
}
