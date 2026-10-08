package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$writeData$2", f = "DataStoreImpl.kt", l = {352, 353}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$writeData$2 extends SuspendLambda implements Function2<WriteScope<Object>, Continuation<? super Unit>, Object> {
    public Ref$IntRef n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Ref$IntRef q;
    public final /* synthetic */ DataStoreImpl r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ boolean t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeData$2(Ref$IntRef ref$IntRef, DataStoreImpl dataStoreImpl, Object obj, boolean z, Continuation continuation) {
        super(2, continuation);
        this.q = ref$IntRef;
        this.r = dataStoreImpl;
        this.s = obj;
        this.t = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DataStoreImpl$writeData$2) s((WriteScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(this.q, this.r, this.s, this.t, continuation);
        dataStoreImpl$writeData$2.p = obj;
        return dataStoreImpl$writeData$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
    
        if (((androidx.datastore.core.FileWriteScope) r7).b(r3, r8) == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        WriteScope writeScope;
        Ref$IntRef ref$IntRef;
        int i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.o;
        Object obj2 = this.s;
        DataStoreImpl dataStoreImpl = this.r;
        Ref$IntRef ref$IntRef2 = this.q;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    ResultKt.b(obj);
                    if (this.t) {
                        DataStoreInMemoryCache dataStoreInMemoryCache = dataStoreImpl.h;
                        if (obj2 != null) {
                            i = obj2.hashCode();
                        } else {
                            i = 0;
                        }
                        dataStoreInMemoryCache.b(new Data(i, ref$IntRef2.j, obj2));
                    }
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$IntRef = this.n;
            writeScope = (WriteScope) this.p;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            WriteScope writeScope2 = (WriteScope) this.p;
            InterProcessCoordinator f = dataStoreImpl.f();
            this.p = writeScope2;
            this.n = ref$IntRef2;
            this.o = 1;
            Integer num = new Integer(((SingleProcessCoordinator) f).b.a.incrementAndGet());
            if (num != coroutineSingletons) {
                writeScope = writeScope2;
                obj = num;
                ref$IntRef = ref$IntRef2;
            }
            return coroutineSingletons;
        }
        ref$IntRef.j = ((Number) obj).intValue();
        this.p = null;
        this.n = null;
        this.o = 2;
    }
}
