package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$transformAndWrite$2", f = "DataStoreImpl.kt", l = {330, 331, 337}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$transformAndWrite$2 extends SuspendLambda implements Function1<Continuation<Object>, Object> {
    public Object n;
    public int o;
    public final /* synthetic */ DataStoreImpl p;
    public final /* synthetic */ CoroutineContext q;
    public final /* synthetic */ Function2 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$transformAndWrite$2(DataStoreImpl dataStoreImpl, CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        super(1, continuation);
        this.p = dataStoreImpl;
        this.q = coroutineContext;
        this.r = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        CoroutineContext coroutineContext = this.q;
        Function2 function2 = this.r;
        return new DataStoreImpl$transformAndWrite$2(this.p, coroutineContext, function2, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004a, code lost:
    
        if (r9 == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0033, code lost:
    
        if (r9 == r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Data data;
        int i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.o;
        DataStoreImpl dataStoreImpl = this.p;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        Object obj2 = this.n;
                        ResultKt.b(obj);
                        return obj2;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                data = (Data) this.n;
                ResultKt.b(obj);
                Object obj3 = data.b;
                if (obj3 != null) {
                    i = obj3.hashCode();
                } else {
                    i = 0;
                }
                if (i == data.c) {
                    if (!Intrinsics.a(data.b, obj)) {
                        this.n = obj;
                        this.o = 3;
                        if (dataStoreImpl.k(obj, true, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return obj;
                }
                u2.l("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            this.o = 1;
            obj = DataStoreImpl.e(dataStoreImpl, true, this);
        }
        data = (Data) obj;
        DataStoreImpl$transformAndWrite$2$newData$1 dataStoreImpl$transformAndWrite$2$newData$1 = new DataStoreImpl$transformAndWrite$2$newData$1(this.r, data, null);
        this.n = data;
        this.o = 2;
        obj = BuildersKt.e(this.q, dataStoreImpl$transformAndWrite$2$newData$1, this);
    }
}
