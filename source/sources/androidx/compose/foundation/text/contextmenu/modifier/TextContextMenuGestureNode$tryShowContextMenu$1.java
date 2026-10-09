package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.ui.geometry.Offset;
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
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode$tryShowContextMenu$1", f = "TextContextMenuGesturesModifier.kt", l = {107, 108}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class TextContextMenuGestureNode$tryShowContextMenu$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TextContextMenuGestureNode o;
    public final /* synthetic */ long p;
    public final /* synthetic */ TextContextMenuProvider q;
    public final /* synthetic */ TextContextMenuGestureNode.ClickTextContextMenuDataProvider r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextContextMenuGestureNode$tryShowContextMenu$1(TextContextMenuGestureNode textContextMenuGestureNode, long j, TextContextMenuProvider textContextMenuProvider, TextContextMenuGestureNode.ClickTextContextMenuDataProvider clickTextContextMenuDataProvider, Continuation continuation) {
        super(2, continuation);
        this.o = textContextMenuGestureNode;
        this.p = j;
        this.q = textContextMenuProvider;
        this.r = clickTextContextMenuDataProvider;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TextContextMenuGestureNode$tryShowContextMenu$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TextContextMenuGestureNode$tryShowContextMenu$1(this.o, this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
    
        if (r6.q.a(r6.r, r6) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        if (r7.n(r1, r6) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            Function2 function2 = this.o.z;
            if (function2 != null) {
                Offset offset = new Offset(this.p);
                this.n = 1;
            }
        }
        this.n = 2;
    }
}
