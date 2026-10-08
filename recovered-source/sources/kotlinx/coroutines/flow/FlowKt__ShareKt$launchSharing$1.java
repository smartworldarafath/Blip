package kotlinx.coroutines.flow;

import defpackage.k8;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {210, 214, 215, 221}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SharingStarted o;
    public final /* synthetic */ Flow p;
    public final /* synthetic */ MutableSharedFlow q;
    public final /* synthetic */ Float r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Boolean>, Object> {
        public /* synthetic */ int n;

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s(Integer.valueOf(((Number) obj).intValue()), (Continuation) obj2)).v(Unit.a);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.SuspendLambda, kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            ?? suspendLambda = new SuspendLambda(2, continuation);
            suspendLambda.n = ((Number) obj).intValue();
            return suspendLambda;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            boolean z;
            int i = this.n;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {223}, m = "invokeSuspend", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ Flow p;
        public final /* synthetic */ MutableSharedFlow q;
        public final /* synthetic */ Float r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Flow flow, MutableSharedFlow mutableSharedFlow, Float f, Continuation continuation) {
            super(2, continuation);
            this.p = flow;
            this.q = mutableSharedFlow;
            this.r = f;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((SharingCommand) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.p, this.q, this.r, continuation);
            anonymousClass2.o = obj;
            return anonymousClass2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            SharingCommand sharingCommand = (SharingCommand) this.o;
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
                int ordinal = sharingCommand.ordinal();
                MutableSharedFlow mutableSharedFlow = this.q;
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal == 2) {
                            Symbol symbol = SharedFlowKt.a;
                            Float f = this.r;
                            if (f != symbol) {
                                ((StateFlowImpl) mutableSharedFlow).h(f);
                            } else {
                                throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
                            }
                        } else {
                            k8.e();
                            return null;
                        }
                    }
                } else {
                    this.o = null;
                    this.n = 1;
                    if (this.p.a(mutableSharedFlow, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharing$1(SharingStarted sharingStarted, Flow flow, MutableSharedFlow mutableSharedFlow, Float f, Continuation continuation) {
        super(2, continuation);
        this.o = sharingStarted;
        this.p = flow;
        this.q = mutableSharedFlow;
        this.r = f;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FlowKt__ShareKt$launchSharing$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new FlowKt__ShareKt$launchSharing$1(this.o, this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0059, code lost:
    
        if (r6.a(r8, r9) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
    
        if (r6.a(r8, r9) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.m((kotlinx.coroutines.flow.CancellableFlow) r10, r1, r9) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008d, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.h(r10, r1, r9) == r0) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r1v5, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Object obj2 = CoroutineSingletons.j;
        int i = this.n;
        Flow flow = this.p;
        MutableSharedFlow mutableSharedFlow = this.q;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3 && i != 4) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    this.n = 3;
                }
            }
            ResultKt.b(obj);
            return Unit.a;
        }
        ResultKt.b(obj);
        SharingStarted sharingStarted = SharingStarted.Companion.a;
        SharingStarted sharingStarted2 = this.o;
        if (sharingStarted2 == sharingStarted) {
            this.n = 1;
        } else if (sharingStarted2 == SharingStarted.Companion.b) {
            StateFlow i2 = ((AbstractSharedFlow) mutableSharedFlow).i();
            ?? suspendLambda = new SuspendLambda(2, null);
            this.n = 2;
        } else {
            Flow i3 = FlowKt.i(FlowKt.i(new FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1(new SuspendLambda(2, null), FlowKt.w(((AbstractSharedFlow) mutableSharedFlow).i(), new StartedWhileSubscribed$command$1((StartedWhileSubscribed) sharingStarted2, null)))));
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(flow, mutableSharedFlow, this.r, null);
            this.n = 4;
        }
        return obj2;
    }
}
