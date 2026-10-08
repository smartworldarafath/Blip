package kotlinx.coroutines.flow;

import androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1;
import defpackage.u2;
import java.io.Serializable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 implements Flow<Object> {
    public final /* synthetic */ DataStoreImpl$data$1$invokeSuspend$$inlined$map$1 j;
    public final /* synthetic */ Function3 k;

    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {113, 120, 127}, m = "collect", v = 1)
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends ContinuationImpl {
        public /* synthetic */ Object m;
        public int n;
        public FlowCollector p;
        public Serializable q;
        public int r;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            this.m = obj;
            this.n |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.a(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(DataStoreImpl$data$1$invokeSuspend$$inlined$map$1 dataStoreImpl$data$1$invokeSuspend$$inlined$map$1, Function3 function3) {
        this.j = dataStoreImpl$data$1$invokeSuspend$$inlined$map$1;
        this.k = function3;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        AnonymousClass1 anonymousClass1;
        CoroutineSingletons coroutineSingletons;
        int i;
        Function3 function3;
        int i2;
        int i3;
        ThrowingCollector throwingCollector;
        SafeCollector safeCollector;
        SafeCollector safeCollector2;
        try {
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i4 = anonymousClass1.n;
                if ((i4 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i4 - Integer.MIN_VALUE;
                    Object obj = anonymousClass1.m;
                    coroutineSingletons = CoroutineSingletons.j;
                    i = anonymousClass1.n;
                    function3 = this.k;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    safeCollector2 = (SafeCollector) anonymousClass1.q;
                                    try {
                                        ResultKt.b(obj);
                                        safeCollector2.w();
                                        return Unit.a;
                                    } catch (Throwable th) {
                                        th = th;
                                        safeCollector2.w();
                                        throw th;
                                    }
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            Throwable th2 = (Throwable) anonymousClass1.q;
                            ResultKt.b(obj);
                            throw th2;
                        }
                        i3 = anonymousClass1.r;
                        flowCollector = anonymousClass1.p;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th3) {
                            i2 = i3;
                            th = th3;
                            throwingCollector = new ThrowingCollector(th);
                            anonymousClass1.p = null;
                            anonymousClass1.q = th;
                            anonymousClass1.r = i2;
                            anonymousClass1.n = 2;
                            if (FlowKt__EmittersKt.a(throwingCollector, function3, th, anonymousClass1) != coroutineSingletons) {
                            }
                        }
                    } else {
                        ResultKt.b(obj);
                        i2 = 0;
                        try {
                            DataStoreImpl$data$1$invokeSuspend$$inlined$map$1 dataStoreImpl$data$1$invokeSuspend$$inlined$map$1 = this.j;
                            anonymousClass1.p = flowCollector;
                            anonymousClass1.r = 0;
                            anonymousClass1.n = 1;
                            if (dataStoreImpl$data$1$invokeSuspend$$inlined$map$1.a(flowCollector, anonymousClass1) != coroutineSingletons) {
                                i3 = 0;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            throwingCollector = new ThrowingCollector(th);
                            anonymousClass1.p = null;
                            anonymousClass1.q = th;
                            anonymousClass1.r = i2;
                            anonymousClass1.n = 2;
                            if (FlowKt__EmittersKt.a(throwingCollector, function3, th, anonymousClass1) != coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            throw th;
                        }
                        return coroutineSingletons;
                    }
                    CoroutineContext coroutineContext = anonymousClass1.k;
                    coroutineContext.getClass();
                    safeCollector = new SafeCollector(flowCollector, coroutineContext);
                    anonymousClass1.p = null;
                    anonymousClass1.q = safeCollector;
                    anonymousClass1.r = i3;
                    anonymousClass1.n = 3;
                    if (function3.f(safeCollector, null, anonymousClass1) != coroutineSingletons) {
                        safeCollector2 = safeCollector;
                        safeCollector2.w();
                        return Unit.a;
                    }
                    return coroutineSingletons;
                }
            }
            anonymousClass1.p = null;
            anonymousClass1.q = safeCollector;
            anonymousClass1.r = i3;
            anonymousClass1.n = 3;
            if (function3.f(safeCollector, null, anonymousClass1) != coroutineSingletons) {
            }
            return coroutineSingletons;
        } catch (Throwable th5) {
            th = th5;
            safeCollector2 = safeCollector;
            safeCollector2.w();
            throw th;
        }
        anonymousClass1 = new AnonymousClass1(continuation);
        Object obj2 = anonymousClass1.m;
        coroutineSingletons = CoroutineSingletons.j;
        i = anonymousClass1.n;
        function3 = this.k;
        if (i == 0) {
        }
        CoroutineContext coroutineContext2 = anonymousClass1.k;
        coroutineContext2.getClass();
        safeCollector = new SafeCollector(flowCollector, coroutineContext2);
    }
}
