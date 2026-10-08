package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.AbstractClickableNode$onPointerEvent$1", f = "Clickable.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AbstractClickableNode$onPointerEvent$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ AbstractClickableNode n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractClickableNode$onPointerEvent$1(AbstractClickableNode abstractClickableNode, Continuation continuation) {
        super(2, continuation);
        this.n = abstractClickableNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        AbstractClickableNode$onPointerEvent$1 abstractClickableNode$onPointerEvent$1 = (AbstractClickableNode$onPointerEvent$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        abstractClickableNode$onPointerEvent$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new AbstractClickableNode$onPointerEvent$1(this.n, continuation);
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, androidx.compose.foundation.interaction.HoverInteraction$Enter] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        AbstractClickableNode abstractClickableNode = this.n;
        if (abstractClickableNode.M == null) {
            ?? obj2 = new Object();
            MutableInteractionSource mutableInteractionSource = abstractClickableNode.z;
            if (mutableInteractionSource != null) {
                BuildersKt.c(abstractClickableNode.M0(), null, null, new AbstractClickableNode$emitHoverEnter$1$1(mutableInteractionSource, obj2, null), 3);
            }
            abstractClickableNode.M = obj2;
        }
        return Unit.a;
    }
}
