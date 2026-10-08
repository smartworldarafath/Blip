package androidx.datastore.core;

import androidx.datastore.core.Message;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataStoreImpl<T> implements DataStore<T> {
    public final FileStorage a;
    public final CorruptionHandler b;
    public final CoroutineScope c;
    public int f;
    public Job g;
    public final InitDataStore i;
    public final SimpleActor l;
    public final Flow d = FlowKt.p(new DataStoreImpl$data$1(this, null));
    public final MutexImpl e = new MutexImpl();
    public final DataStoreInMemoryCache h = new DataStoreInMemoryCache();
    public final Lazy j = LazyKt.b(new Function0<StorageConnection<Object>>() { // from class: androidx.datastore.core.DataStoreImpl$storageConnectionDelegate$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            FileStorage fileStorage = DataStoreImpl.this.a;
            File canonicalFile = ((File) fileStorage.b.a()).getCanonicalFile();
            synchronized (FileStorage.d) {
                String absolutePath = canonicalFile.getAbsolutePath();
                LinkedHashSet linkedHashSet = FileStorage.c;
                if (!linkedHashSet.contains(absolutePath)) {
                    absolutePath.getClass();
                    linkedHashSet.add(absolutePath);
                } else {
                    throw new IllegalStateException(("There are multiple DataStores active for the same file: " + absolutePath + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
                }
            }
            return new FileStorageConnection(canonicalFile, (InterProcessCoordinator) fileStorage.a.b(canonicalFile), new FileStorage$createConnection$2(canonicalFile));
        }
    });
    public final Lazy k = LazyKt.b(new Function0<InterProcessCoordinator>() { // from class: androidx.datastore.core.DataStoreImpl$coordinator$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object a() {
            return ((FileStorageConnection) ((StorageConnection) DataStoreImpl.this.j.getValue())).b;
        }
    });

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class InitDataStore extends RunOnce {
        public List c;

        public InitDataStore(List list) {
            this.c = CollectionsKt.X(list);
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
        
            if (r7 == r1) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
        
            if (r7 == r1) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
        @Override // androidx.datastore.core.RunOnce
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(ContinuationImpl continuationImpl) {
            DataStoreImpl$InitDataStore$doRun$1 dataStoreImpl$InitDataStore$doRun$1;
            int i;
            Data data;
            if (continuationImpl instanceof DataStoreImpl$InitDataStore$doRun$1) {
                dataStoreImpl$InitDataStore$doRun$1 = (DataStoreImpl$InitDataStore$doRun$1) continuationImpl;
                int i2 = dataStoreImpl$InitDataStore$doRun$1.p;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$InitDataStore$doRun$1.p = i2 - Integer.MIN_VALUE;
                    Object obj = dataStoreImpl$InitDataStore$doRun$1.n;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = dataStoreImpl$InitDataStore$doRun$1.p;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                this = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.m;
                                ResultKt.b(obj);
                                data = (Data) obj;
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            this = (InitDataStore) dataStoreImpl$InitDataStore$doRun$1.m;
                            ResultKt.b(obj);
                            data = (Data) obj;
                        }
                    } else {
                        ResultKt.b(obj);
                        List list = this.c;
                        DataStoreImpl dataStoreImpl = DataStoreImpl.this;
                        if (list != null && !list.isEmpty()) {
                            InterProcessCoordinator f = dataStoreImpl.f();
                            DataStoreImpl$InitDataStore$doRun$initData$1 dataStoreImpl$InitDataStore$doRun$initData$1 = new DataStoreImpl$InitDataStore$doRun$initData$1(dataStoreImpl, this, null);
                            dataStoreImpl$InitDataStore$doRun$1.m = this;
                            dataStoreImpl$InitDataStore$doRun$1.p = 2;
                            obj = ((SingleProcessCoordinator) f).b(dataStoreImpl$InitDataStore$doRun$initData$1, dataStoreImpl$InitDataStore$doRun$1);
                        } else {
                            dataStoreImpl$InitDataStore$doRun$1.m = this;
                            dataStoreImpl$InitDataStore$doRun$1.p = 1;
                            obj = DataStoreImpl.e(dataStoreImpl, false, dataStoreImpl$InitDataStore$doRun$1);
                        }
                        return coroutineSingletons;
                    }
                    DataStoreImpl.this.h.b(data);
                    return Unit.a;
                }
            }
            dataStoreImpl$InitDataStore$doRun$1 = new DataStoreImpl$InitDataStore$doRun$1(this, continuationImpl);
            Object obj2 = dataStoreImpl$InitDataStore$doRun$1.n;
            CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
            i = dataStoreImpl$InitDataStore$doRun$1.p;
            if (i == 0) {
            }
            DataStoreImpl.this.h.b(data);
            return Unit.a;
        }
    }

    public DataStoreImpl(FileStorage fileStorage, List list, CorruptionHandler corruptionHandler, CoroutineScope coroutineScope) {
        this.a = fileStorage;
        this.b = corruptionHandler;
        this.c = coroutineScope;
        this.i = new InitDataStore(list);
        this.l = new SimpleActor(new DataStoreImpl$writeActor$1(this), new DataStoreImpl$writeActor$3(this, null), coroutineScope);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004e A[Catch: all -> 0x005a, TryCatch #0 {all -> 0x005a, blocks: (B:11:0x0046, B:13:0x004e, B:15:0x0052, B:16:0x0057), top: B:10:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(DataStoreImpl dataStoreImpl, ContinuationImpl continuationImpl) {
        DataStoreImpl$decrementCollector$1 dataStoreImpl$decrementCollector$1;
        int i;
        MutexImpl mutexImpl;
        int i2;
        try {
            if (continuationImpl instanceof DataStoreImpl$decrementCollector$1) {
                dataStoreImpl$decrementCollector$1 = (DataStoreImpl$decrementCollector$1) continuationImpl;
                int i3 = dataStoreImpl$decrementCollector$1.q;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$decrementCollector$1.q = i3 - Integer.MIN_VALUE;
                    Object obj = dataStoreImpl$decrementCollector$1.o;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = dataStoreImpl$decrementCollector$1.q;
                    if (i == 0) {
                        if (i == 1) {
                            MutexImpl mutexImpl2 = dataStoreImpl$decrementCollector$1.n;
                            DataStoreImpl dataStoreImpl2 = dataStoreImpl$decrementCollector$1.m;
                            ResultKt.b(obj);
                            mutexImpl = mutexImpl2;
                            dataStoreImpl = dataStoreImpl2;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        mutexImpl = dataStoreImpl.e;
                        dataStoreImpl$decrementCollector$1.m = dataStoreImpl;
                        dataStoreImpl$decrementCollector$1.n = mutexImpl;
                        dataStoreImpl$decrementCollector$1.q = 1;
                        if (mutexImpl.a(dataStoreImpl$decrementCollector$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    i2 = dataStoreImpl.f - 1;
                    dataStoreImpl.f = i2;
                    if (i2 == 0) {
                        Job job = dataStoreImpl.g;
                        if (job != null) {
                            ((JobSupport) job).n(null);
                        }
                        dataStoreImpl.g = null;
                    }
                    mutexImpl.h(null);
                    return Unit.a;
                }
            }
            i2 = dataStoreImpl.f - 1;
            dataStoreImpl.f = i2;
            if (i2 == 0) {
            }
            mutexImpl.h(null);
            return Unit.a;
        } catch (Throwable th) {
            mutexImpl.h(null);
            throw th;
        }
        dataStoreImpl$decrementCollector$1 = new DataStoreImpl$decrementCollector$1(dataStoreImpl, continuationImpl);
        Object obj2 = dataStoreImpl$decrementCollector$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dataStoreImpl$decrementCollector$1.q;
        if (i == 0) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(6:5|6|(6:51|(1:(1:(2:55|56))(3:57|58|59))|60|61|17|18)(5:8|9|10|(3:12|13|14)(3:26|(1:28)(1:49)|(2:30|(2:32|(1:34))(2:41|42))(2:43|(2:45|46)(2:47|48)))|20)|35|36|37))|63|6|(0)(0)|35|36|37|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0073, code lost:
    
        if (r9 == r1) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
    
        r8 = r11;
        r11 = r9;
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b9, code lost:
    
        if (r9 != r1) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00bc, code lost:
    
        r9 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004d  */
    /* JADX WARN: Type inference failed for: r9v10 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(DataStoreImpl dataStoreImpl, Message.Update update, ContinuationImpl continuationImpl) {
        DataStoreImpl$handleUpdate$1 dataStoreImpl$handleUpdate$1;
        int i;
        CompletableDeferred completableDeferred;
        DataStoreImpl dataStoreImpl2;
        Object b;
        CompletableDeferred completableDeferred2;
        if (continuationImpl instanceof DataStoreImpl$handleUpdate$1) {
            dataStoreImpl$handleUpdate$1 = (DataStoreImpl$handleUpdate$1) continuationImpl;
            int i2 = dataStoreImpl$handleUpdate$1.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$handleUpdate$1.r = i2 - Integer.MIN_VALUE;
                Object obj = dataStoreImpl$handleUpdate$1.p;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dataStoreImpl$handleUpdate$1.r;
                boolean z = true;
                if (i == 0) {
                    try {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                CompletableDeferred completableDeferred3 = (CompletableDeferred) dataStoreImpl$handleUpdate$1.o;
                                DataStoreImpl dataStoreImpl3 = dataStoreImpl$handleUpdate$1.n;
                                Message.Update update2 = (Message.Update) dataStoreImpl$handleUpdate$1.m;
                                ResultKt.b(obj);
                                completableDeferred = completableDeferred3;
                                dataStoreImpl2 = dataStoreImpl3;
                                update = update2;
                            }
                        }
                        CompletableDeferred completableDeferred4 = (CompletableDeferred) dataStoreImpl$handleUpdate$1.m;
                        ResultKt.b(obj);
                        completableDeferred2 = completableDeferred4;
                    } catch (Throwable th) {
                        th = th;
                        obj = new Result.Failure(th);
                        completableDeferred2 = dataStoreImpl;
                        CompletableDeferredKt.b(completableDeferred2, obj);
                        return Unit.a;
                    }
                    CompletableDeferredKt.b(completableDeferred2, obj);
                    return Unit.a;
                }
                ResultKt.b(obj);
                completableDeferred = update.b;
                try {
                    State a = dataStoreImpl.h.a();
                    if (a instanceof Data) {
                        Function2 function2 = update.a;
                        CoroutineContext coroutineContext = update.d;
                        dataStoreImpl$handleUpdate$1.m = completableDeferred;
                        dataStoreImpl$handleUpdate$1.r = 1;
                        try {
                            b = ((SingleProcessCoordinator) dataStoreImpl.f()).b(new DataStoreImpl$transformAndWrite$2(dataStoreImpl, coroutineContext, function2, null), dataStoreImpl$handleUpdate$1);
                        } catch (Throwable th2) {
                            th = th2;
                            th = th;
                            dataStoreImpl = completableDeferred;
                            obj = new Result.Failure(th);
                            completableDeferred2 = dataStoreImpl;
                            CompletableDeferredKt.b(completableDeferred2, obj);
                            return Unit.a;
                        }
                    } else {
                        if (!(a instanceof ReadException)) {
                            z = a instanceof UnInitialized;
                        }
                        if (z) {
                            if (a == update.c) {
                                dataStoreImpl$handleUpdate$1.m = update;
                                dataStoreImpl$handleUpdate$1.n = dataStoreImpl;
                                dataStoreImpl$handleUpdate$1.o = completableDeferred;
                                dataStoreImpl$handleUpdate$1.r = 2;
                                Object i3 = dataStoreImpl.i(dataStoreImpl$handleUpdate$1);
                                dataStoreImpl2 = dataStoreImpl;
                                if (i3 == coroutineSingletons) {
                                }
                            } else {
                                a.getClass();
                                throw ((ReadException) a).b;
                            }
                        } else {
                            if (a instanceof Final) {
                                throw ((Final) a).b;
                            }
                            throw new RuntimeException();
                        }
                    }
                    return coroutineSingletons;
                } catch (Throwable th3) {
                    th = th3;
                    dataStoreImpl = completableDeferred;
                    obj = new Result.Failure(th);
                    completableDeferred2 = dataStoreImpl;
                    CompletableDeferredKt.b(completableDeferred2, obj);
                    return Unit.a;
                }
                Function2 function22 = update.a;
                CoroutineContext coroutineContext2 = update.d;
                dataStoreImpl$handleUpdate$1.m = completableDeferred;
                dataStoreImpl$handleUpdate$1.n = null;
                dataStoreImpl$handleUpdate$1.o = null;
                dataStoreImpl$handleUpdate$1.r = 3;
                b = ((SingleProcessCoordinator) dataStoreImpl2.f()).b(new DataStoreImpl$transformAndWrite$2(dataStoreImpl2, coroutineContext2, function22, null), dataStoreImpl$handleUpdate$1);
            }
        }
        dataStoreImpl$handleUpdate$1 = new DataStoreImpl$handleUpdate$1(dataStoreImpl, continuationImpl);
        Object obj2 = dataStoreImpl$handleUpdate$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dataStoreImpl$handleUpdate$1.r;
        boolean z2 = true;
        if (i == 0) {
        }
        Function2 function222 = update.a;
        CoroutineContext coroutineContext22 = update.d;
        dataStoreImpl$handleUpdate$1.m = completableDeferred;
        dataStoreImpl$handleUpdate$1.n = null;
        dataStoreImpl$handleUpdate$1.o = null;
        dataStoreImpl$handleUpdate$1.r = 3;
        b = ((SingleProcessCoordinator) dataStoreImpl2.f()).b(new DataStoreImpl$transformAndWrite$2(dataStoreImpl2, coroutineContext22, function222, null), dataStoreImpl$handleUpdate$1);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {all -> 0x005c, blocks: (B:11:0x0046, B:13:0x004d), top: B:10:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(DataStoreImpl dataStoreImpl, ContinuationImpl continuationImpl) {
        DataStoreImpl$incrementCollector$1 dataStoreImpl$incrementCollector$1;
        int i;
        MutexImpl mutexImpl;
        int i2;
        try {
            if (continuationImpl instanceof DataStoreImpl$incrementCollector$1) {
                dataStoreImpl$incrementCollector$1 = (DataStoreImpl$incrementCollector$1) continuationImpl;
                int i3 = dataStoreImpl$incrementCollector$1.q;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$incrementCollector$1.q = i3 - Integer.MIN_VALUE;
                    Object obj = dataStoreImpl$incrementCollector$1.o;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = dataStoreImpl$incrementCollector$1.q;
                    if (i == 0) {
                        if (i == 1) {
                            MutexImpl mutexImpl2 = dataStoreImpl$incrementCollector$1.n;
                            DataStoreImpl dataStoreImpl2 = dataStoreImpl$incrementCollector$1.m;
                            ResultKt.b(obj);
                            mutexImpl = mutexImpl2;
                            dataStoreImpl = dataStoreImpl2;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        mutexImpl = dataStoreImpl.e;
                        dataStoreImpl$incrementCollector$1.m = dataStoreImpl;
                        dataStoreImpl$incrementCollector$1.n = mutexImpl;
                        dataStoreImpl$incrementCollector$1.q = 1;
                        if (mutexImpl.a(dataStoreImpl$incrementCollector$1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    i2 = dataStoreImpl.f + 1;
                    dataStoreImpl.f = i2;
                    if (i2 == 1) {
                        dataStoreImpl.g = BuildersKt.c(dataStoreImpl.c, null, null, new DataStoreImpl$incrementCollector$2$1(dataStoreImpl, null), 3);
                    }
                    mutexImpl.h(null);
                    return Unit.a;
                }
            }
            i2 = dataStoreImpl.f + 1;
            dataStoreImpl.f = i2;
            if (i2 == 1) {
            }
            mutexImpl.h(null);
            return Unit.a;
        } catch (Throwable th) {
            mutexImpl.h(null);
            throw th;
        }
        dataStoreImpl$incrementCollector$1 = new DataStoreImpl$incrementCollector$1(dataStoreImpl, continuationImpl);
        Object obj2 = dataStoreImpl$incrementCollector$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dataStoreImpl$incrementCollector$1.q;
        if (i == 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(DataStoreImpl dataStoreImpl, boolean z, Continuation continuation) {
        DataStoreImpl$readDataAndUpdateCache$1 dataStoreImpl$readDataAndUpdateCache$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        DataStoreImpl dataStoreImpl2;
        State state;
        boolean z2;
        int i2;
        DataStoreImpl dataStoreImpl3;
        Pair pair;
        if (continuation instanceof DataStoreImpl$readDataAndUpdateCache$1) {
            dataStoreImpl$readDataAndUpdateCache$1 = (DataStoreImpl$readDataAndUpdateCache$1) continuation;
            int i3 = dataStoreImpl$readDataAndUpdateCache$1.r;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readDataAndUpdateCache$1.r = i3 - Integer.MIN_VALUE;
                Object obj = dataStoreImpl$readDataAndUpdateCache$1.p;
                coroutineSingletons = CoroutineSingletons.j;
                i = dataStoreImpl$readDataAndUpdateCache$1.r;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                dataStoreImpl3 = dataStoreImpl$readDataAndUpdateCache$1.m;
                                ResultKt.b(obj);
                                pair = (Pair) obj;
                                State state2 = (State) pair.j;
                                if (((Boolean) pair.k).booleanValue()) {
                                    dataStoreImpl3.h.b(state2);
                                }
                                return state2;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        dataStoreImpl3 = dataStoreImpl$readDataAndUpdateCache$1.m;
                        ResultKt.b(obj);
                        pair = (Pair) obj;
                        State state22 = (State) pair.j;
                        if (((Boolean) pair.k).booleanValue()) {
                        }
                        return state22;
                    }
                    z = dataStoreImpl$readDataAndUpdateCache$1.o;
                    state = dataStoreImpl$readDataAndUpdateCache$1.n;
                    dataStoreImpl2 = dataStoreImpl$readDataAndUpdateCache$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    State a = dataStoreImpl.h.a();
                    if (!(a instanceof UnInitialized)) {
                        InterProcessCoordinator f = dataStoreImpl.f();
                        dataStoreImpl$readDataAndUpdateCache$1.m = dataStoreImpl;
                        dataStoreImpl$readDataAndUpdateCache$1.n = a;
                        dataStoreImpl$readDataAndUpdateCache$1.o = z;
                        dataStoreImpl$readDataAndUpdateCache$1.r = 1;
                        Integer a2 = ((SingleProcessCoordinator) f).a();
                        if (a2 != coroutineSingletons) {
                            dataStoreImpl2 = dataStoreImpl;
                            state = a;
                            obj = a2;
                        }
                        return coroutineSingletons;
                    }
                    u2.l("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542");
                    return null;
                }
                int intValue = ((Number) obj).intValue();
                z2 = state instanceof Data;
                if (!z2) {
                    i2 = state.a;
                } else {
                    i2 = -1;
                }
                if (!z2 && intValue == i2) {
                    return state;
                }
                if (!z) {
                    InterProcessCoordinator f2 = dataStoreImpl2.f();
                    DataStoreImpl$readDataAndUpdateCache$3 dataStoreImpl$readDataAndUpdateCache$3 = new DataStoreImpl$readDataAndUpdateCache$3(dataStoreImpl2, null);
                    dataStoreImpl$readDataAndUpdateCache$1.m = dataStoreImpl2;
                    dataStoreImpl$readDataAndUpdateCache$1.n = null;
                    dataStoreImpl$readDataAndUpdateCache$1.r = 2;
                    obj = ((SingleProcessCoordinator) f2).b(dataStoreImpl$readDataAndUpdateCache$3, dataStoreImpl$readDataAndUpdateCache$1);
                    if (obj != coroutineSingletons) {
                        dataStoreImpl3 = dataStoreImpl2;
                        pair = (Pair) obj;
                        State state222 = (State) pair.j;
                        if (((Boolean) pair.k).booleanValue()) {
                        }
                        return state222;
                    }
                } else {
                    InterProcessCoordinator f3 = dataStoreImpl2.f();
                    DataStoreImpl$readDataAndUpdateCache$4 dataStoreImpl$readDataAndUpdateCache$4 = new DataStoreImpl$readDataAndUpdateCache$4(dataStoreImpl2, i2, null);
                    dataStoreImpl$readDataAndUpdateCache$1.m = dataStoreImpl2;
                    dataStoreImpl$readDataAndUpdateCache$1.n = null;
                    dataStoreImpl$readDataAndUpdateCache$1.r = 3;
                    obj = ((SingleProcessCoordinator) f3).c(dataStoreImpl$readDataAndUpdateCache$4, dataStoreImpl$readDataAndUpdateCache$1);
                    if (obj != coroutineSingletons) {
                        dataStoreImpl3 = dataStoreImpl2;
                        pair = (Pair) obj;
                        State state2222 = (State) pair.j;
                        if (((Boolean) pair.k).booleanValue()) {
                        }
                        return state2222;
                    }
                }
                return coroutineSingletons;
            }
        }
        dataStoreImpl$readDataAndUpdateCache$1 = new DataStoreImpl$readDataAndUpdateCache$1(dataStoreImpl, continuation);
        Object obj2 = dataStoreImpl$readDataAndUpdateCache$1.p;
        coroutineSingletons = CoroutineSingletons.j;
        i = dataStoreImpl$readDataAndUpdateCache$1.r;
        if (i == 0) {
        }
        int intValue2 = ((Number) obj2).intValue();
        z2 = state instanceof Data;
        if (!z2) {
        }
        if (!z2) {
        }
        if (!z) {
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(4:5|6|7|8))|72|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x005d, code lost:
    
        r11 = e;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0020. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x013f A[Catch: all -> 0x016d, TryCatch #3 {all -> 0x016d, blocks: (B:27:0x012d, B:29:0x013f, B:32:0x0147), top: B:26:0x012d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0147 A[Catch: all -> 0x016d, TRY_LEAVE, TryCatch #3 {all -> 0x016d, blocks: (B:27:0x012d, B:29:0x013f, B:32:0x0147), top: B:26:0x012d }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009d A[Catch: CorruptionException -> 0x005d, TryCatch #0 {CorruptionException -> 0x005d, blocks: (B:36:0x0058, B:37:0x0102, B:40:0x0066, B:41:0x00e2, B:56:0x0083, B:58:0x009d, B:59:0x00a3, B:65:0x008c, B:68:0x00cd), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r10v4, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object, java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, java.io.Serializable, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object e(DataStoreImpl dataStoreImpl, boolean z, ContinuationImpl continuationImpl) {
        DataStoreImpl$readDataOrHandleCorruption$1 dataStoreImpl$readDataOrHandleCorruption$1;
        CorruptionException corruptionException;
        DataStoreImpl dataStoreImpl2;
        boolean z2;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        CorruptionException corruptionException2;
        Object b;
        Ref$IntRef ref$IntRef;
        Ref$ObjectRef ref$ObjectRef3;
        Object obj;
        int i;
        Integer a;
        DataStoreImpl dataStoreImpl3;
        int i2;
        Object obj2;
        if (continuationImpl instanceof DataStoreImpl$readDataOrHandleCorruption$1) {
            dataStoreImpl$readDataOrHandleCorruption$1 = (DataStoreImpl$readDataOrHandleCorruption$1) continuationImpl;
            int i3 = dataStoreImpl$readDataOrHandleCorruption$1.u;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$readDataOrHandleCorruption$1.u = i3 - Integer.MIN_VALUE;
                Object obj3 = dataStoreImpl$readDataOrHandleCorruption$1.s;
                Object obj4 = CoroutineSingletons.j;
                int i4 = 0;
                switch (dataStoreImpl$readDataOrHandleCorruption$1.u) {
                    case 0:
                        ResultKt.b(obj3);
                        if (z) {
                            dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.u = 1;
                            obj3 = dataStoreImpl.j(dataStoreImpl$readDataOrHandleCorruption$1);
                            if (obj3 == obj4) {
                            }
                            if (obj3 == null) {
                                i = obj3.hashCode();
                            } else {
                                i = 0;
                            }
                            InterProcessCoordinator f = dataStoreImpl.f();
                            dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.n = obj3;
                            dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.r = i;
                            dataStoreImpl$readDataOrHandleCorruption$1.u = 2;
                            a = ((SingleProcessCoordinator) f).a();
                            if (a != obj4) {
                                dataStoreImpl3 = dataStoreImpl;
                                i2 = i;
                                obj2 = obj3;
                                obj3 = a;
                                return new Data(i2, ((Number) obj3).intValue(), obj2);
                            }
                        } else {
                            InterProcessCoordinator f2 = dataStoreImpl.f();
                            dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.u = 3;
                            obj3 = ((SingleProcessCoordinator) f2).a();
                            if (obj3 == obj4) {
                            }
                            int intValue = ((Number) obj3).intValue();
                            InterProcessCoordinator f3 = dataStoreImpl.f();
                            DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$2 = new DataStoreImpl$readDataOrHandleCorruption$2(dataStoreImpl, intValue, null);
                            dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.u = 4;
                            obj3 = ((SingleProcessCoordinator) f3).c(dataStoreImpl$readDataOrHandleCorruption$2, dataStoreImpl$readDataOrHandleCorruption$1);
                            if (obj3 == obj4) {
                            }
                            return (Data) obj3;
                        }
                        return obj4;
                    case 1:
                        z = dataStoreImpl$readDataOrHandleCorruption$1.q;
                        dataStoreImpl = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.m;
                        ResultKt.b(obj3);
                        if (obj3 == null) {
                        }
                        InterProcessCoordinator f4 = dataStoreImpl.f();
                        dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.n = obj3;
                        dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                        dataStoreImpl$readDataOrHandleCorruption$1.r = i;
                        dataStoreImpl$readDataOrHandleCorruption$1.u = 2;
                        a = ((SingleProcessCoordinator) f4).a();
                        if (a != obj4) {
                        }
                        return obj4;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        i2 = dataStoreImpl$readDataOrHandleCorruption$1.r;
                        z = dataStoreImpl$readDataOrHandleCorruption$1.q;
                        obj2 = dataStoreImpl$readDataOrHandleCorruption$1.n;
                        dataStoreImpl3 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.m;
                        try {
                            ResultKt.b(obj3);
                            return new Data(i2, ((Number) obj3).intValue(), obj2);
                        } catch (CorruptionException e) {
                            e = e;
                            dataStoreImpl = dataStoreImpl3;
                            ?? obj5 = new Object();
                            CorruptionHandler corruptionHandler = dataStoreImpl.b;
                            dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                            dataStoreImpl$readDataOrHandleCorruption$1.n = e;
                            dataStoreImpl$readDataOrHandleCorruption$1.o = obj5;
                            dataStoreImpl$readDataOrHandleCorruption$1.p = obj5;
                            dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                            dataStoreImpl$readDataOrHandleCorruption$1.u = 5;
                            Object a2 = corruptionHandler.a(e);
                            if (a2 != obj4) {
                                corruptionException = e;
                                obj3 = a2;
                                dataStoreImpl2 = dataStoreImpl;
                                z2 = z;
                                ref$ObjectRef = obj5;
                                ref$ObjectRef2 = obj5;
                                ref$ObjectRef.j = obj3;
                                ?? obj6 = new Object();
                                try {
                                    DataStoreImpl$readDataOrHandleCorruption$3 dataStoreImpl$readDataOrHandleCorruption$3 = new DataStoreImpl$readDataOrHandleCorruption$3(ref$ObjectRef2, dataStoreImpl2, obj6, null);
                                    dataStoreImpl$readDataOrHandleCorruption$1.m = corruptionException;
                                    dataStoreImpl$readDataOrHandleCorruption$1.n = ref$ObjectRef2;
                                    dataStoreImpl$readDataOrHandleCorruption$1.o = obj6;
                                    dataStoreImpl$readDataOrHandleCorruption$1.p = null;
                                    dataStoreImpl$readDataOrHandleCorruption$1.u = 6;
                                    if (!z2) {
                                    }
                                    if (b != obj4) {
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    corruptionException2 = corruptionException;
                                    ExceptionsKt.a(corruptionException2, th);
                                    throw corruptionException2;
                                }
                            }
                            return obj4;
                        }
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        z = dataStoreImpl$readDataOrHandleCorruption$1.q;
                        dataStoreImpl = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.m;
                        ResultKt.b(obj3);
                        int intValue2 = ((Number) obj3).intValue();
                        InterProcessCoordinator f32 = dataStoreImpl.f();
                        DataStoreImpl$readDataOrHandleCorruption$2 dataStoreImpl$readDataOrHandleCorruption$22 = new DataStoreImpl$readDataOrHandleCorruption$2(dataStoreImpl, intValue2, null);
                        dataStoreImpl$readDataOrHandleCorruption$1.m = dataStoreImpl;
                        dataStoreImpl$readDataOrHandleCorruption$1.q = z;
                        dataStoreImpl$readDataOrHandleCorruption$1.u = 4;
                        obj3 = ((SingleProcessCoordinator) f32).c(dataStoreImpl$readDataOrHandleCorruption$22, dataStoreImpl$readDataOrHandleCorruption$1);
                        if (obj3 == obj4) {
                        }
                        return (Data) obj3;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        boolean z3 = dataStoreImpl$readDataOrHandleCorruption$1.q;
                        ResultKt.b(obj3);
                        return (Data) obj3;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        z2 = dataStoreImpl$readDataOrHandleCorruption$1.q;
                        ref$ObjectRef = dataStoreImpl$readDataOrHandleCorruption$1.p;
                        Ref$ObjectRef ref$ObjectRef4 = (Ref$ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.o;
                        corruptionException = (CorruptionException) dataStoreImpl$readDataOrHandleCorruption$1.n;
                        dataStoreImpl2 = (DataStoreImpl) dataStoreImpl$readDataOrHandleCorruption$1.m;
                        ResultKt.b(obj3);
                        ref$ObjectRef2 = ref$ObjectRef4;
                        ref$ObjectRef.j = obj3;
                        ?? obj62 = new Object();
                        DataStoreImpl$readDataOrHandleCorruption$3 dataStoreImpl$readDataOrHandleCorruption$32 = new DataStoreImpl$readDataOrHandleCorruption$3(ref$ObjectRef2, dataStoreImpl2, obj62, null);
                        dataStoreImpl$readDataOrHandleCorruption$1.m = corruptionException;
                        dataStoreImpl$readDataOrHandleCorruption$1.n = ref$ObjectRef2;
                        dataStoreImpl$readDataOrHandleCorruption$1.o = obj62;
                        dataStoreImpl$readDataOrHandleCorruption$1.p = null;
                        dataStoreImpl$readDataOrHandleCorruption$1.u = 6;
                        if (!z2) {
                            dataStoreImpl2.getClass();
                            b = dataStoreImpl$readDataOrHandleCorruption$32.b(dataStoreImpl$readDataOrHandleCorruption$1);
                        } else {
                            b = ((SingleProcessCoordinator) dataStoreImpl2.f()).b(new DataStoreImpl$doWithWriteFileLock$3(null, dataStoreImpl$readDataOrHandleCorruption$32), dataStoreImpl$readDataOrHandleCorruption$1);
                        }
                        if (b != obj4) {
                            ref$IntRef = obj62;
                            ref$ObjectRef3 = ref$ObjectRef2;
                            obj = ref$ObjectRef3.j;
                            if (obj != null) {
                                i4 = obj.hashCode();
                            }
                            obj4 = new Data(i4, ref$IntRef.j, obj);
                        }
                        return obj4;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        ref$IntRef = (Ref$IntRef) dataStoreImpl$readDataOrHandleCorruption$1.o;
                        ref$ObjectRef3 = (Ref$ObjectRef) dataStoreImpl$readDataOrHandleCorruption$1.n;
                        corruptionException2 = (CorruptionException) dataStoreImpl$readDataOrHandleCorruption$1.m;
                        try {
                            ResultKt.b(obj3);
                            obj = ref$ObjectRef3.j;
                            if (obj != null) {
                            }
                            obj4 = new Data(i4, ref$IntRef.j, obj);
                            return obj4;
                        } catch (Throwable th2) {
                            th = th2;
                            ExceptionsKt.a(corruptionException2, th);
                            throw corruptionException2;
                        }
                    default:
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                }
            }
        }
        dataStoreImpl$readDataOrHandleCorruption$1 = new DataStoreImpl$readDataOrHandleCorruption$1(dataStoreImpl, continuationImpl);
        Object obj32 = dataStoreImpl$readDataOrHandleCorruption$1.s;
        Object obj42 = CoroutineSingletons.j;
        int i42 = 0;
        switch (dataStoreImpl$readDataOrHandleCorruption$1.u) {
        }
    }

    public final InterProcessCoordinator f() {
        return (InterProcessCoordinator) this.k.getValue();
    }

    @Override // androidx.datastore.core.DataStore
    public final Flow g() {
        return this.d;
    }

    @Override // androidx.datastore.core.DataStore
    public final Object h(Function2 function2, SuspendLambda suspendLambda) {
        CoroutineContext coroutineContext = suspendLambda.k;
        coroutineContext.getClass();
        UpdatingDataContextElement updatingDataContextElement = (UpdatingDataContextElement) coroutineContext.v(UpdatingDataContextElement$Companion$Key.j);
        if (updatingDataContextElement != null) {
            updatingDataContextElement.a(this);
        }
        return BuildersKt.e(new UpdatingDataContextElement(updatingDataContextElement, this), new DataStoreImpl$updateData$2(this, function2, null), suspendLambda);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        if (r2.b(r0) != r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
    
        if (r7 == r1) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object i(ContinuationImpl continuationImpl) {
        DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1;
        int i;
        int intValue;
        DataStoreImpl<T> dataStoreImpl;
        int i2;
        Throwable th;
        try {
            if (continuationImpl instanceof DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) {
                dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 = (DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1) continuationImpl;
                int i3 = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q = i3 - Integer.MIN_VALUE;
                    Object obj = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.o;
                    Object obj2 = CoroutineSingletons.j;
                    i = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                i2 = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.n;
                                dataStoreImpl = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.m;
                                try {
                                    ResultKt.b(obj);
                                    return Unit.a;
                                } catch (Throwable th2) {
                                    th = th2;
                                    dataStoreImpl.h.b(new ReadException(th, i2));
                                    throw th;
                                }
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        this = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.m;
                        ResultKt.b(obj);
                    } else {
                        ResultKt.b(obj);
                        InterProcessCoordinator f = f();
                        dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.m = this;
                        dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q = 1;
                        obj = ((SingleProcessCoordinator) f).a();
                    }
                    intValue = ((Number) obj).intValue();
                    InitDataStore initDataStore = this.i;
                    dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.m = this;
                    dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.n = intValue;
                    dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q = 2;
                }
            }
            InitDataStore initDataStore2 = this.i;
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.m = this;
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.n = intValue;
            dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q = 2;
        } catch (Throwable th3) {
            dataStoreImpl = this;
            i2 = intValue;
            th = th3;
            dataStoreImpl.h.b(new ReadException(th, i2));
            throw th;
        }
        dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1 = new DataStoreImpl$readAndInitOrPropagateAndThrowFailure$1(this, continuationImpl);
        Object obj3 = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.o;
        Object obj22 = CoroutineSingletons.j;
        i = dataStoreImpl$readAndInitOrPropagateAndThrowFailure$1.q;
        if (i == 0) {
        }
        intValue = ((Number) obj3).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function3] */
    public final Object j(ContinuationImpl continuationImpl) {
        return ((FileStorageConnection) ((StorageConnection) this.j.getValue())).a(new SuspendLambda(3, null), continuationImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object k(Object obj, boolean z, ContinuationImpl continuationImpl) {
        DataStoreImpl$writeData$1 dataStoreImpl$writeData$1;
        int i;
        Ref$IntRef ref$IntRef;
        if (continuationImpl instanceof DataStoreImpl$writeData$1) {
            dataStoreImpl$writeData$1 = (DataStoreImpl$writeData$1) continuationImpl;
            int i2 = dataStoreImpl$writeData$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreImpl$writeData$1.p = i2 - Integer.MIN_VALUE;
                Object obj2 = dataStoreImpl$writeData$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dataStoreImpl$writeData$1.p;
                if (i == 0) {
                    if (i == 1) {
                        ref$IntRef = dataStoreImpl$writeData$1.m;
                        ResultKt.b(obj2);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    ?? obj3 = new Object();
                    StorageConnection storageConnection = (StorageConnection) this.j.getValue();
                    DataStoreImpl$writeData$2 dataStoreImpl$writeData$2 = new DataStoreImpl$writeData$2(obj3, this, obj, z, null);
                    dataStoreImpl$writeData$1.m = obj3;
                    dataStoreImpl$writeData$1.p = 1;
                    if (((FileStorageConnection) storageConnection).b(dataStoreImpl$writeData$2, dataStoreImpl$writeData$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$IntRef = obj3;
                }
                return new Integer(ref$IntRef.j);
            }
        }
        dataStoreImpl$writeData$1 = new DataStoreImpl$writeData$1(this, continuationImpl);
        Object obj22 = dataStoreImpl$writeData$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dataStoreImpl$writeData$1.p;
        if (i == 0) {
        }
        return new Integer(ref$IntRef.j);
    }
}
