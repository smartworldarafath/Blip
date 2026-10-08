package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import defpackage.o1;
import defpackage.p2;
import defpackage.t6;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$5$1", f = "CoreTextField.kt", l = {367}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class CoreTextFieldKt$CoreTextField$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ LegacyTextFieldState o;
    public final /* synthetic */ MutableState p;
    public final /* synthetic */ TextInputService q;
    public final /* synthetic */ TextFieldSelectionManager r;
    public final /* synthetic */ ImeOptions s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoreTextFieldKt$CoreTextField$5$1(LegacyTextFieldState legacyTextFieldState, MutableState mutableState, TextInputService textInputService, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, Continuation continuation) {
        super(2, continuation);
        this.o = legacyTextFieldState;
        this.p = mutableState;
        this.q = textInputService;
        this.r = textFieldSelectionManager;
        this.s = imeOptions;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CoreTextFieldKt$CoreTextField$5$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new CoreTextFieldKt$CoreTextField$5$1(this.o, this.p, this.q, this.r, this.s, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        final LegacyTextFieldState legacyTextFieldState = this.o;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                Flow l = SnapshotStateKt.l(new o1(this.p, 6));
                final TextInputService textInputService = this.q;
                final TextFieldSelectionManager textFieldSelectionManager = this.r;
                final ImeOptions imeOptions = this.s;
                FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$5$1.2
                    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object r(Object obj2, Continuation continuation) {
                        boolean booleanValue = ((Boolean) obj2).booleanValue();
                        LegacyTextFieldState legacyTextFieldState2 = LegacyTextFieldState.this;
                        if (booleanValue && legacyTextFieldState2.b()) {
                            TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                            TextFieldValue o = textFieldSelectionManager2.o();
                            OffsetMapping offsetMapping = textFieldSelectionManager2.b;
                            EditProcessor editProcessor = legacyTextFieldState2.d;
                            t6 t6Var = legacyTextFieldState2.v;
                            t6 t6Var2 = legacyTextFieldState2.w;
                            ?? obj3 = new Object();
                            p2 p2Var = new p2(editProcessor, t6Var, (Object) obj3, 17);
                            TextInputService textInputService2 = textInputService;
                            PlatformTextInputService platformTextInputService = textInputService2.a;
                            platformTextInputService.c(o, imeOptions, p2Var, t6Var2);
                            TextInputSession textInputSession = new TextInputSession(textInputService2, platformTextInputService);
                            textInputService2.b.set(textInputSession);
                            obj3.j = textInputSession;
                            legacyTextFieldState2.e = textInputSession;
                            CoreTextFieldKt.f(legacyTextFieldState2, o, offsetMapping);
                        } else {
                            CoreTextFieldKt.e(legacyTextFieldState2);
                        }
                        return Unit.a;
                    }
                };
                this.n = 1;
                if (((AbstractFlow) l).a(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            CoreTextFieldKt.e(legacyTextFieldState);
            return Unit.a;
        } catch (Throwable th) {
            CoreTextFieldKt.e(legacyTextFieldState);
            throw th;
        }
    }
}
