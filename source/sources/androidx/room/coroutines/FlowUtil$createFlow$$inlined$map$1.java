package androidx.room.coroutines;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import defpackage.ii;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlowUtil$createFlow$$inlined$map$1 implements Flow<Object> {
    public final /* synthetic */ Flow j;
    public final /* synthetic */ RoomDatabase k;
    public final /* synthetic */ ii l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2<T> implements FlowCollector {
        public final /* synthetic */ FlowCollector j;
        public final /* synthetic */ RoomDatabase k;
        public final /* synthetic */ ii l;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2", f = "FlowBuilder.kt", l = {224, 223}, m = "emit")
        /* renamed from: androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1$2$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public final class AnonymousClass1 extends ContinuationImpl {
            public /* synthetic */ Object m;
            public int n;
            public FlowCollector o;

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

        public AnonymousClass2(FlowCollector flowCollector, RoomDatabase roomDatabase, ii iiVar) {
            this.j = flowCollector;
            this.k = roomDatabase;
            this.l = iiVar;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
        
            if (r6.r(r8, r0) != r1) goto L23;
         */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object r(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1;
            int i;
            FlowCollector flowCollector;
            if (continuation instanceof AnonymousClass1) {
                anonymousClass1 = (AnonymousClass1) continuation;
                int i2 = anonymousClass1.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    anonymousClass1.n = i2 - Integer.MIN_VALUE;
                    Object obj2 = anonymousClass1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = anonymousClass1.n;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.b(obj2);
                                return Unit.a;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        flowCollector = anonymousClass1.o;
                        ResultKt.b(obj2);
                    } else {
                        ResultKt.b(obj2);
                        FlowCollector flowCollector2 = this.j;
                        anonymousClass1.o = flowCollector2;
                        anonymousClass1.n = 1;
                        obj2 = DBUtil.c(this.k, true, this.l, anonymousClass1);
                        if (obj2 != coroutineSingletons) {
                            flowCollector = flowCollector2;
                        }
                        return coroutineSingletons;
                    }
                    anonymousClass1.o = null;
                    anonymousClass1.n = 2;
                }
            }
            anonymousClass1 = new AnonymousClass1(continuation);
            Object obj22 = anonymousClass1.m;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = anonymousClass1.n;
            if (i == 0) {
            }
            anonymousClass1.o = null;
            anonymousClass1.n = 2;
        }
    }

    public FlowUtil$createFlow$$inlined$map$1(Flow flow, RoomDatabase roomDatabase, ii iiVar) {
        this.j = flow;
        this.k = roomDatabase;
        this.l = iiVar;
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        Object a = this.j.a(new AnonymousClass2(flowCollector, this.k, this.l), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
