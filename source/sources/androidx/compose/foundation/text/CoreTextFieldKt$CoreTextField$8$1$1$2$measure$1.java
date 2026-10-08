package androidx.compose.foundation.text;

import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1", f = "CoreTextField.kt", l = {653}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TextFieldSelectionManager o;
    public final /* synthetic */ BringIntoViewRequester p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(TextFieldSelectionManager textFieldSelectionManager, BringIntoViewRequester bringIntoViewRequester, Continuation continuation) {
        super(2, continuation);
        this.o = textFieldSelectionManager;
        this.p = bringIntoViewRequester;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new CoreTextFieldKt$CoreTextField$8$1$1$2$measure$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        TextLayoutResultProxy textLayoutResultProxy = null;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            TextFieldSelectionManager textFieldSelectionManager = this.o;
            OffsetMapping offsetMapping = textFieldSelectionManager.b;
            long j = textFieldSelectionManager.o().b;
            int i2 = TextRange.c;
            int b = offsetMapping.b((int) (j >> 32));
            LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.d;
            if (legacyTextFieldState != null) {
                textLayoutResultProxy = legacyTextFieldState.d();
            }
            textLayoutResultProxy.getClass();
            TextLayoutResult textLayoutResult = textLayoutResultProxy.a;
            Rect c = textLayoutResult.c(RangesKt.d(b, 0, textLayoutResult.a.a.k.length()));
            this.n = 1;
            if (this.p.a(c, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
