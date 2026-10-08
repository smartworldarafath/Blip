package androidx.room;

import androidx.room.concurrent.CloseBarrier;
import androidx.work.impl.WorkDatabase_Impl;
import defpackage.hh;
import defpackage.jb;
import defpackage.q;
import defpackage.qg;
import defpackage.u2;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker {
    public static final String[] l = {"INSERT", "UPDATE", "DELETE"};
    public final WorkDatabase_Impl a;
    public final LinkedHashMap b;
    public final LinkedHashMap c;
    public final boolean d;
    public final Function1 e;
    public final String[] g;
    public final ObservedTableStates h;
    public final ObservedTableVersions i;
    public final AtomicBoolean j = new AtomicBoolean(false);
    public Function0 k = new hh(1);
    public final LinkedHashMap f = new LinkedHashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public TriggerBasedInvalidationTracker(WorkDatabase_Impl workDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, Function1 function1) {
        String str;
        this.a = workDatabase_Impl;
        this.b = linkedHashMap;
        this.c = linkedHashMap2;
        this.d = z;
        this.e = function1;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str2 = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            this.f.put(lowerCase, Integer.valueOf(i));
            String str3 = (String) this.b.get(strArr[i]);
            if (str3 != null) {
                str = str3.toLowerCase(locale);
                str.getClass();
            } else {
                str = null;
            }
            if (str != null) {
                lowerCase = str;
            }
            strArr2[i] = lowerCase;
        }
        this.g = strArr2;
        for (Map.Entry entry : this.b.entrySet()) {
            String str4 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase2 = str4.toLowerCase(locale2);
            lowerCase2.getClass();
            if (this.f.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(locale2);
                lowerCase3.getClass();
                LinkedHashMap linkedHashMap3 = this.f;
                linkedHashMap3.put(lowerCase3, MapsKt.c(lowerCase2, linkedHashMap3));
            }
        }
        this.h = new ObservedTableStates(this.g.length);
        this.i = new ObservedTableVersions(this.g.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0051, code lost:
    
        if (r4 == r6) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, PooledConnection pooledConnection, ContinuationImpl continuationImpl) {
        TriggerBasedInvalidationTracker$checkInvalidatedTables$1 triggerBasedInvalidationTracker$checkInvalidatedTables$1;
        int i;
        Set set;
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$checkInvalidatedTables$1) {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = (TriggerBasedInvalidationTracker$checkInvalidatedTables$1) continuationImpl;
            int i2 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1.p = i2 - Integer.MIN_VALUE;
                Object obj = triggerBasedInvalidationTracker$checkInvalidatedTables$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = triggerBasedInvalidationTracker$checkInvalidatedTables$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            Set set2 = (Set) triggerBasedInvalidationTracker$checkInvalidatedTables$1.m;
                            ResultKt.b(obj);
                            return set2;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    pooledConnection = (PooledConnection) triggerBasedInvalidationTracker$checkInvalidatedTables$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    qg qgVar = new qg(19);
                    triggerBasedInvalidationTracker$checkInvalidatedTables$1.m = pooledConnection;
                    triggerBasedInvalidationTracker$checkInvalidatedTables$1.p = 1;
                    obj = pooledConnection.c("SELECT * FROM room_table_modification_log WHERE invalidated = 1", qgVar, triggerBasedInvalidationTracker$checkInvalidatedTables$1);
                }
                set = (Set) obj;
                if (!set.isEmpty()) {
                    triggerBasedInvalidationTracker$checkInvalidatedTables$1.m = set;
                    triggerBasedInvalidationTracker$checkInvalidatedTables$1.p = 2;
                    if (TransactorKt.a(pooledConnection, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", triggerBasedInvalidationTracker$checkInvalidatedTables$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return set;
            }
        }
        triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(triggerBasedInvalidationTracker, continuationImpl);
        Object obj2 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = triggerBasedInvalidationTracker$checkInvalidatedTables$1.p;
        if (i == 0) {
        }
        set = (Set) obj2;
        if (!set.isEmpty()) {
        }
        return set;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0084 A[Catch: all -> 0x00c9, TryCatch #1 {all -> 0x00c9, blocks: (B:13:0x0079, B:15:0x0084, B:18:0x00bd, B:25:0x0093, B:26:0x0095, B:28:0x00a2, B:30:0x00ac, B:32:0x00b2, B:33:0x00b0, B:36:0x00b7, B:50:0x0049, B:54:0x0055, B:58:0x0067), top: B:49:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ContinuationImpl continuationImpl) {
        TriggerBasedInvalidationTracker$notifyInvalidation$1 triggerBasedInvalidationTracker$notifyInvalidation$1;
        int i;
        CloseBarrier closeBarrier;
        Object p;
        Throwable th;
        CloseBarrier closeBarrier2;
        Set set;
        Object value;
        int[] iArr;
        int i2;
        WorkDatabase_Impl workDatabase_Impl = triggerBasedInvalidationTracker.a;
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$notifyInvalidation$1) {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = (TriggerBasedInvalidationTracker$notifyInvalidation$1) continuationImpl;
            int i3 = triggerBasedInvalidationTracker$notifyInvalidation$1.q;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$notifyInvalidation$1.q = i3 - Integer.MIN_VALUE;
                Object obj = triggerBasedInvalidationTracker$notifyInvalidation$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = triggerBasedInvalidationTracker$notifyInvalidation$1.q;
                if (i == 0) {
                    if (i == 1) {
                        closeBarrier2 = triggerBasedInvalidationTracker$notifyInvalidation$1.n;
                        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker$notifyInvalidation$1.m;
                        try {
                            ResultKt.b(obj);
                            closeBarrier = closeBarrier2;
                            triggerBasedInvalidationTracker = triggerBasedInvalidationTracker2;
                            p = obj;
                        } catch (Throwable th2) {
                            th = th2;
                            closeBarrier2.b();
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    closeBarrier = workDatabase_Impl.f;
                    boolean a = closeBarrier.a();
                    EmptySet emptySet = EmptySet.j;
                    if (a) {
                        try {
                            if (!triggerBasedInvalidationTracker.j.compareAndSet(true, false)) {
                                closeBarrier.b();
                                return emptySet;
                            }
                            if (!((Boolean) triggerBasedInvalidationTracker.k.a()).booleanValue()) {
                                closeBarrier.b();
                                return emptySet;
                            }
                            TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(triggerBasedInvalidationTracker, null);
                            triggerBasedInvalidationTracker$notifyInvalidation$1.m = triggerBasedInvalidationTracker;
                            triggerBasedInvalidationTracker$notifyInvalidation$1.n = closeBarrier;
                            triggerBasedInvalidationTracker$notifyInvalidation$1.q = 1;
                            p = workDatabase_Impl.p(false, triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1, triggerBasedInvalidationTracker$notifyInvalidation$1);
                            if (p == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } catch (Throwable th3) {
                            CloseBarrier closeBarrier3 = closeBarrier;
                            th = th3;
                            closeBarrier2 = closeBarrier3;
                            closeBarrier2.b();
                            throw th;
                        }
                    } else {
                        return emptySet;
                    }
                }
                set = (Set) p;
                if (!set.isEmpty()) {
                    ObservedTableVersions observedTableVersions = triggerBasedInvalidationTracker.i;
                    observedTableVersions.getClass();
                    set.getClass();
                    if (!set.isEmpty()) {
                        MutableStateFlow mutableStateFlow = observedTableVersions.a;
                        do {
                            value = mutableStateFlow.getValue();
                            int[] iArr2 = (int[]) value;
                            int length = iArr2.length;
                            iArr = new int[length];
                            for (int i4 = 0; i4 < length; i4++) {
                                if (set.contains(Integer.valueOf(i4))) {
                                    i2 = iArr2[i4] + 1;
                                } else {
                                    i2 = iArr2[i4];
                                }
                                iArr[i4] = i2;
                            }
                        } while (!mutableStateFlow.e(value, iArr));
                    }
                    ((InvalidationTracker$implementation$1) triggerBasedInvalidationTracker.e).b(set);
                }
                closeBarrier.b();
                return set;
            }
        }
        triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(triggerBasedInvalidationTracker, continuationImpl);
        Object obj2 = triggerBasedInvalidationTracker$notifyInvalidation$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = triggerBasedInvalidationTracker$notifyInvalidation$1.q;
        if (i == 0) {
        }
        set = (Set) p;
        if (!set.isEmpty()) {
        }
        closeBarrier.b();
        return set;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00de, code lost:
    
        if (androidx.room.TransactorKt.a(r10, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00e0, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
    
        if (androidx.room.TransactorKt.a(r1, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00de -> B:11:0x00e1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, int i, ContinuationImpl continuationImpl) {
        TriggerBasedInvalidationTracker$startTrackingTable$1 triggerBasedInvalidationTracker$startTrackingTable$1;
        int i2;
        String[] strArr;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2;
        int i3;
        PooledConnection pooledConnection;
        int i4;
        String str;
        String str2;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker3 = triggerBasedInvalidationTracker;
        PooledConnection pooledConnection2 = transactor;
        int i5 = i;
        triggerBasedInvalidationTracker3.getClass();
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$startTrackingTable$1) {
            triggerBasedInvalidationTracker$startTrackingTable$1 = (TriggerBasedInvalidationTracker$startTrackingTable$1) continuationImpl;
            int i6 = triggerBasedInvalidationTracker$startTrackingTable$1.v;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$startTrackingTable$1.v = i6 - Integer.MIN_VALUE;
                Object obj = triggerBasedInvalidationTracker$startTrackingTable$1.t;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i2 = triggerBasedInvalidationTracker$startTrackingTable$1.v;
                boolean z = true;
                if (i2 == 0) {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            i3 = triggerBasedInvalidationTracker$startTrackingTable$1.s;
                            i4 = triggerBasedInvalidationTracker$startTrackingTable$1.r;
                            i5 = triggerBasedInvalidationTracker$startTrackingTable$1.q;
                            strArr = triggerBasedInvalidationTracker$startTrackingTable$1.p;
                            str = triggerBasedInvalidationTracker$startTrackingTable$1.o;
                            pooledConnection = triggerBasedInvalidationTracker$startTrackingTable$1.n;
                            triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker$startTrackingTable$1.m;
                            ResultKt.b(obj);
                            boolean z2 = true;
                            i4++;
                            z = z2;
                            if (i4 < i3) {
                                String str3 = strArr[i4];
                                if (triggerBasedInvalidationTracker2.d) {
                                    str2 = "TEMP";
                                } else {
                                    str2 = "";
                                }
                                z2 = z;
                                StringBuilder o = q.o("CREATE ", str2, " TRIGGER IF NOT EXISTS `", "room_table_modification_trigger_" + str + '_' + str3, "` AFTER ");
                                q.B(o, str3, " ON `", str, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = ");
                                String i7 = jb.i(o, i5, " AND invalidated = 0; END");
                                triggerBasedInvalidationTracker$startTrackingTable$1.m = triggerBasedInvalidationTracker2;
                                triggerBasedInvalidationTracker$startTrackingTable$1.n = pooledConnection;
                                triggerBasedInvalidationTracker$startTrackingTable$1.o = str;
                                triggerBasedInvalidationTracker$startTrackingTable$1.p = strArr;
                                triggerBasedInvalidationTracker$startTrackingTable$1.q = i5;
                                triggerBasedInvalidationTracker$startTrackingTable$1.r = i4;
                                triggerBasedInvalidationTracker$startTrackingTable$1.s = i3;
                                triggerBasedInvalidationTracker$startTrackingTable$1.v = 2;
                            } else {
                                return Unit.a;
                            }
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        int i8 = triggerBasedInvalidationTracker$startTrackingTable$1.q;
                        pooledConnection2 = triggerBasedInvalidationTracker$startTrackingTable$1.n;
                        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker4 = triggerBasedInvalidationTracker$startTrackingTable$1.m;
                        ResultKt.b(obj);
                        i5 = i8;
                        triggerBasedInvalidationTracker3 = triggerBasedInvalidationTracker4;
                    }
                } else {
                    ResultKt.b(obj);
                    String str4 = "INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i5 + ", 0)";
                    triggerBasedInvalidationTracker$startTrackingTable$1.m = triggerBasedInvalidationTracker3;
                    triggerBasedInvalidationTracker$startTrackingTable$1.n = pooledConnection2;
                    triggerBasedInvalidationTracker$startTrackingTable$1.q = i5;
                    triggerBasedInvalidationTracker$startTrackingTable$1.v = 1;
                }
                String str5 = triggerBasedInvalidationTracker3.g[i5];
                strArr = l;
                triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker3;
                i3 = 3;
                pooledConnection = pooledConnection2;
                i4 = 0;
                str = str5;
                if (i4 < i3) {
                }
            }
        }
        triggerBasedInvalidationTracker$startTrackingTable$1 = new TriggerBasedInvalidationTracker$startTrackingTable$1(triggerBasedInvalidationTracker3, continuationImpl);
        Object obj2 = triggerBasedInvalidationTracker$startTrackingTable$1.t;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i2 = triggerBasedInvalidationTracker$startTrackingTable$1.v;
        boolean z3 = true;
        if (i2 == 0) {
        }
        String str52 = triggerBasedInvalidationTracker3.g[i5];
        strArr = l;
        triggerBasedInvalidationTracker2 = triggerBasedInvalidationTracker3;
        i3 = 3;
        pooledConnection = pooledConnection2;
        i4 = 0;
        str = str52;
        if (i4 < i3) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r4v5, types: [androidx.room.PooledConnection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x008c -> B:10:0x008f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, int i, ContinuationImpl continuationImpl) {
        TriggerBasedInvalidationTracker$stopTrackingTable$1 triggerBasedInvalidationTracker$stopTrackingTable$1;
        int i2;
        String str;
        int i3;
        Transactor transactor2;
        int i4;
        String[] strArr;
        triggerBasedInvalidationTracker.getClass();
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$stopTrackingTable$1) {
            triggerBasedInvalidationTracker$stopTrackingTable$1 = (TriggerBasedInvalidationTracker$stopTrackingTable$1) continuationImpl;
            int i5 = triggerBasedInvalidationTracker$stopTrackingTable$1.t;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$stopTrackingTable$1.t = i5 - Integer.MIN_VALUE;
                Object obj = triggerBasedInvalidationTracker$stopTrackingTable$1.r;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i2 = triggerBasedInvalidationTracker$stopTrackingTable$1.t;
                if (i2 == 0) {
                    if (i2 == 1) {
                        i3 = triggerBasedInvalidationTracker$stopTrackingTable$1.q;
                        i4 = triggerBasedInvalidationTracker$stopTrackingTable$1.p;
                        String[] strArr2 = triggerBasedInvalidationTracker$stopTrackingTable$1.o;
                        str = triggerBasedInvalidationTracker$stopTrackingTable$1.n;
                        ?? r4 = triggerBasedInvalidationTracker$stopTrackingTable$1.m;
                        ResultKt.b(obj);
                        strArr = strArr2;
                        transactor2 = r4;
                        i4++;
                        if (i4 < i3) {
                            String str2 = "DROP TRIGGER IF EXISTS `" + ("room_table_modification_trigger_" + str + '_' + strArr[i4]) + '`';
                            triggerBasedInvalidationTracker$stopTrackingTable$1.m = transactor2;
                            triggerBasedInvalidationTracker$stopTrackingTable$1.n = str;
                            triggerBasedInvalidationTracker$stopTrackingTable$1.o = strArr;
                            triggerBasedInvalidationTracker$stopTrackingTable$1.p = i4;
                            triggerBasedInvalidationTracker$stopTrackingTable$1.q = i3;
                            triggerBasedInvalidationTracker$stopTrackingTable$1.t = 1;
                            if (TransactorKt.a(transactor2, str2, triggerBasedInvalidationTracker$stopTrackingTable$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            i4++;
                            if (i4 < i3) {
                                return Unit.a;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    str = triggerBasedInvalidationTracker.g[i];
                    i3 = 3;
                    transactor2 = transactor;
                    i4 = 0;
                    strArr = l;
                    if (i4 < i3) {
                    }
                }
            }
        }
        triggerBasedInvalidationTracker$stopTrackingTable$1 = new TriggerBasedInvalidationTracker$stopTrackingTable$1(triggerBasedInvalidationTracker, continuationImpl);
        Object obj2 = triggerBasedInvalidationTracker$stopTrackingTable$1.r;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i2 = triggerBasedInvalidationTracker$stopTrackingTable$1.t;
        if (i2 == 0) {
        }
    }

    public final void e(Function0 function0, Function0 function02) {
        function0.getClass();
        function02.getClass();
        if (this.j.compareAndSet(false, true)) {
            function0.a();
            ContextScope contextScope = this.a.a;
            if (contextScope != null) {
                BuildersKt.c(contextScope, new CoroutineName(), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, function02, null), 2);
            } else {
                Intrinsics.e("coroutineScope");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object f(ContinuationImpl continuationImpl) {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        int i;
        CloseBarrier closeBarrier;
        if (continuationImpl instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) continuationImpl;
            int i2 = triggerBasedInvalidationTracker$syncTriggers$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.p = i2 - Integer.MIN_VALUE;
                Object obj = triggerBasedInvalidationTracker$syncTriggers$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = triggerBasedInvalidationTracker$syncTriggers$1.p;
                if (i == 0) {
                    if (i == 1) {
                        closeBarrier = triggerBasedInvalidationTracker$syncTriggers$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (Throwable th) {
                            th = th;
                            closeBarrier.b();
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    WorkDatabase_Impl workDatabase_Impl = this.a;
                    CloseBarrier closeBarrier2 = workDatabase_Impl.f;
                    if (closeBarrier2.a()) {
                        try {
                            TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                            triggerBasedInvalidationTracker$syncTriggers$1.m = closeBarrier2;
                            triggerBasedInvalidationTracker$syncTriggers$1.p = 1;
                            if (workDatabase_Impl.p(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            closeBarrier = closeBarrier2;
                        } catch (Throwable th2) {
                            th = th2;
                            closeBarrier = closeBarrier2;
                            closeBarrier.b();
                            throw th;
                        }
                    }
                    return Unit.a;
                }
                closeBarrier.b();
                return Unit.a;
            }
        }
        triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuationImpl);
        Object obj2 = triggerBasedInvalidationTracker$syncTriggers$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = triggerBasedInvalidationTracker$syncTriggers$1.p;
        if (i == 0) {
        }
        closeBarrier.b();
        return Unit.a;
    }
}
