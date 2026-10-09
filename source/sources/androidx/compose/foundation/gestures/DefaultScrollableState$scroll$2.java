package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
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
@DebugMetadata(c = "androidx.compose.foundation.gestures.DefaultScrollableState$scroll$2", f = "ScrollableState.kt", l = {208}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class DefaultScrollableState$scroll$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ DefaultScrollableState o;
    public final /* synthetic */ MutatePriority p;
    public final /* synthetic */ Function2 q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.gestures.DefaultScrollableState$scroll$2$1", f = "ScrollableState.kt", l = {211}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.gestures.DefaultScrollableState$scroll$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ DefaultScrollableState p;
        public final /* synthetic */ Function2 q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DefaultScrollableState defaultScrollableState, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.p = defaultScrollableState;
            this.q = function2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((ScrollScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, this.q, continuation);
            anonymousClass1.o = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            MutableState mutableState = this.p.d;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
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
                    ScrollScope scrollScope = (ScrollScope) this.o;
                    ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.TRUE);
                    Function2 function2 = this.q;
                    this.n = 1;
                    if (function2.n(scrollScope, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                mutableState = (SnapshotMutableStateImpl) mutableState;
                mutableState.setValue(Boolean.FALSE);
                return Unit.a;
            } catch (Throwable th) {
                ((SnapshotMutableStateImpl) mutableState).setValue(Boolean.FALSE);
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultScrollableState$scroll$2(DefaultScrollableState defaultScrollableState, MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.o = defaultScrollableState;
        this.p = mutatePriority;
        this.q = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DefaultScrollableState$scroll$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DefaultScrollableState$scroll$2(this.o, this.p, this.q, continuation);
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
            DefaultScrollableState defaultScrollableState = this.o;
            MutatorMutex mutatorMutex = defaultScrollableState.c;
            DefaultScrollableState$scrollScope$1 defaultScrollableState$scrollScope$1 = defaultScrollableState.b;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(defaultScrollableState, this.q, null);
            this.n = 1;
            if (mutatorMutex.c(defaultScrollableState$scrollScope$1, this.p, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
