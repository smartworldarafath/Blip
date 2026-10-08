package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ThrowingCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1", f = "DataStoreImpl.kt", l = {72, 74, 100}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$data$1 extends SuspendLambda implements Function2<FlowCollector<Object>, Continuation<? super Unit>, Object> {
    public Data n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ DataStoreImpl q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$1", f = "DataStoreImpl.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super State<Object>>, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ DataStoreImpl o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DataStoreImpl dataStoreImpl, Continuation continuation) {
            super(2, continuation);
            this.o = dataStoreImpl;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, continuation);
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
                this.n = 1;
                if (DataStoreImpl.c(this.o, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$2", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<State<Object>, Continuation<? super Boolean>, Object> {
        public /* synthetic */ Object n;

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((State) obj, (Continuation) obj2)).v(Unit.a);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.SuspendLambda, androidx.datastore.core.DataStoreImpl$data$1$2] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            ?? suspendLambda = new SuspendLambda(2, continuation);
            suspendLambda.n = obj;
            return suspendLambda;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            return Boolean.valueOf(!(((State) this.n) instanceof Final));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$3", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends SuspendLambda implements Function2<State<Object>, Continuation<? super Boolean>, Object> {
        public /* synthetic */ Object n;
        public final /* synthetic */ State o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(State state, Continuation continuation) {
            super(2, continuation);
            this.o = state;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass3) s((State) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.o, continuation);
            anonymousClass3.n = obj;
            return anonymousClass3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            boolean z;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            State state = (State) this.n;
            if ((state instanceof Data) && state.a <= this.o.a) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$5", f = "DataStoreImpl.kt", l = {116}, m = "invokeSuspend")
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 extends SuspendLambda implements Function3<FlowCollector<Object>, Throwable, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ DataStoreImpl o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(DataStoreImpl dataStoreImpl, Continuation continuation) {
            super(3, continuation);
            this.o = dataStoreImpl;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object f(Object obj, Object obj2, Object obj3) {
            return new AnonymousClass5(this.o, (Continuation) obj3).v(Unit.a);
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
                this.n = 1;
                if (DataStoreImpl.a(this.o, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$data$1(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(2, continuation);
        this.q = dataStoreImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DataStoreImpl$data$1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataStoreImpl$data$1 dataStoreImpl$data$1 = new DataStoreImpl$data$1(this.q, continuation);
        dataStoreImpl$data$1.p = obj;
        return dataStoreImpl$data$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0067, code lost:
    
        if (r4.r(r8, r10) == r0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        if ((r1 instanceof androidx.datastore.core.Final) != false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00be  */
    /* JADX WARN: Type inference failed for: r11v14, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        FlowCollector flowCollector;
        State state;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Unit unit = Unit.a;
        DataStoreImpl dataStoreImpl = this.q;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        ResultKt.b(obj);
                        return unit;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                state = this.n;
                flowCollector = (FlowCollector) this.p;
                ResultKt.b(obj);
                FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(new DataStoreImpl$data$1$invokeSuspend$$inlined$map$1(new FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1(new AnonymousClass3(state, null), new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new AnonymousClass1(dataStoreImpl, null), dataStoreImpl.h.a), new SuspendLambda(2, null)))), new AnonymousClass5(dataStoreImpl, null));
                this.p = null;
                this.n = null;
                this.o = 3;
                if (flowCollector instanceof ThrowingCollector) {
                    Object a = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.a(flowCollector, this);
                    if (a != coroutineSingletons) {
                        a = unit;
                    }
                    if (a == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    return unit;
                }
                throw ((ThrowingCollector) flowCollector).j;
            }
            FlowCollector flowCollector2 = (FlowCollector) this.p;
            ResultKt.b(obj);
            flowCollector = flowCollector2;
        } else {
            ResultKt.b(obj);
            FlowCollector flowCollector3 = (FlowCollector) this.p;
            this.p = flowCollector3;
            this.o = 1;
            Object e = BuildersKt.e(dataStoreImpl.c.getCoroutineContext(), new DataStoreImpl$readState$2(dataStoreImpl, null), this);
            if (e != coroutineSingletons) {
                flowCollector = flowCollector3;
                obj = e;
            }
            return coroutineSingletons;
        }
        state = (State) obj;
        if (state instanceof Data) {
            Data data = (Data) state;
            Object obj2 = data.b;
            this.p = flowCollector;
            this.n = data;
            this.o = 2;
        } else if (!(state instanceof UnInitialized)) {
            if (state instanceof ReadException) {
                throw ((ReadException) state).b;
            }
        } else {
            u2.l("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
            return null;
        }
        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$12 = new FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(new DataStoreImpl$data$1$invokeSuspend$$inlined$map$1(new FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1(new AnonymousClass3(state, null), new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(new FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(new AnonymousClass1(dataStoreImpl, null), dataStoreImpl.h.a), new SuspendLambda(2, null)))), new AnonymousClass5(dataStoreImpl, null));
        this.p = null;
        this.n = null;
        this.o = 3;
        if (flowCollector instanceof ThrowingCollector) {
        }
    }
}
