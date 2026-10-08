package androidx.room;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.work.impl.WorkDatabase;
import defpackage.e3;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.NotImplementedError;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RoomDatabase {
    public ContextScope a;
    public Executor b;
    public TransactionExecutor c;
    public RoomConnectionManager d;
    public InvalidationTracker e;
    public boolean g;
    public final CloseBarrier f = new CloseBarrier(new FunctionReference(0, this, RoomDatabase.class, "onClosed", "onClosed()V", 0));
    public final ThreadLocal h = new ThreadLocal();
    public final LinkedHashMap i = new LinkedHashMap();
    public boolean j = true;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder<T extends RoomDatabase> {
        public final Context b;
        public final String c;
        public Executor f;
        public Executor g;
        public e3 h;
        public boolean i;
        public boolean q;
        public boolean r;
        public final ArrayList d = new ArrayList();
        public final ArrayList e = new ArrayList();
        public final JournalMode j = JournalMode.j;
        public final long k = -1;
        public final MigrationContainer l = new MigrationContainer();
        public final LinkedHashSet m = new LinkedHashSet();
        public final LinkedHashSet n = new LinkedHashSet();
        public final ArrayList o = new ArrayList();
        public boolean p = true;
        public final boolean s = true;
        public final ClassReference a = Reflection.a(WorkDatabase.class);

        public Builder(Context context, String str) {
            this.b = context;
            this.c = str;
        }

        public final void a(Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                Integer valueOf = Integer.valueOf(migration.a);
                LinkedHashSet linkedHashSet = this.n;
                linkedHashSet.add(valueOf);
                linkedHashSet.add(Integer.valueOf(migration.b));
            }
            Migration[] migrationArr2 = (Migration[]) Arrays.copyOf(migrationArr, migrationArr.length);
            MigrationContainer migrationContainer = this.l;
            migrationContainer.getClass();
            for (Migration migration2 : migrationArr2) {
                migrationContainer.a(migration2);
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void a(SupportSQLiteDatabase supportSQLiteDatabase);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class JournalMode {
        public static final JournalMode j;
        public static final JournalMode k;
        public static final JournalMode l;
        public static final /* synthetic */ JournalMode[] m;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.room.RoomDatabase$JournalMode, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.room.RoomDatabase$JournalMode, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r2v2, types: [androidx.room.RoomDatabase$JournalMode, java.lang.Enum] */
        static {
            ?? r0 = new Enum("AUTOMATIC", 0);
            j = r0;
            ?? r1 = new Enum("TRUNCATE", 1);
            k = r1;
            ?? r2 = new Enum("WRITE_AHEAD_LOGGING", 2);
            l = r2;
            JournalMode[] journalModeArr = {r0, r1, r2};
            m = journalModeArr;
            EnumEntriesKt.a(journalModeArr);
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) m.clone();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MigrationContainer {
        public final LinkedHashMap a = new LinkedHashMap();

        public final void a(Migration migration) {
            migration.getClass();
            int i = migration.a;
            int i2 = migration.b;
            Integer valueOf = Integer.valueOf(i);
            LinkedHashMap linkedHashMap = this.a;
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                obj = new TreeMap();
                linkedHashMap.put(valueOf, obj);
            }
            TreeMap treeMap = (TreeMap) obj;
            if (treeMap.containsKey(Integer.valueOf(i2))) {
                Log.w("ROOM", "Overriding migration " + treeMap.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap.put(Integer.valueOf(i2), migration);
        }
    }

    public final void a() {
        boolean z;
        if (!this.g) {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return;
            }
            u2.l("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void b() {
        a();
        a();
        SupportSQLiteDatabase h0 = g().h0();
        if (!h0.F0()) {
            RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$syncBlocking$1(f(), null));
        }
        if (h0.N0()) {
            h0.Y();
        } else {
            h0.o();
        }
    }

    public List c(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.d(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(JvmClassMappingKt.a((KClass) entry.getKey()), entry.getValue());
        }
        return EmptyList.j;
    }

    public abstract InvalidationTracker d();

    public RoomOpenDelegateMarker e() {
        throw new NotImplementedError(0);
    }

    public final InvalidationTracker f() {
        InvalidationTracker invalidationTracker = this.e;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        Intrinsics.e("internalTracker");
        throw null;
    }

    public final SupportSQLiteOpenHelper g() {
        RoomConnectionManager roomConnectionManager = this.d;
        if (roomConnectionManager != null) {
            SupportSQLiteOpenHelper g = roomConnectionManager.g();
            if (g != null) {
                return g;
            }
            u2.l("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
            return null;
        }
        Intrinsics.e("connectionManager");
        throw null;
    }

    public Set h() {
        return CollectionsKt.a0(new ArrayList(CollectionsKt.m(EmptySet.j, 10)));
    }

    public LinkedHashMap i() {
        int d = MapsKt.d(CollectionsKt.m(EmptySet.j, 10));
        if (d < 16) {
            d = 16;
        }
        return new LinkedHashMap(d);
    }

    public final boolean j() {
        RoomConnectionManager roomConnectionManager = this.d;
        if (roomConnectionManager != null) {
            if (roomConnectionManager.g() != null) {
                return true;
            }
            return false;
        }
        Intrinsics.e("connectionManager");
        throw null;
    }

    public final boolean k() {
        if (m() && g().h0().F0()) {
            return true;
        }
        return false;
    }

    public final void l() {
        g().h0().m0();
        if (!k()) {
            InvalidationTracker f = f();
            f.b.e(f.e, f.f);
        }
    }

    public final boolean m() {
        RoomConnectionManager roomConnectionManager = this.d;
        if (roomConnectionManager != null) {
            SupportSQLiteDatabase supportSQLiteDatabase = roomConnectionManager.g;
            if (supportSQLiteDatabase != null) {
                return supportSQLiteDatabase.isOpen();
            }
            return false;
        }
        Intrinsics.e("connectionManager");
        throw null;
    }

    public final Object n(Callable callable) {
        b();
        try {
            Object call = callable.call();
            o();
            return call;
        } finally {
            l();
        }
    }

    public final void o() {
        g().h0().W();
    }

    public final Object p(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        RoomConnectionManager roomConnectionManager = this.d;
        if (roomConnectionManager != null) {
            return roomConnectionManager.f.j0(z, function2, continuationImpl);
        }
        Intrinsics.e("connectionManager");
        throw null;
    }
}
