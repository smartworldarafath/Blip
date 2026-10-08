package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.ui.platform.AndroidClipboardImpl;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.TextFieldValueKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$copy$1", f = "TextFieldSelectionManager.kt", l = {891}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$copy$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TextFieldSelectionManager o;
    public final /* synthetic */ boolean p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$copy$1(TextFieldSelectionManager textFieldSelectionManager, boolean z, Continuation continuation) {
        super(2, continuation);
        this.o = textFieldSelectionManager;
        this.p = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$copy$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$copy$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Clipboard clipboard;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        AnnotatedString annotatedString = null;
        Unit unit = Unit.a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return unit;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        TextFieldSelectionManager textFieldSelectionManager = this.o;
        if (!TextRange.c(textFieldSelectionManager.o().b)) {
            annotatedString = TextFieldValueKt.a(textFieldSelectionManager.o());
            if (this.p) {
                int e = TextRange.e(textFieldSelectionManager.o().b);
                textFieldSelectionManager.c.b(TextFieldSelectionManager.e(textFieldSelectionManager.o().a, TextRangeKt.a(e, e)));
                textFieldSelectionManager.r(HandleState.j);
            }
        }
        if (annotatedString != null && (clipboard = textFieldSelectionManager.g) != null) {
            ClipEntry b = ClipboardUtils_androidKt.b(annotatedString);
            this.n = 1;
            ((AndroidClipboardImpl) clipboard).a(b);
            if (unit == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return unit;
    }
}
