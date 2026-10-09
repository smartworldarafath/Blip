package androidx.compose.foundation;

import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.CombinedClickableNode$handleDownEvent$2", f = "Clickable.kt", l = {1266}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class CombinedClickableNode$handleDownEvent$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ CombinedClickableNode o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombinedClickableNode$handleDownEvent$2(CombinedClickableNode combinedClickableNode, Continuation continuation) {
        super(2, continuation);
        this.o = combinedClickableNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CombinedClickableNode$handleDownEvent$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new CombinedClickableNode$handleDownEvent$2(this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        CombinedClickableNode combinedClickableNode = this.o;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            long b = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(combinedClickableNode, CompositionLocalsKt.t)).b();
            this.n = 1;
            if (DelayKt.b(b, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        Function0 function0 = combinedClickableNode.T;
        if (function0 != null) {
            function0.a();
        }
        if (combinedClickableNode.U) {
            ((PlatformHapticFeedback) ((HapticFeedback) CompositionLocalConsumerModifierNodeKt.a(combinedClickableNode, CompositionLocalsKt.l))).a(0);
        }
        combinedClickableNode.i0 = true;
        Job job = combinedClickableNode.g0;
        if (job != null) {
            ((JobSupport) job).n(null);
        }
        combinedClickableNode.g0 = null;
        combinedClickableNode.f0 = null;
        return Unit.a;
    }
}
