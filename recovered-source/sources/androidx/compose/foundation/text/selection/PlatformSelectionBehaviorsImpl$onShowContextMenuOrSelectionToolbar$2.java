package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassifier;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2", f = "PlatformSelectionBehaviors.android.kt", l = {174}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2 extends SuspendLambda implements Function2<TextClassifier, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl p;
    public final /* synthetic */ CharSequence q;
    public final /* synthetic */ long r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(long j, PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, CharSequence charSequence, Continuation continuation) {
        super(2, continuation);
        this.p = platformSelectionBehaviorsImpl;
        this.q = charSequence;
        this.r = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2) s((TextClassifier) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2 platformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2 = new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(this.r, this.p, this.q, continuation);
        platformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2.o = obj;
        return platformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            TextClassifier textClassifier = (TextClassifier) this.o;
            this.n = 1;
            if (PlatformSelectionBehaviorsImpl.a(this.p, this.q, this.r, textClassifier, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
