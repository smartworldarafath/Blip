package androidx.compose.foundation.text.selection;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3", f = "TextFieldSelectionManager.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$contextMenuAreaModifier$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public final /* synthetic */ TextFieldSelectionManager n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$contextMenuAreaModifier$3(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(1, continuation);
        this.n = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        TextFieldSelectionManager$contextMenuAreaModifier$3 textFieldSelectionManager$contextMenuAreaModifier$3 = new TextFieldSelectionManager$contextMenuAreaModifier$3(this.n, (Continuation) obj);
        Unit unit = Unit.a;
        textFieldSelectionManager$contextMenuAreaModifier$3.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        this.n.A = false;
        return Unit.a;
    }
}
