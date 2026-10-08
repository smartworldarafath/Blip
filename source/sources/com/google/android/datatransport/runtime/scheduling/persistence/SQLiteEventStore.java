package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import javax.inject.Provider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SQLiteEventStore implements EventStore, SynchronizationGuard, ClientHealthMetricsStore {
    public static final Encoding o = new Encoding("proto");
    public final SchemaManager j;
    public final Clock k;
    public final Clock l;
    public final EventStoreConfig m;
    public final Provider n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Function<T, U> {
        Object apply(Object obj);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Metadata {
        public final String a;
        public final String b;

        public Metadata(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    public SQLiteEventStore(Clock clock, Clock clock2, EventStoreConfig eventStoreConfig, SchemaManager schemaManager, Provider provider) {
        this.j = schemaManager;
        this.k = clock;
        this.l = clock2;
        this.m = eventStoreConfig;
        this.n = provider;
    }

    public static String O(Iterable iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(((AutoValue_PersistedEvent) ((PersistedEvent) it.next())).a);
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static Object P(Cursor cursor, Function function) {
        try {
            return function.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    public static Long n(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Long valueOf;
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.b(), String.valueOf(PriorityMapping.a(transportContext.d()))));
        if (transportContext.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            if (!query.moveToNext()) {
                valueOf = null;
            } else {
                valueOf = Long.valueOf(query.getLong(0));
            }
            return valueOf;
        } finally {
            query.close();
        }
    }

    public final void A(final long j, final LogEventDropped.Reason reason, final String str) {
        q(new Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.g
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
            public final Object apply(Object obj) {
                boolean z;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.o;
                int i = reason.j;
                String num = Integer.toString(i);
                String str2 = str;
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str2, num});
                try {
                    Encoding encoding2 = SQLiteEventStore.o;
                    if (rawQuery.getCount() > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    rawQuery.close();
                    long j2 = j;
                    if (!z) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("log_source", str2);
                        contentValues.put("reason", Integer.valueOf(i));
                        contentValues.put("events_dropped_count", Long.valueOf(j2));
                        sQLiteDatabase.insert("log_event_dropped", null, contentValues);
                        return null;
                    }
                    sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j2 + " WHERE log_source = ? AND reason = ?", new String[]{str2, Integer.toString(i)});
                    return null;
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
        });
    }

    public final Object E(SynchronizationGuard.CriticalSection criticalSection) {
        SQLiteDatabase h = h();
        Clock clock = this.l;
        long a = clock.a();
        while (true) {
            try {
                h.beginTransaction();
                try {
                    Object m = criticalSection.m();
                    h.setTransactionSuccessful();
                    return m;
                } finally {
                    h.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (clock.a() < ((AutoValue_EventStoreConfig) this.m).d + a) {
                    SystemClock.sleep(50L);
                } else {
                    throw new RuntimeException("Timed out while trying to acquire the lock.", e);
                }
            }
        }
    }

    public final int a() {
        long a = this.k.a() - ((AutoValue_EventStoreConfig) this.m).e;
        SQLiteDatabase h = h();
        h.beginTransaction();
        try {
            String[] strArr = {String.valueOf(a)};
            Cursor rawQuery = h.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
            while (rawQuery.moveToNext()) {
                try {
                    A(rawQuery.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, rawQuery.getString(1));
                } catch (Throwable th) {
                    rawQuery.close();
                    throw th;
                }
            }
            rawQuery.close();
            int delete = h.delete("events", "timestamp_ms < ?", strArr);
            h.setTransactionSuccessful();
            return delete;
        } finally {
            h.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    public final SQLiteDatabase h() {
        SchemaManager schemaManager = this.j;
        Objects.requireNonNull(schemaManager);
        Clock clock = this.l;
        long a = clock.a();
        while (true) {
            try {
                return schemaManager.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (clock.a() < ((AutoValue_EventStoreConfig) this.m).d + a) {
                    SystemClock.sleep(50L);
                } else {
                    throw new RuntimeException("Timed out while trying to open db.", e);
                }
            }
        }
    }

    public final Object q(Function function) {
        SQLiteDatabase h = h();
        h.beginTransaction();
        try {
            Object apply = function.apply(h);
            h.setTransactionSuccessful();
            return apply;
        } finally {
            h.endTransaction();
        }
    }

    public final ArrayList v(SQLiteDatabase sQLiteDatabase, TransportContext transportContext, int i) {
        ArrayList arrayList = new ArrayList();
        Long n = n(sQLiteDatabase, transportContext);
        if (n == null) {
            return arrayList;
        }
        P(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{n.toString()}, null, null, null, String.valueOf(i)), new b(this, arrayList, transportContext, 2));
        return arrayList;
    }

    public final PersistedEvent w(TransportContext transportContext, EventInternal eventInternal) {
        Priority d = transportContext.d();
        String i = eventInternal.i();
        String b = transportContext.b();
        String concat = "TRuntime.".concat("SQLiteEventStore");
        if (Log.isLoggable(concat, 3)) {
            Log.d(concat, "Storing event with priority=" + d + ", name=" + i + " for destination " + b);
        }
        long longValue = ((Long) q(new b(this, eventInternal, transportContext, 0))).longValue();
        if (longValue < 1) {
            return null;
        }
        return new AutoValue_PersistedEvent(longValue, transportContext, eventInternal);
    }
}
