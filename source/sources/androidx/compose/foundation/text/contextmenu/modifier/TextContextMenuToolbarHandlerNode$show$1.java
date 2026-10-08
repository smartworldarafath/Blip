package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode$show$1", f = "TextContextMenuToolbarHandlerModifier.kt", l = {205, 206, 208, 208}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerNode$show$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Throwable n;
    public int o;
    public final /* synthetic */ TextContextMenuToolbarHandlerNode p;
    public final /* synthetic */ TextContextMenuProvider q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextContextMenuToolbarHandlerNode$show$1(TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode, TextContextMenuProvider textContextMenuProvider, Continuation continuation) {
        super(2, continuation);
        this.p = textContextMenuToolbarHandlerNode;
        this.q = textContextMenuProvider;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TextContextMenuToolbarHandlerNode$show$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TextContextMenuToolbarHandlerNode$show$1(this.p, this.q, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0049, code lost:
    
        if (r9.a(r7, r8) == r0) goto L36;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Throwable th;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Unit unit = Unit.a;
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = this.p;
        try {
        } catch (Throwable th2) {
            Function1 function1 = textContextMenuToolbarHandlerNode.B;
            if (function1 != null) {
                this.n = th2;
                this.o = 4;
                function1.b(this);
                if (unit != coroutineSingletons) {
                    th = th2;
                }
            } else {
                throw th2;
            }
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        th = this.n;
                        ResultKt.b(obj);
                        throw th;
                    }
                    ResultKt.b(obj);
                    return unit;
                }
                ResultKt.b(obj);
                Function1 function12 = textContextMenuToolbarHandlerNode.B;
                if (function12 != null) {
                    this.o = 3;
                    function12.b(this);
                    if (unit == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return unit;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            Function1 function13 = textContextMenuToolbarHandlerNode.A;
            if (function13 != null) {
                this.o = 1;
                if (function13.b(this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        }
        TextContextMenuProvider textContextMenuProvider = this.q;
        this.o = 2;
    }
}
