package androidx.compose.runtime;

import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.p;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", l = {1081}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class Recomposer$recompositionRunner$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public p n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Recomposer q;
    public final /* synthetic */ Function3 r;
    public final /* synthetic */ MonotonicFrameClock s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$2", f = "Recomposer.kt", l = {1081}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ Function3 p;
        public final /* synthetic */ MonotonicFrameClock q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Function3 function3, MonotonicFrameClock monotonicFrameClock, Continuation continuation) {
            super(2, continuation);
            this.p = function3;
            this.q = monotonicFrameClock;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.p, this.q, continuation);
            anonymousClass2.o = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.o;
            this.n = 1;
            ((Recomposer$runRecomposeAndApplyChanges$2) this.p).f(coroutineScope, this.q, this);
            return coroutineSingletons;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$recompositionRunner$2(Recomposer recomposer, Function3 function3, MonotonicFrameClock monotonicFrameClock, Continuation continuation) {
        super(2, continuation);
        this.q = recomposer;
        this.r = function3;
        this.s = monotonicFrameClock;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((Recomposer$recompositionRunner$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        Recomposer$recompositionRunner$2 recomposer$recompositionRunner$2 = new Recomposer$recompositionRunner$2(this.q, this.r, this.s, continuation);
        recomposer$recompositionRunner$2.p = obj;
        return recomposer$recompositionRunner$2;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x015a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Job d;
        MutableStateFlow mutableStateFlow;
        PersistentSet persistentSet;
        PersistentOrderedSet persistentOrderedSet;
        p pVar;
        Throwable th;
        List E;
        RecomposeScope recomposeScope;
        RecomposeScopeImpl recomposeScopeImpl;
        RecomposeScopeOwner recomposeScopeOwner;
        Recomposer recomposer;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i == 1) {
                pVar = this.n;
                d = (Job) this.p;
                try {
                    ResultKt.b(obj);
                } catch (Throwable th2) {
                    th = th2;
                    pVar.a();
                    recomposer = this.q;
                    synchronized (recomposer.c) {
                        try {
                            if (recomposer.d == d) {
                                recomposer.d = null;
                            }
                            if (recomposer.y() != null) {
                                ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    MutableStateFlow mutableStateFlow2 = Recomposer.z;
                    Recomposer.Companion.a(this.q.y);
                    throw th;
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            d = JobKt.d(((CoroutineScope) this.p).getCoroutineContext());
            Recomposer recomposer2 = this.q;
            synchronized (recomposer2.c) {
                Throwable th4 = recomposer2.e;
                if (th4 == null) {
                    if (((Recomposer.State) recomposer2.u.getValue()).compareTo(Recomposer.State.k) > 0) {
                        if (recomposer2.d == null) {
                            recomposer2.d = d;
                            if (recomposer2.y() != null) {
                                ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                            }
                        } else {
                            throw new IllegalStateException("Recomposer already running");
                        }
                    } else {
                        throw new IllegalStateException("Recomposer shut down");
                    }
                } else {
                    throw th4;
                }
            }
            p d2 = Snapshot.Companion.d(new defpackage.d(17, this.q));
            MutableStateFlow mutableStateFlow3 = Recomposer.z;
            Recomposer.RecomposerInfoImpl recomposerInfoImpl = this.q.y;
            try {
                do {
                    mutableStateFlow = Recomposer.z;
                    persistentSet = (PersistentSet) mutableStateFlow.getValue();
                    persistentOrderedSet = (PersistentOrderedSet) persistentSet;
                    EndOfChain endOfChain = EndOfChain.a;
                    PersistentHashMap persistentHashMap = persistentOrderedSet.l;
                    if (!persistentHashMap.containsKey(recomposerInfoImpl)) {
                        if (persistentOrderedSet.isEmpty()) {
                            persistentOrderedSet = new PersistentOrderedSet(recomposerInfoImpl, recomposerInfoImpl, persistentHashMap.a(recomposerInfoImpl, new Links(endOfChain, endOfChain)));
                        } else {
                            Object obj2 = persistentOrderedSet.k;
                            Object obj3 = persistentHashMap.get(obj2);
                            obj3.getClass();
                            persistentOrderedSet = new PersistentOrderedSet(persistentOrderedSet.j, recomposerInfoImpl, persistentHashMap.a(obj2, new Links(((Links) obj3).a, recomposerInfoImpl)).a(recomposerInfoImpl, new Links(obj2, endOfChain)));
                        }
                    }
                    if (persistentSet != persistentOrderedSet) {
                    }
                    break;
                } while (!mutableStateFlow.e(persistentSet, persistentOrderedSet));
                break;
                Recomposer recomposer3 = this.q;
                synchronized (recomposer3.c) {
                    E = recomposer3.E();
                }
                int size = E.size();
                for (int i2 = 0; i2 < size; i2++) {
                    for (Object obj4 : ((CompositionImpl) ((ControlledComposition) E.get(i2))).o.l) {
                        if (obj4 instanceof RecomposeScope) {
                            recomposeScope = (RecomposeScope) obj4;
                        } else {
                            recomposeScope = null;
                        }
                        if (recomposeScope != null && (recomposeScopeOwner = (recomposeScopeImpl = (RecomposeScopeImpl) recomposeScope).a) != null) {
                            recomposeScopeOwner.c(recomposeScopeImpl, null);
                        }
                    }
                }
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.r, this.s, null);
                this.p = d;
                this.n = d2;
                this.o = 1;
                if (CoroutineScopeKt.c(anonymousClass2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                pVar = d2;
            } catch (Throwable th5) {
                pVar = d2;
                th = th5;
                pVar.a();
                recomposer = this.q;
                synchronized (recomposer.c) {
                }
            }
        }
        pVar.a();
        Recomposer recomposer4 = this.q;
        synchronized (recomposer4.c) {
            try {
                if (recomposer4.d == d) {
                    recomposer4.d = null;
                }
                if (recomposer4.y() != null) {
                    ComposerKt.a("called outside of runRecomposeAndApplyChanges");
                }
            } catch (Throwable th6) {
                throw th6;
            }
        }
        MutableStateFlow mutableStateFlow4 = Recomposer.z;
        Recomposer.Companion.a(this.q.y);
        return Unit.a;
    }
}
