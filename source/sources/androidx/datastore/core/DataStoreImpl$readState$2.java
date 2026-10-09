package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$readState$2", f = "DataStoreImpl.kt", l = {218, 226}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$readState$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super State<Object>>, Object> {
    public int n;
    public final /* synthetic */ DataStoreImpl o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readState$2(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(2, continuation);
        this.o = dataStoreImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DataStoreImpl$readState$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new DataStoreImpl$readState$2(this.o, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
    
        if (r7 == r2) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0035, code lost:
    
        if (r0.i(r6) == r2) goto L20;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        DataStoreImpl dataStoreImpl = this.o;
        DataStoreInMemoryCache dataStoreInMemoryCache = dataStoreImpl.h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.b(obj);
                        return (State) obj;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            } else {
                ResultKt.b(obj);
                if (dataStoreInMemoryCache.a() instanceof Final) {
                    return dataStoreInMemoryCache.a();
                }
                this.n = 1;
            }
            this.n = 2;
            obj = DataStoreImpl.d(dataStoreImpl, false, this);
        } catch (Throwable th) {
            return new ReadException(th, -1);
        }
    }
}
