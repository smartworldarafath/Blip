package kotlinx.coroutines.flow;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 implements Flow<Object> {
    public final /* synthetic */ Flow j;
    public final /* synthetic */ Function2 k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2<T> implements FlowCollector {
        public final /* synthetic */ FlowCollector j;
        public final /* synthetic */ Function2 k;

        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2", f = "Transform.kt", l = {217, 218}, m = "emit", v = 1)
        /* renamed from: kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass1 extends ContinuationImpl {
            public /* synthetic */ Object m;
            public int n;
            public Object p;
            public FlowCollector q;
            public int r;

            public AnonymousClass1(Continuation continuation) {
                super(continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object v(Object obj) {
                this.m = obj;
                this.n |= Integer.MIN_VALUE;
                return AnonymousClass2.this.r(null, this);
            }
        }

        public AnonymousClass2(Function2 function2, FlowCollector flowCollector) {
            this.j = flowCollector;
            this.k = function2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
        
            if (r7.r(r2, r0) != r1) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1;
            int i;
            int i2;
            Object obj2;
            FlowCollector flowCollector;
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i3 = anonymousClass1.n;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i3 - Integer.MIN_VALUE;
                    Object obj3 = anonymousClass1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anonymousClass1.n;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.b(obj3);
                                return Unit.a;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        i2 = anonymousClass1.r;
                        flowCollector = anonymousClass1.q;
                        obj2 = anonymousClass1.p;
                        ResultKt.b(obj3);
                    } else {
                        ResultKt.b(obj3);
                        anonymousClass1.p = obj;
                        FlowCollector flowCollector2 = this.j;
                        anonymousClass1.q = flowCollector2;
                        anonymousClass1.r = 0;
                        anonymousClass1.n = 1;
                        if (this.k.n(obj, anonymousClass1) != coroutineSingletons) {
                            i2 = 0;
                            obj2 = obj;
                            flowCollector = flowCollector2;
                        }
                        return coroutineSingletons;
                    }
                    anonymousClass1.p = null;
                    anonymousClass1.q = null;
                    anonymousClass1.r = i2;
                    anonymousClass1.n = 2;
                }
            }
            anonymousClass1 = new AnonymousClass1(continuation);
            Object obj32 = anonymousClass1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = anonymousClass1.n;
            if (i == 0) {
            }
            anonymousClass1.p = null;
            anonymousClass1.q = null;
            anonymousClass1.r = i2;
            anonymousClass1.n = 2;
        }
    }

    public FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(Function2 function2, Flow flow) {
        this.j = flow;
        this.k = function2;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        Object a = this.j.a(new AnonymousClass2(this.k, flowCollector), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
