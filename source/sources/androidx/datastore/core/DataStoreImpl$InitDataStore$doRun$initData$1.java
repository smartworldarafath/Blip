package androidx.datastore.core;

import androidx.datastore.core.DataStoreImpl;
import defpackage.u2;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$InitDataStore$doRun$initData$1", f = "DataStoreImpl.kt", l = {437, 458, 546, 468}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class DataStoreImpl$InitDataStore$doRun$initData$1 extends SuspendLambda implements Function1<Continuation<? super Data<Object>>, Object> {
    public Object n;
    public Serializable o;
    public Object p;
    public Object q;
    public Iterator r;
    public int s;
    public int t;
    public final /* synthetic */ DataStoreImpl u;
    public final /* synthetic */ DataStoreImpl.InitDataStore v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$InitDataStore$doRun$initData$1(DataStoreImpl dataStoreImpl, DataStoreImpl.InitDataStore initDataStore, Continuation continuation) {
        super(1, continuation);
        this.u = dataStoreImpl;
        this.v = initDataStore;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new DataStoreImpl$InitDataStore$doRun$initData$1(this.u, this.v, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6  */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v7, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Mutex mutexImpl;
        ?? r9;
        Ref$BooleanRef ref$BooleanRef;
        ?? r1;
        Mutex mutex;
        Iterator it;
        Mutex mutex2;
        Ref$BooleanRef ref$BooleanRef2;
        Ref$ObjectRef ref$ObjectRef;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
        Ref$BooleanRef ref$BooleanRef3;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$BooleanRef ref$BooleanRef4;
        Object obj2;
        int i;
        Integer a;
        Object obj3;
        int i2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i3 = this.t;
        DataStoreImpl.InitDataStore initDataStore = this.v;
        DataStoreImpl dataStoreImpl = this.u;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i3 == 4) {
                            i2 = this.s;
                            obj3 = this.n;
                            ResultKt.b(obj);
                            return new Data(i2, ((Number) obj).intValue(), obj3);
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    mutex = (Mutex) this.p;
                    ref$ObjectRef2 = (Ref$ObjectRef) this.o;
                    ref$BooleanRef4 = (Ref$BooleanRef) this.n;
                    ResultKt.b(obj);
                    try {
                        ref$BooleanRef4.j = true;
                        mutex.h(null);
                        obj2 = ref$ObjectRef2.j;
                        if (obj2 == null) {
                            i = obj2.hashCode();
                        } else {
                            i = 0;
                        }
                        InterProcessCoordinator f = dataStoreImpl.f();
                        this.n = obj2;
                        this.o = null;
                        this.p = null;
                        this.s = i;
                        this.t = 4;
                        a = ((SingleProcessCoordinator) f).a();
                        if (a != coroutineSingletons) {
                            obj = a;
                            obj3 = obj2;
                            i2 = i;
                            return new Data(i2, ((Number) obj).intValue(), obj3);
                        }
                        return coroutineSingletons;
                    } catch (Throwable th) {
                        mutex.h(null);
                        throw th;
                    }
                }
                it = this.r;
                dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = (DataStoreImpl$InitDataStore$doRun$initData$1$api$1) this.q;
                ref$ObjectRef = (Ref$ObjectRef) this.p;
                ref$BooleanRef2 = (Ref$BooleanRef) this.o;
                mutex2 = (Mutex) this.n;
                ResultKt.b(obj);
                while (it.hasNext()) {
                    Function2 function2 = (Function2) it.next();
                    this.n = mutex2;
                    this.o = ref$BooleanRef2;
                    this.p = ref$ObjectRef;
                    this.q = dataStoreImpl$InitDataStore$doRun$initData$1$api$1;
                    this.r = it;
                    this.t = 2;
                    if (function2.n(dataStoreImpl$InitDataStore$doRun$initData$1$api$1, this) == coroutineSingletons) {
                        break;
                    }
                }
                r9 = ref$ObjectRef;
                ref$BooleanRef3 = ref$BooleanRef2;
                mutex = mutex2;
                initDataStore.c = null;
                this.n = ref$BooleanRef3;
                this.o = r9;
                this.p = mutex;
                this.q = null;
                this.r = null;
                this.t = 3;
                if (mutex.a(this) != coroutineSingletons) {
                    ref$ObjectRef2 = r9;
                    ref$BooleanRef4 = ref$BooleanRef3;
                    ref$BooleanRef4.j = true;
                    mutex.h(null);
                    obj2 = ref$ObjectRef2.j;
                    if (obj2 == null) {
                    }
                    InterProcessCoordinator f2 = dataStoreImpl.f();
                    this.n = obj2;
                    this.o = null;
                    this.p = null;
                    this.s = i;
                    this.t = 4;
                    a = ((SingleProcessCoordinator) f2).a();
                    if (a != coroutineSingletons) {
                    }
                }
                return coroutineSingletons;
            }
            Ref$ObjectRef ref$ObjectRef3 = (Ref$ObjectRef) this.q;
            r9 = (Ref$ObjectRef) this.p;
            Ref$BooleanRef ref$BooleanRef5 = (Ref$BooleanRef) this.o;
            mutexImpl = (Mutex) this.n;
            ResultKt.b(obj);
            r1 = ref$ObjectRef3;
            ref$BooleanRef = ref$BooleanRef5;
        } else {
            ResultKt.b(obj);
            mutexImpl = new MutexImpl();
            ?? obj4 = new Object();
            Object obj5 = new Object();
            this.n = mutexImpl;
            this.o = obj4;
            this.p = obj5;
            this.q = obj5;
            this.t = 1;
            obj = DataStoreImpl.e(dataStoreImpl, true, this);
            if (obj != coroutineSingletons) {
                r9 = obj5;
                r1 = obj5;
                ref$BooleanRef = obj4;
            }
            return coroutineSingletons;
        }
        r1.j = ((Data) obj).b;
        DataStoreImpl$InitDataStore$doRun$initData$1$api$1 dataStoreImpl$InitDataStore$doRun$initData$1$api$12 = new DataStoreImpl$InitDataStore$doRun$initData$1$api$1(mutexImpl, ref$BooleanRef, r9, dataStoreImpl);
        List list = initDataStore.c;
        if (list != null) {
            it = list.iterator();
            mutex2 = mutexImpl;
            ref$BooleanRef2 = ref$BooleanRef;
            ref$ObjectRef = r9;
            dataStoreImpl$InitDataStore$doRun$initData$1$api$1 = dataStoreImpl$InitDataStore$doRun$initData$1$api$12;
            while (it.hasNext()) {
            }
            r9 = ref$ObjectRef;
            ref$BooleanRef3 = ref$BooleanRef2;
            mutex = mutex2;
            initDataStore.c = null;
            this.n = ref$BooleanRef3;
            this.o = r9;
            this.p = mutex;
            this.q = null;
            this.r = null;
            this.t = 3;
            if (mutex.a(this) != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        mutex = mutexImpl;
        ref$BooleanRef3 = ref$BooleanRef;
        initDataStore.c = null;
        this.n = ref$BooleanRef3;
        this.o = r9;
        this.p = mutex;
        this.q = null;
        this.r = null;
        this.t = 3;
        if (mutex.a(this) != coroutineSingletons) {
        }
        return coroutineSingletons;
    }
}
