package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {410, 412}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<? super View>, Continuation<? super Unit>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ View n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, Continuation continuation) {
        super(2, continuation);
        this.n = view;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ViewKt$allViews$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.n, continuation);
        viewKt$allViews$1.m = obj;
        return viewKt$allViews$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.l;
        View view = this.n;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                SequenceScope sequenceScope = (SequenceScope) this.m;
                ResultKt.b(obj);
                if (view instanceof ViewGroup) {
                    ViewGroupKt$special$$inlined$Sequence$1 viewGroupKt$special$$inlined$Sequence$1 = new ViewGroupKt$special$$inlined$Sequence$1((ViewGroup) view);
                    this.m = null;
                    this.l = 2;
                    if (sequenceScope.b(viewGroupKt$special$$inlined$Sequence$1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            return Unit.a;
        }
        ResultKt.b(obj);
        SequenceScope sequenceScope2 = (SequenceScope) this.m;
        this.m = sequenceScope2;
        this.l = 1;
        sequenceScope2.a(view, this);
        return coroutineSingletons;
    }
}
