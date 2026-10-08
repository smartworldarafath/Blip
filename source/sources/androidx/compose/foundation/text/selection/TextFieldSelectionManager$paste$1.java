package androidx.compose.foundation.text.selection;

import android.content.ClipData;
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
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$paste$1", f = "TextFieldSelectionManager.kt", l = {928, 928}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$paste$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TextFieldSelectionManager o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$paste$1(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(2, continuation);
        this.o = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$paste$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$paste$1(this.o, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004b, code lost:
    
        if (r8 == r0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        if (r8 == r0) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        TextFieldSelectionManager textFieldSelectionManager = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    AnnotatedString annotatedString = (AnnotatedString) obj;
                    if (annotatedString != null && textFieldSelectionManager.k()) {
                        AnnotatedString.Builder builder = new AnnotatedString.Builder(TextFieldValueKt.c(textFieldSelectionManager.o(), textFieldSelectionManager.o().a.k.length()));
                        builder.b(annotatedString);
                        AnnotatedString e = builder.e();
                        AnnotatedString b = TextFieldValueKt.b(textFieldSelectionManager.o(), textFieldSelectionManager.o().a.k.length());
                        AnnotatedString.Builder builder2 = new AnnotatedString.Builder(e);
                        builder2.b(b);
                        AnnotatedString e2 = builder2.e();
                        int length = annotatedString.k.length() + TextRange.f(textFieldSelectionManager.o().b);
                        textFieldSelectionManager.c.b(TextFieldSelectionManager.e(e2, TextRangeKt.a(length, length)));
                        textFieldSelectionManager.r(HandleState.j);
                        textFieldSelectionManager.a.e = true;
                    }
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            Clipboard clipboard = textFieldSelectionManager.g;
            if (clipboard != null) {
                this.n = 1;
                ClipData primaryClip = ((AndroidClipboardImpl) clipboard).a.a().getPrimaryClip();
                if (primaryClip != null) {
                    obj = new ClipEntry(primaryClip);
                } else {
                    obj = null;
                }
            }
            return unit;
        }
        ClipEntry clipEntry = (ClipEntry) obj;
        if (clipEntry != null) {
            this.n = 2;
            obj = ClipboardUtils_androidKt.a(clipEntry);
        }
        return unit;
    }
}
