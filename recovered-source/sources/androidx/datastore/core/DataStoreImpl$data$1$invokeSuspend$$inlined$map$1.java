package androidx.datastore.core;

import defpackage.k8;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataStoreImpl$data$1$invokeSuspend$$inlined$map$1 implements Flow<Object> {
    public final /* synthetic */ FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1 j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2<T> implements FlowCollector {
        public final /* synthetic */ FlowCollector j;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2", f = "DataStoreImpl.kt", l = {223}, m = "emit")
        /* renamed from: androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass1 extends ContinuationImpl {
            public /* synthetic */ Object m;
            public int n;

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

        public AnonymousClass2(FlowCollector flowCollector) {
            this.j = flowCollector;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1;
            int i;
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i2 = anonymousClass1.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i2 - Integer.MIN_VALUE;
                    Object obj2 = anonymousClass1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anonymousClass1.n;
                    boolean z = true;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj2);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        State state = (State) obj;
                        if (!(state instanceof ReadException)) {
                            if (state instanceof Data) {
                                Object obj3 = ((Data) state).b;
                                anonymousClass1.n = 1;
                                if (this.j.r(obj3, anonymousClass1) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            } else {
                                if (!(state instanceof Final)) {
                                    z = state instanceof UnInitialized;
                                }
                                if (z) {
                                    u2.l("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                                    return null;
                                }
                                k8.e();
                                return null;
                            }
                        } else {
                            throw ((ReadException) state).b;
                        }
                    }
                    return Unit.a;
                }
            }
            anonymousClass1 = new AnonymousClass1(continuation);
            Object obj22 = anonymousClass1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = anonymousClass1.n;
            boolean z2 = true;
            if (i == 0) {
            }
            return Unit.a;
        }
    }

    public DataStoreImpl$data$1$invokeSuspend$$inlined$map$1(FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1 flowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1) {
        this.j = flowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        Object a = this.j.a(new AnonymousClass2(flowCollector), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
