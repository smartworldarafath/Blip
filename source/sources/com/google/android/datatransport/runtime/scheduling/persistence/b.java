package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements SQLiteEventStore.Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ SQLiteEventStore b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(SQLiteEventStore sQLiteEventStore, Object obj, Object obj2, int i) {
        this.a = i;
        this.b = sQLiteEventStore;
        this.c = obj;
        this.d = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017c A[SYNTHETIC] */
    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object apply(Object obj) {
        long insert;
        boolean z;
        byte[] bArr;
        int i;
        int i2;
        int i3;
        Encoding encoding;
        Encoding encoding2;
        int i4 = this.a;
        LogEventDropped.Reason reason = LogEventDropped.Reason.CACHE_FULL;
        int i5 = 5;
        int i6 = 3;
        int i7 = 2;
        int i8 = 4;
        int i9 = 0;
        int i10 = 1;
        Object obj2 = this.d;
        Object obj3 = this.c;
        SQLiteEventStore sQLiteEventStore = this.b;
        switch (i4) {
            case 0:
                EventInternal eventInternal = (EventInternal) obj3;
                TransportContext transportContext = (TransportContext) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding3 = SQLiteEventStore.o;
                long simpleQueryForLong = sQLiteEventStore.h().compileStatement("PRAGMA page_size").simpleQueryForLong() * sQLiteEventStore.h().compileStatement("PRAGMA page_count").simpleQueryForLong();
                AutoValue_EventStoreConfig autoValue_EventStoreConfig = (AutoValue_EventStoreConfig) sQLiteEventStore.m;
                if (simpleQueryForLong >= autoValue_EventStoreConfig.b) {
                    sQLiteEventStore.A(1L, reason, eventInternal.i());
                    return -1L;
                }
                Long n = SQLiteEventStore.n(sQLiteDatabase, transportContext);
                if (n != null) {
                    insert = n.longValue();
                } else {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("backend_name", transportContext.b());
                    contentValues.put("priority", Integer.valueOf(PriorityMapping.a(transportContext.d())));
                    contentValues.put("next_request_ms", (Integer) 0);
                    if (transportContext.c() != null) {
                        contentValues.put("extras", Base64.encodeToString(transportContext.c(), 0));
                    }
                    insert = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                }
                int i11 = autoValue_EventStoreConfig.f;
                byte[] bArr2 = eventInternal.d().b;
                if (bArr2.length <= i11) {
                    z = true;
                } else {
                    z = false;
                }
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("context_id", Long.valueOf(insert));
                contentValues2.put("transport_name", eventInternal.i());
                contentValues2.put("timestamp_ms", Long.valueOf(eventInternal.e()));
                contentValues2.put("uptime_ms", Long.valueOf(eventInternal.j()));
                contentValues2.put("payload_encoding", eventInternal.d().a.a);
                contentValues2.put("code", eventInternal.c());
                contentValues2.put("num_attempts", (Integer) 0);
                contentValues2.put("inline", Boolean.valueOf(z));
                if (z) {
                    bArr = bArr2;
                } else {
                    bArr = new byte[0];
                }
                contentValues2.put("payload", bArr);
                long insert2 = sQLiteDatabase.insert("events", null, contentValues2);
                if (!z) {
                    int ceil = (int) Math.ceil(bArr2.length / i11);
                    for (int i12 = 1; i12 <= ceil; i12++) {
                        byte[] copyOfRange = Arrays.copyOfRange(bArr2, (i12 - 1) * i11, Math.min(i12 * i11, bArr2.length));
                        ContentValues contentValues3 = new ContentValues();
                        contentValues3.put("event_id", Long.valueOf(insert2));
                        contentValues3.put("sequence_num", Integer.valueOf(i12));
                        contentValues3.put("bytes", copyOfRange);
                        sQLiteDatabase.insert("event_payloads", null, contentValues3);
                    }
                }
                for (Map.Entry entry : eventInternal.h().entrySet()) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("event_id", Long.valueOf(insert2));
                    contentValues4.put("name", (String) entry.getKey());
                    contentValues4.put("value", (String) entry.getValue());
                    sQLiteDatabase.insert("event_metadata", null, contentValues4);
                }
                return Long.valueOf(insert2);
            case 1:
                HashMap hashMap = (HashMap) obj3;
                ClientMetrics.Builder builder = (ClientMetrics.Builder) obj2;
                ArrayList arrayList = builder.b;
                Cursor cursor = (Cursor) obj;
                Encoding encoding4 = SQLiteEventStore.o;
                sQLiteEventStore.getClass();
                while (cursor.moveToNext()) {
                    String string = cursor.getString(i9);
                    int i13 = cursor.getInt(1);
                    LogEventDropped.Reason reason2 = LogEventDropped.Reason.REASON_UNKNOWN;
                    if (i13 != 0) {
                        if (i13 == 1) {
                            reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
                        } else {
                            i = 2;
                            if (i13 == 2) {
                                reason2 = reason;
                                i2 = i9;
                                long j = cursor.getLong(i);
                                if (!hashMap.containsKey(string)) {
                                    hashMap.put(string, new ArrayList());
                                }
                                ((List) hashMap.get(string)).add(new LogEventDropped(j, reason2));
                                i9 = i2;
                            } else if (i13 == 3) {
                                reason2 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
                            } else if (i13 == 4) {
                                reason2 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
                            } else {
                                if (i13 == 5) {
                                    reason2 = LogEventDropped.Reason.INVALID_PAYLOD;
                                } else if (i13 == 6) {
                                    reason2 = LogEventDropped.Reason.SERVER_ERROR;
                                } else {
                                    Logging.a("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i13));
                                }
                                i2 = i9;
                                i = 2;
                                long j2 = cursor.getLong(i);
                                if (!hashMap.containsKey(string)) {
                                }
                                ((List) hashMap.get(string)).add(new LogEventDropped(j2, reason2));
                                i9 = i2;
                            }
                        }
                    }
                    i2 = i9;
                    i = 2;
                    long j22 = cursor.getLong(i);
                    if (!hashMap.containsKey(string)) {
                    }
                    ((List) hashMap.get(string)).add(new LogEventDropped(j22, reason2));
                    i9 = i2;
                }
                for (Map.Entry entry2 : hashMap.entrySet()) {
                    int i14 = LogSourceMetrics.c;
                    LogSourceMetrics.Builder builder2 = new LogSourceMetrics.Builder();
                    builder2.a = (String) entry2.getKey();
                    builder2.b = (List) entry2.getValue();
                    arrayList.add(new LogSourceMetrics(builder2.a, Collections.unmodifiableList(builder2.b)));
                }
                final long a = sQLiteEventStore.k.a();
                builder.a = (TimeWindow) sQLiteEventStore.q(new SQLiteEventStore.Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.c
                    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object, com.google.android.datatransport.runtime.firebase.transport.TimeWindow$Builder] */
                    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
                    public final Object apply(Object obj4) {
                        long j3 = a;
                        Encoding encoding5 = SQLiteEventStore.o;
                        Cursor rawQuery = ((SQLiteDatabase) obj4).rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]);
                        try {
                            Encoding encoding6 = SQLiteEventStore.o;
                            rawQuery.moveToNext();
                            long j4 = rawQuery.getLong(0);
                            ?? obj5 = new Object();
                            obj5.a = 0L;
                            obj5.b = 0L;
                            obj5.a = j4;
                            obj5.b = j3;
                            return new TimeWindow(obj5.a, obj5.b);
                        } finally {
                            rawQuery.close();
                        }
                    }
                });
                builder.c = new GlobalMetrics(new StorageMetrics(sQLiteEventStore.h().compileStatement("PRAGMA page_size").simpleQueryForLong() * sQLiteEventStore.h().compileStatement("PRAGMA page_count").simpleQueryForLong(), EventStoreConfig.a.b));
                builder.d = (String) sQLiteEventStore.n.get();
                return new ClientMetrics(builder.a, Collections.unmodifiableList(arrayList), builder.c, builder.d);
            default:
                ArrayList arrayList2 = (ArrayList) obj3;
                TransportContext transportContext2 = (TransportContext) obj2;
                Cursor cursor2 = (Cursor) obj;
                Encoding encoding5 = SQLiteEventStore.o;
                while (cursor2.moveToNext()) {
                    long j3 = cursor2.getLong(0);
                    if (cursor2.getInt(7) != 0) {
                        i3 = i10;
                    } else {
                        i3 = 0;
                    }
                    EventInternal.Builder a2 = EventInternal.a();
                    a2.g(cursor2.getString(i10));
                    TransportContext transportContext3 = transportContext2;
                    a2.f(cursor2.getLong(i7));
                    a2.h(cursor2.getLong(i6));
                    if (i3 != 0) {
                        String string2 = cursor2.getString(i8);
                        if (string2 == null) {
                            encoding2 = SQLiteEventStore.o;
                        } else {
                            encoding2 = new Encoding(string2);
                        }
                        a2.e(new EncodedPayload(encoding2, cursor2.getBlob(i5)));
                    } else {
                        String string3 = cursor2.getString(i8);
                        if (string3 == null) {
                            encoding = SQLiteEventStore.o;
                        } else {
                            encoding = new Encoding(string3);
                        }
                        Cursor query = sQLiteEventStore.h().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j3)}, null, null, "sequence_num");
                        try {
                            Encoding encoding6 = SQLiteEventStore.o;
                            ArrayList arrayList3 = new ArrayList();
                            int i15 = 0;
                            while (query.moveToNext()) {
                                byte[] blob = query.getBlob(0);
                                arrayList3.add(blob);
                                i15 += blob.length;
                            }
                            byte[] bArr3 = new byte[i15];
                            int i16 = 0;
                            int i17 = 0;
                            while (i17 < arrayList3.size()) {
                                byte[] bArr4 = (byte[]) arrayList3.get(i17);
                                int i18 = i17;
                                System.arraycopy(bArr4, 0, bArr3, i16, bArr4.length);
                                i16 += bArr4.length;
                                i17 = i18 + 1;
                            }
                            query.close();
                            a2.e(new EncodedPayload(encoding, bArr3));
                        } catch (Throwable th) {
                            query.close();
                            throw th;
                        }
                    }
                    if (!cursor2.isNull(6)) {
                        a2.d(Integer.valueOf(cursor2.getInt(6)));
                    }
                    arrayList2.add(new AutoValue_PersistedEvent(j3, transportContext3, a2.b()));
                    transportContext2 = transportContext3;
                    i5 = 5;
                    i6 = 3;
                    i7 = 2;
                    i8 = 4;
                    i10 = 1;
                }
                return null;
        }
    }
}
