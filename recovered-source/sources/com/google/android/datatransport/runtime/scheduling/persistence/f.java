package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements SQLiteEventStore.Function {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ f(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public final Object apply(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                SQLiteEventStore sQLiteEventStore = (SQLiteEventStore) obj2;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Encoding encoding = SQLiteEventStore.o;
                sQLiteEventStore.getClass();
                sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
                sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + sQLiteEventStore.k.a()).execute();
                return null;
            case 1:
                SQLiteEventStore sQLiteEventStore2 = (SQLiteEventStore) obj2;
                Cursor cursor = (Cursor) obj;
                Encoding encoding2 = SQLiteEventStore.o;
                sQLiteEventStore2.getClass();
                while (cursor.moveToNext()) {
                    sQLiteEventStore2.A(cursor.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
                }
                return null;
            default:
                HashMap hashMap = (HashMap) obj2;
                Cursor cursor2 = (Cursor) obj;
                Encoding encoding3 = SQLiteEventStore.o;
                while (cursor2.moveToNext()) {
                    long j = cursor2.getLong(0);
                    Set set = (Set) hashMap.get(Long.valueOf(j));
                    if (set == null) {
                        set = new HashSet();
                        hashMap.put(Long.valueOf(j), set);
                    }
                    set.add(new SQLiteEventStore.Metadata(cursor2.getString(1), cursor2.getString(2)));
                }
                return null;
        }
    }
}
