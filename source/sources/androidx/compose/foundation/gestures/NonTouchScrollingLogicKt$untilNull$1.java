package androidx.compose.foundation.gestures;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$untilNull$1", f = "NonTouchScrollingLogic.kt", l = {89}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class NonTouchScrollingLogicKt$untilNull$1 extends RestrictedSuspendLambda implements Function2<SequenceScope<Object>, Continuation<? super Unit>, Object> {
    public Object l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ Function0 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonTouchScrollingLogicKt$untilNull$1(Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.o = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NonTouchScrollingLogicKt$untilNull$1) s((SequenceScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NonTouchScrollingLogicKt$untilNull$1 nonTouchScrollingLogicKt$untilNull$1 = new NonTouchScrollingLogicKt$untilNull$1(this.o, continuation);
        nonTouchScrollingLogicKt$untilNull$1.n = obj;
        return nonTouchScrollingLogicKt$untilNull$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:5:0x0037). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        SequenceScope sequenceScope;
        Object a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.m;
        if (i != 0) {
            if (i == 1) {
                Object obj2 = this.l;
                sequenceScope = (SequenceScope) this.n;
                ResultKt.b(obj);
                if (obj2 == null) {
                    return Unit.a;
                }
                a = this.o.a();
                if (a != null) {
                    this.n = sequenceScope;
                    this.l = a;
                    this.m = 1;
                    sequenceScope.a(a, this);
                    CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
                    return coroutineSingletons;
                }
                obj2 = null;
                if (obj2 == null) {
                }
                a = this.o.a();
                if (a != null) {
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            sequenceScope = (SequenceScope) this.n;
            a = this.o.a();
            if (a != null) {
            }
        }
    }
}
