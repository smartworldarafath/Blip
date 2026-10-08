package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.sync.Mutex;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1$api$1 implements InitializerApi<Object> {
    public final /* synthetic */ Mutex a;
    public final /* synthetic */ Ref$BooleanRef b;
    public final /* synthetic */ Ref$ObjectRef c;
    public final /* synthetic */ DataStoreImpl d;

    public DataStoreImpl$InitDataStore$doRun$initData$1$api$1(Mutex mutex, Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef ref$ObjectRef, DataStoreImpl dataStoreImpl) {
        this.a = mutex;
        this.b = ref$BooleanRef;
        this.c = ref$ObjectRef;
        this.d = dataStoreImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0089, code lost:
    
        if (r10.a(r0) == r1) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:27:0x004e, B:28:0x00a8, B:30:0x00b0), top: B:26:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0090 A[Catch: all -> 0x00cc, TRY_LEAVE, TryCatch #2 {all -> 0x00cc, blocks: (B:40:0x008c, B:42:0x0090, B:45:0x00cf, B:46:0x00d6), top: B:39:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cf A[Catch: all -> 0x00cc, TRY_ENTER, TryCatch #2 {all -> 0x00cc, blocks: (B:40:0x008c, B:42:0x0090, B:45:0x00cf, B:46:0x00d6), top: B:39:0x008c }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Function2 function2, ContinuationImpl continuationImpl) {
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;
        int i;
        Mutex mutex;
        Ref$BooleanRef ref$BooleanRef;
        Ref$ObjectRef ref$ObjectRef;
        DataStoreImpl dataStoreImpl;
        Mutex mutex2;
        Mutex mutex3;
        Ref$ObjectRef ref$ObjectRef2;
        Object obj;
        try {
            if (continuationImpl instanceof DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) {
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) continuationImpl;
                int i2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t = i2 - Integer.MIN_VALUE;
                    Object obj2 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.r;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    obj = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.o;
                                    ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.n;
                                    mutex2 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.m;
                                    try {
                                        ResultKt.b(obj2);
                                        ref$ObjectRef2.j = obj;
                                        Object obj3 = ref$ObjectRef2.j;
                                        mutex2.h(null);
                                        return obj3;
                                    } catch (Throwable th) {
                                        th = th;
                                        mutex2.h(null);
                                        throw th;
                                    }
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            dataStoreImpl = (DataStoreImpl) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.o;
                            ref$ObjectRef2 = (Ref$ObjectRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.n;
                            mutex3 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.m;
                            try {
                                ResultKt.b(obj2);
                                if (Intrinsics.a(obj2, ref$ObjectRef2.j)) {
                                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.m = mutex3;
                                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.n = ref$ObjectRef2;
                                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.o = obj2;
                                    dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t = 3;
                                    if (dataStoreImpl.k(obj2, false, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1) != coroutineSingletons) {
                                        obj = obj2;
                                        mutex2 = mutex3;
                                        ref$ObjectRef2.j = obj;
                                        Object obj32 = ref$ObjectRef2.j;
                                        mutex2.h(null);
                                        return obj32;
                                    }
                                    return coroutineSingletons;
                                }
                                mutex2 = mutex3;
                                Object obj322 = ref$ObjectRef2.j;
                                mutex2.h(null);
                                return obj322;
                            } catch (Throwable th2) {
                                th = th2;
                                mutex2 = mutex3;
                                mutex2.h(null);
                                throw th;
                            }
                        }
                        dataStoreImpl = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.q;
                        Ref$ObjectRef ref$ObjectRef3 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.p;
                        ref$BooleanRef = (Ref$BooleanRef) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.o;
                        Mutex mutex4 = (Mutex) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.n;
                        Function2 function22 = (Function2) dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.m;
                        ResultKt.b(obj2);
                        ref$ObjectRef = ref$ObjectRef3;
                        function2 = function22;
                        mutex = mutex4;
                    } else {
                        ResultKt.b(obj2);
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.m = function2;
                        mutex = this.a;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.n = mutex;
                        ref$BooleanRef = this.b;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.o = ref$BooleanRef;
                        ref$ObjectRef = this.c;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.p = ref$ObjectRef;
                        dataStoreImpl = this.d;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.q = dataStoreImpl;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t = 1;
                    }
                    if (ref$BooleanRef.j) {
                        Object obj4 = ref$ObjectRef.j;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.m = mutex;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.n = ref$ObjectRef;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.o = dataStoreImpl;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.p = null;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.q = null;
                        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t = 2;
                        Object n = function2.n(obj4, dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1);
                        if (n != coroutineSingletons) {
                            mutex3 = mutex;
                            obj2 = n;
                            ref$ObjectRef2 = ref$ObjectRef;
                            if (Intrinsics.a(obj2, ref$ObjectRef2.j)) {
                            }
                        }
                        return coroutineSingletons;
                    }
                    throw new IllegalStateException("InitializerApi.updateData should not be called after initialization is complete.");
                }
            }
            if (ref$BooleanRef.j) {
            }
        } catch (Throwable th3) {
            th = th3;
            mutex2 = mutex;
            mutex2.h(null);
            throw th;
        }
        dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1(this, continuationImpl);
        Object obj22 = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.r;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1.t;
        if (i == 0) {
        }
    }
}
