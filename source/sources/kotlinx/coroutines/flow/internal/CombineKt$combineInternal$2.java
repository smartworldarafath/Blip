package kotlinx.coroutines.flow.internal;

import defpackage.u2;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {51, 73, 76}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Object[] n;
    public Channel o;
    public byte[] p;
    public int q;
    public int r;
    public int s;
    public int t;
    public /* synthetic */ Object u;
    public final /* synthetic */ Flow[] v;
    public final /* synthetic */ Function0 w;
    public final /* synthetic */ Function3 x;
    public final /* synthetic */ FlowCollector y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {28}, m = "invokeSuspend", v = 1)
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ Flow[] o;
        public final /* synthetic */ int p;
        public final /* synthetic */ AtomicInteger q;
        public final /* synthetic */ BufferedChannel r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00101<T> implements FlowCollector {
            public final /* synthetic */ BufferedChannel j;
            public final /* synthetic */ int k;

            public C00101(BufferedChannel bufferedChannel, int i) {
                this.j = bufferedChannel;
                this.k = i;
            }

            /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
            
                if (kotlinx.coroutines.YieldKt.a(r0) != r1) goto L22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
            
                return r1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
            
                if (r5.j.k(r7, r0) == r1) goto L21;
             */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
            @Override // kotlinx.coroutines.flow.FlowCollector
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object r(Object obj, Continuation continuation) {
                CombineKt$combineInternal$2$1$1$emit$1 combineKt$combineInternal$2$1$1$emit$1;
                int i;
                if (continuation instanceof CombineKt$combineInternal$2$1$1$emit$1) {
                    combineKt$combineInternal$2$1$1$emit$1 = (CombineKt$combineInternal$2$1$1$emit$1) continuation;
                    int i2 = combineKt$combineInternal$2$1$1$emit$1.o;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        combineKt$combineInternal$2$1$1$emit$1.o = i2 - Integer.MIN_VALUE;
                        Object obj2 = combineKt$combineInternal$2$1$1$emit$1.m;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = combineKt$combineInternal$2$1$1$emit$1.o;
                        if (i == 0) {
                            if (i != 1) {
                                if (i == 2) {
                                    ResultKt.b(obj2);
                                    return Unit.a;
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj2);
                        } else {
                            ResultKt.b(obj2);
                            IndexedValue indexedValue = new IndexedValue(this.k, obj);
                            combineKt$combineInternal$2$1$1$emit$1.o = 1;
                        }
                        combineKt$combineInternal$2$1$1$emit$1.o = 2;
                    }
                }
                combineKt$combineInternal$2$1$1$emit$1 = new CombineKt$combineInternal$2$1$1$emit$1(this, continuation);
                Object obj22 = combineKt$combineInternal$2$1$1$emit$1.m;
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
                i = combineKt$combineInternal$2$1$1$emit$1.o;
                if (i == 0) {
                }
                combineKt$combineInternal$2$1$1$emit$1.o = 2;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Flow[] flowArr, int i, AtomicInteger atomicInteger, BufferedChannel bufferedChannel, Continuation continuation) {
            super(2, continuation);
            this.o = flowArr;
            this.p = i;
            this.q = atomicInteger;
            this.r = bufferedChannel;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, this.q, this.r, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            AtomicInteger atomicInteger = this.q;
            BufferedChannel bufferedChannel = this.r;
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
                    Flow[] flowArr = this.o;
                    int i2 = this.p;
                    Flow flow = flowArr[i2];
                    C00101 c00101 = new C00101(bufferedChannel, i2);
                    this.n = 1;
                    if (flow.a(c00101, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    bufferedChannel.m(null);
                }
                return Unit.a;
            } finally {
                if (atomicInteger.decrementAndGet() == 0) {
                    bufferedChannel.m(null);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2(Continuation continuation, Function0 function0, Function3 function3, FlowCollector flowCollector, Flow[] flowArr) {
        super(2, continuation);
        this.v = flowArr;
        this.w = function0;
        this.x = function3;
        this.y = flowCollector;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CombineKt$combineInternal$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(continuation, this.w, this.x, this.y, this.v);
        combineKt$combineInternal$2.u = obj;
        return combineKt$combineInternal$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0133, code lost:
    
        if (r15.f(r14, r8, r19) == r2) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ce A[LOOP:0: B:18:0x00ce->B:25:0x00ef, LOOP_START, PHI: r3 r14
  0x00ce: PHI (r3v4 int) = (r3v3 int), (r3v5 int) binds: [B:14:0x00c9, B:25:0x00ef] A[DONT_GENERATE, DONT_INLINE]
  0x00ce: PHI (r14v6 kotlin.collections.IndexedValue) = (r14v5 kotlin.collections.IndexedValue), (r14v10 kotlin.collections.IndexedValue) binds: [B:14:0x00c9, B:25:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0133 -> B:7:0x002e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0138 -> B:9:0x0118). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        int length;
        byte[] bArr;
        byte b;
        Object[] objArr;
        Channel channel;
        int i;
        Object obj2;
        int i2;
        int i3;
        IndexedValue indexedValue;
        CoroutineScope coroutineScope = (CoroutineScope) this.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i4 = this.t;
        Symbol symbol = NullSurrogateKt.b;
        int i5 = 2;
        byte b2 = 1;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        ?? r1 = this.s;
                        i3 = this.r;
                        i2 = this.q;
                        byte[] bArr2 = this.p;
                        channel = this.o;
                        Object[] objArr2 = this.n;
                        ResultKt.b(obj);
                        b = r1;
                        bArr = bArr2;
                        objArr = objArr2;
                        int i6 = i2;
                        i = i3;
                        length = i6;
                        i5 = 2;
                        b2 = 1;
                        b = (byte) (b + b2);
                        this.u = null;
                        this.n = objArr;
                        this.o = channel;
                        this.p = bArr;
                        this.q = length;
                        this.r = i;
                        this.s = b;
                        this.t = b2;
                        obj2 = channel.e(this);
                        if (obj2 != coroutineSingletons) {
                            int i7 = i;
                            i2 = length;
                            i3 = i7;
                            indexedValue = (IndexedValue) ChannelResult.a(obj2);
                            if (indexedValue != null) {
                                do {
                                    int i8 = indexedValue.a;
                                    Object obj3 = objArr[i8];
                                    objArr[i8] = indexedValue.b;
                                    if (obj3 == symbol) {
                                        i3--;
                                    }
                                    if (bArr[i8] == b) {
                                        break;
                                    }
                                    bArr[i8] = b;
                                    indexedValue = (IndexedValue) ChannelResult.a(channel.c());
                                } while (indexedValue != null);
                                if (i3 == 0) {
                                    Object[] objArr3 = (Object[]) this.w.a();
                                    FlowCollector flowCollector = this.y;
                                    Function3 function3 = this.x;
                                    if (objArr3 == null) {
                                        this.u = null;
                                        this.n = objArr;
                                        this.o = channel;
                                        this.p = bArr;
                                        this.q = i2;
                                        this.r = i3;
                                        this.s = b;
                                        this.t = i5;
                                        if (function3.f(flowCollector, objArr, this) != coroutineSingletons) {
                                            int i9 = i2;
                                            i = i3;
                                            length = i9;
                                        }
                                    } else {
                                        ArraysKt.j(0, 0, 14, objArr, objArr3);
                                        this.u = null;
                                        this.n = objArr;
                                        this.o = channel;
                                        this.p = bArr;
                                        this.q = i2;
                                        this.r = i3;
                                        this.s = b;
                                        this.t = 3;
                                    }
                                } else {
                                    int i10 = i2;
                                    i = i3;
                                    length = i10;
                                }
                                b2 = 1;
                                b = (byte) (b + b2);
                                this.u = null;
                                this.n = objArr;
                                this.o = channel;
                                this.p = bArr;
                                this.q = length;
                                this.r = i;
                                this.s = b;
                                this.t = b2;
                                obj2 = channel.e(this);
                                if (obj2 != coroutineSingletons) {
                                }
                            }
                            return Unit.a;
                        }
                        return coroutineSingletons;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ?? r12 = this.s;
                int i11 = this.r;
                int i12 = this.q;
                byte[] bArr3 = this.p;
                channel = this.o;
                Object[] objArr4 = this.n;
                ResultKt.b(obj);
                b = r12;
                bArr = bArr3;
                objArr = objArr4;
                i = i11;
                length = i12;
                b2 = 1;
                b = (byte) (b + b2);
                this.u = null;
                this.n = objArr;
                this.o = channel;
                this.p = bArr;
                this.q = length;
                this.r = i;
                this.s = b;
                this.t = b2;
                obj2 = channel.e(this);
                if (obj2 != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            ?? r13 = this.s;
            i3 = this.r;
            i2 = this.q;
            byte[] bArr4 = this.p;
            channel = this.o;
            Object[] objArr5 = this.n;
            ResultKt.b(obj);
            obj2 = ((ChannelResult) obj).a;
            b = r13;
            bArr = bArr4;
            objArr = objArr5;
            indexedValue = (IndexedValue) ChannelResult.a(obj2);
            if (indexedValue != null) {
            }
            return Unit.a;
        }
        ResultKt.b(obj);
        length = this.v.length;
        if (length != 0) {
            Object[] objArr6 = new Object[length];
            ArraysKt.m(0, length, symbol, objArr6);
            BufferedChannel a = ChannelKt.a(length, 6, null);
            AtomicInteger atomicInteger = new AtomicInteger(length);
            for (int i13 = 0; i13 < length; i13++) {
                BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(this.v, i13, atomicInteger, a, null), 3);
            }
            bArr = new byte[length];
            b = 0;
            objArr = objArr6;
            channel = a;
            i = length;
            b = (byte) (b + b2);
            this.u = null;
            this.n = objArr;
            this.o = channel;
            this.p = bArr;
            this.q = length;
            this.r = i;
            this.s = b;
            this.t = b2;
            obj2 = channel.e(this);
            if (obj2 != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        return Unit.a;
    }
}
