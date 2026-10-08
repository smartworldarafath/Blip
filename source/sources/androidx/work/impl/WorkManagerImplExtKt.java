package androidx.work.impl;

import android.app.ActivityManager;
import android.content.Context;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.DatabaseConfiguration;
import androidx.room.DelegatingOpenHelper;
import androidx.room.RoomConnectionManager;
import androidx.room.RoomDatabase;
import androidx.room.RoomOpenDelegate;
import androidx.room.RoomOpenDelegateMarker;
import androidx.room.TransactionExecutor;
import androidx.room.migration.Migration;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.room.support.PrePackagedCopyOpenHelper;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.Configuration;
import androidx.work.SystemClock;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.SerialExecutorImpl;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.e3;
import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import defpackage.wc;
import defpackage.z2;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.NotImplementedError;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkManagerImplExtKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0485  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final WorkManagerImpl a(Context context, Configuration configuration) {
        RoomDatabase.Builder builder;
        ActivityManager activityManager;
        String str;
        String str2;
        RoomOpenDelegate roomOpenDelegate;
        RoomConnectionManager roomConnectionManager;
        SupportSQLiteOpenHelper supportSQLiteOpenHelper;
        boolean z;
        context.getClass();
        WorkManagerTaskExecutor workManagerTaskExecutor = new WorkManagerTaskExecutor(configuration.c);
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        SerialExecutorImpl serialExecutorImpl = workManagerTaskExecutor.a;
        serialExecutorImpl.getClass();
        SystemClock systemClock = configuration.d;
        boolean z2 = context.getResources().getBoolean(R.bool.workmanager_test_configuration);
        systemClock.getClass();
        int i = 5;
        if (z2) {
            builder = new RoomDatabase.Builder(applicationContext, null);
            builder.i = true;
        } else if (!StringsKt.t("androidx.work.workdb")) {
            RoomDatabase.Builder builder2 = new RoomDatabase.Builder(applicationContext, "androidx.work.workdb");
            builder2.h = new e3(applicationContext, i);
            builder = builder2;
        } else {
            u2.g("Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder");
            return null;
        }
        builder.f = serialExecutorImpl;
        CleanupCallback cleanupCallback = new CleanupCallback(systemClock);
        ArrayList arrayList = builder.d;
        arrayList.add(cleanupCallback);
        builder.a(Migration_1_2.c);
        builder.a(new RescheduleMigration(applicationContext, 2, 3));
        builder.a(Migration_3_4.c);
        builder.a(Migration_4_5.c);
        builder.a(new RescheduleMigration(applicationContext, 5, 6));
        builder.a(Migration_6_7.c);
        builder.a(Migration_7_8.c);
        builder.a(Migration_8_9.c);
        builder.a(new WorkMigration9To10(applicationContext));
        builder.a(new RescheduleMigration(applicationContext, 10, 11));
        builder.a(Migration_11_12.c);
        builder.a(Migration_12_13.c);
        builder.a(Migration_15_16.c);
        builder.a(Migration_16_17.c);
        builder.a(new RescheduleMigration(applicationContext, 21, 22));
        builder.p = false;
        builder.q = true;
        builder.r = true;
        Executor executor = builder.f;
        if (executor == null && builder.g == null) {
            z2 z2Var = ArchTaskExecutor.c;
            builder.g = z2Var;
            builder.f = z2Var;
        } else if (executor != null && builder.g == null) {
            builder.g = executor;
        } else if (executor == null) {
            builder.f = builder.g;
        }
        LinkedHashSet linkedHashSet = builder.n;
        linkedHashSet.getClass();
        LinkedHashSet linkedHashSet2 = builder.m;
        linkedHashSet2.getClass();
        if (!linkedHashSet.isEmpty()) {
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                int intValue = ((Number) it.next()).intValue();
                if (linkedHashSet2.contains(Integer.valueOf(intValue))) {
                    fe.l(q.g(intValue, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "));
                    return null;
                }
            }
        }
        e3 e3Var = builder.h;
        e3 e3Var2 = e3Var;
        if (e3Var == null) {
            e3Var2 = new Object();
        }
        e3 e3Var3 = e3Var2;
        if (builder.k > 0) {
            if (builder.c != null) {
                u2.g("Required value was null.");
                return null;
            }
            u2.g("Cannot create auto-closing database for an in-memory database.");
            return null;
        }
        boolean z3 = builder.i;
        RoomDatabase.JournalMode journalMode = builder.j;
        journalMode.getClass();
        Context context2 = builder.b;
        context2.getClass();
        if (journalMode == RoomDatabase.JournalMode.j) {
            Object systemService = context2.getSystemService("activity");
            if (systemService instanceof ActivityManager) {
                activityManager = (ActivityManager) systemService;
            } else {
                activityManager = null;
            }
            if (activityManager != null && !activityManager.isLowRamDevice()) {
                journalMode = RoomDatabase.JournalMode.l;
            } else {
                journalMode = RoomDatabase.JournalMode.k;
            }
        }
        RoomDatabase.JournalMode journalMode2 = journalMode;
        Executor executor2 = builder.f;
        if (executor2 != null) {
            Executor executor3 = builder.g;
            if (executor3 != null) {
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context2, builder.c, e3Var3, builder.l, arrayList, z3, journalMode2, executor2, executor3, null, builder.p, builder.q, linkedHashSet2, null, null, null, builder.e, builder.o, builder.r, null, null);
                databaseConfiguration.v = builder.s;
                Class a = JvmClassMappingKt.a(builder.a);
                Package r4 = a.getPackage();
                if (r4 == null || (str = r4.getName()) == null) {
                    str = "";
                }
                String canonicalName = a.getCanonicalName();
                canonicalName.getClass();
                if (str.length() != 0) {
                    canonicalName = canonicalName.substring(str.length() + 1);
                }
                String replace = canonicalName.replace('.', '_');
                replace.getClass();
                String concat = replace.concat("_Impl");
                try {
                    if (str.length() == 0) {
                        str2 = concat;
                    } else {
                        str2 = str + '.' + concat;
                    }
                    Class<?> cls = Class.forName(str2, true, a.getClassLoader());
                    cls.getClass();
                    RoomDatabase roomDatabase = (RoomDatabase) cls.getDeclaredConstructor(null).newInstance(null);
                    roomDatabase.getClass();
                    roomDatabase.j = databaseConfiguration.v;
                    try {
                        RoomOpenDelegateMarker e = roomDatabase.e();
                        e.getClass();
                        roomOpenDelegate = (RoomOpenDelegate) e;
                    } catch (NotImplementedError unused) {
                        roomOpenDelegate = null;
                    }
                    if (roomOpenDelegate != null) {
                        roomDatabase.d = new RoomConnectionManager(databaseConfiguration, roomOpenDelegate);
                        roomDatabase.e = roomDatabase.d();
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        Set h = roomDatabase.h();
                        int size = h.size();
                        boolean[] zArr = new boolean[size];
                        Iterator it2 = h.iterator();
                        while (true) {
                            boolean hasNext = it2.hasNext();
                            int i2 = -1;
                            List list = databaseConfiguration.r;
                            if (hasNext) {
                                KClass kClass = (KClass) it2.next();
                                int size2 = list.size() - 1;
                                if (size2 >= 0) {
                                    while (true) {
                                        int i3 = size2 - 1;
                                        if (((ClassReference) kClass).d(list.get(size2))) {
                                            zArr[size2] = true;
                                            i2 = size2;
                                            break;
                                        }
                                        if (i3 < 0) {
                                            break;
                                        }
                                        size2 = i3;
                                    }
                                }
                                if (i2 >= 0) {
                                    linkedHashMap.put(kClass, list.get(i2));
                                } else {
                                    fe.u("A required auto migration spec (", ((ClassReference) kClass).b(), ") is missing in the database configuration.");
                                    return null;
                                }
                            } else {
                                int size3 = list.size() - 1;
                                if (size3 >= 0) {
                                    while (true) {
                                        int i4 = size3 - 1;
                                        if (size3 >= size || !zArr[size3]) {
                                            break;
                                        }
                                        if (i4 < 0) {
                                            break;
                                        }
                                        size3 = i4;
                                    }
                                    u2.g("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                                    return null;
                                }
                                for (Migration migration : roomDatabase.c(linkedHashMap)) {
                                    int i5 = migration.a;
                                    int i6 = migration.b;
                                    RoomDatabase.MigrationContainer migrationContainer = databaseConfiguration.d;
                                    LinkedHashMap linkedHashMap2 = migrationContainer.a;
                                    if (linkedHashMap2.containsKey(Integer.valueOf(i5))) {
                                        Map map = (Map) linkedHashMap2.get(Integer.valueOf(i5));
                                        if (map == null) {
                                            map = EmptyMap.j;
                                        }
                                        z = map.containsKey(Integer.valueOf(i6));
                                    } else {
                                        z = false;
                                    }
                                    if (!z) {
                                        migrationContainer.a(migration);
                                    }
                                }
                                LinkedHashMap i7 = roomDatabase.i();
                                boolean[] zArr2 = new boolean[i7.size()];
                                Iterator it3 = i7.entrySet().iterator();
                                while (true) {
                                    boolean hasNext2 = it3.hasNext();
                                    List list2 = databaseConfiguration.q;
                                    if (hasNext2) {
                                        Map.Entry entry = (Map.Entry) it3.next();
                                        KClass kClass2 = (KClass) entry.getKey();
                                        for (KClass kClass3 : (List) entry.getValue()) {
                                            int size4 = list2.size() - 1;
                                            if (size4 >= 0) {
                                                while (true) {
                                                    int i8 = size4 - 1;
                                                    if (((ClassReference) kClass3).d(list2.get(size4))) {
                                                        zArr2[size4] = true;
                                                        break;
                                                    }
                                                    if (i8 < 0) {
                                                        break;
                                                    }
                                                    size4 = i8;
                                                }
                                            }
                                            size4 = -1;
                                            if (size4 >= 0) {
                                                Object obj = list2.get(size4);
                                                kClass3.getClass();
                                                obj.getClass();
                                                roomDatabase.i.put(kClass3, obj);
                                            } else {
                                                k8.r("A required type converter (", ((ClassReference) kClass3).b(), ") for ", ((ClassReference) kClass2).b(), " is missing in the database configuration.");
                                                return null;
                                            }
                                        }
                                    } else {
                                        int size5 = list2.size() - 1;
                                        if (size5 >= 0) {
                                            while (true) {
                                                int i9 = size5 - 1;
                                                if (zArr2[size5]) {
                                                    if (i9 < 0) {
                                                        break;
                                                    }
                                                    size5 = i9;
                                                } else {
                                                    d.g("Unexpected type converter ", list2.get(size5), ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                                                    return null;
                                                }
                                            }
                                        }
                                        roomDatabase.b = databaseConfiguration.h;
                                        roomDatabase.c = new TransactionExecutor(databaseConfiguration.i);
                                        Executor executor4 = roomDatabase.b;
                                        if (executor4 != null) {
                                            ContextScope a2 = CoroutineScopeKt.a(CoroutineContext.Element.DefaultImpls.c(ExecutorsKt.a(executor4), SupervisorKt.b()));
                                            roomDatabase.a = a2;
                                            CoroutineContext coroutineContext = a2.j;
                                            TransactionExecutor transactionExecutor = roomDatabase.c;
                                            if (transactionExecutor != null) {
                                                coroutineContext.A(ExecutorsKt.a(transactionExecutor));
                                                roomDatabase.g = databaseConfiguration.f;
                                                RoomConnectionManager roomConnectionManager2 = roomDatabase.d;
                                                if (roomConnectionManager2 != null) {
                                                    SupportSQLiteOpenHelper g = roomConnectionManager2.g();
                                                    if (g != null) {
                                                        while (!(g instanceof PrePackagedCopyOpenHelper)) {
                                                            if (g instanceof DelegatingOpenHelper) {
                                                                g = ((DelegatingOpenHelper) g).a();
                                                            }
                                                        }
                                                        roomConnectionManager = roomDatabase.d;
                                                        if (roomConnectionManager == null) {
                                                            SupportSQLiteOpenHelper g2 = roomConnectionManager.g();
                                                            if (g2 != null) {
                                                                while (!(g2 instanceof AutoClosingRoomOpenHelper)) {
                                                                    if (g2 instanceof DelegatingOpenHelper) {
                                                                        g2 = ((DelegatingOpenHelper) g2).a();
                                                                    }
                                                                }
                                                                supportSQLiteOpenHelper = g2;
                                                                WorkDatabase workDatabase = (WorkDatabase) roomDatabase;
                                                                Context applicationContext2 = context.getApplicationContext();
                                                                applicationContext2.getClass();
                                                                Trackers trackers = new Trackers(applicationContext2, workManagerTaskExecutor);
                                                                Processor processor = new Processor(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase);
                                                                return new WorkManagerImpl(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase, (List) WorkManagerImplExtKt$WorkManagerImpl$1.r.k(context, configuration, workManagerTaskExecutor, workDatabase, trackers, processor), processor, trackers);
                                                            }
                                                            supportSQLiteOpenHelper = null;
                                                            WorkDatabase workDatabase2 = (WorkDatabase) roomDatabase;
                                                            Context applicationContext22 = context.getApplicationContext();
                                                            applicationContext22.getClass();
                                                            Trackers trackers2 = new Trackers(applicationContext22, workManagerTaskExecutor);
                                                            Processor processor2 = new Processor(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase2);
                                                            return new WorkManagerImpl(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase2, (List) WorkManagerImplExtKt$WorkManagerImpl$1.r.k(context, configuration, workManagerTaskExecutor, workDatabase2, trackers2, processor2), processor2, trackers2);
                                                        }
                                                        Intrinsics.e("connectionManager");
                                                        throw null;
                                                    }
                                                    g = null;
                                                    roomConnectionManager = roomDatabase.d;
                                                    if (roomConnectionManager == null) {
                                                    }
                                                } else {
                                                    Intrinsics.e("connectionManager");
                                                    throw null;
                                                }
                                            } else {
                                                Intrinsics.e("internalTransactionExecutor");
                                                throw null;
                                            }
                                        } else {
                                            Intrinsics.e("internalQueryExecutor");
                                            throw null;
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        new RoomConnectionManager(databaseConfiguration, new wc(9, roomDatabase));
                        throw null;
                    }
                } catch (ClassNotFoundException e2) {
                    throw new RuntimeException("Cannot find implementation for " + a.getCanonicalName() + ". " + concat + " does not exist. Is Room annotation processor correctly configured?", e2);
                } catch (IllegalAccessException e3) {
                    throw new RuntimeException("Cannot access the constructor " + a.getCanonicalName(), e3);
                } catch (InstantiationException e4) {
                    throw new RuntimeException("Failed to create an instance of " + a.getCanonicalName(), e4);
                }
            } else {
                u2.g("Required value was null.");
                return null;
            }
        } else {
            u2.g("Required value was null.");
            return null;
        }
    }
}
