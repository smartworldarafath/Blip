package androidx.compose.foundation.text;

import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1", f = "CoreTextField.kt", l = {350}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ BringIntoViewRequester o;
    public final /* synthetic */ TextFieldValue p;
    public final /* synthetic */ LegacyTextFieldState q;
    public final /* synthetic */ TextLayoutResultProxy r;
    public final /* synthetic */ OffsetMapping s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(BringIntoViewRequester bringIntoViewRequester, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, TextLayoutResultProxy textLayoutResultProxy, OffsetMapping offsetMapping, Continuation continuation) {
        super(2, continuation);
        this.o = bringIntoViewRequester;
        this.p = textFieldValue;
        this.q = legacyTextFieldState;
        this.r = textLayoutResultProxy;
        this.s = offsetMapping;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1$1(this.o, this.p, this.q, this.r, this.s, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Rect rect;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
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
        TextDelegate textDelegate = this.q.a;
        TextLayoutResult textLayoutResult = this.r.a;
        this.n = 1;
        int b = this.s.b(TextRange.e(this.p.b));
        if (b < textLayoutResult.a.a.k.length()) {
            rect = textLayoutResult.b(b);
        } else if (b != 0) {
            rect = textLayoutResult.b(b - 1);
        } else {
            rect = new Rect(0.0f, 0.0f, 1.0f, (int) (TextFieldDelegateKt.a(textDelegate.b, textDelegate.g, textDelegate.h) & 4294967295L));
        }
        Object a = this.o.a(rect, this);
        if (a != coroutineSingletons) {
            a = unit;
        }
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return unit;
    }
}
