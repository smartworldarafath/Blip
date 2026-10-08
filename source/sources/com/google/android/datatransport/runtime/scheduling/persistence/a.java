package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements SQLiteEventStore.Function {
    public final /* synthetic */ int a;

    public /* synthetic */ a(int i) {
        this.a = i;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public final Object apply(Object obj) {
        byte[] decode;
        int i = 1;
        switch (this.a) {
            case 0:
                Encoding encoding = SQLiteEventStore.o;
                return (List) SQLiteEventStore.P(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new a(i));
            case 1:
                Cursor cursor = (Cursor) obj;
                Encoding encoding2 = SQLiteEventStore.o;
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    TransportContext.Builder a = TransportContext.a();
                    a.b(cursor.getString(1));
                    a.d(PriorityMapping.b(cursor.getInt(2)));
                    String string = cursor.getString(3);
                    if (string == null) {
                        decode = null;
                    } else {
                        decode = Base64.decode(string, 0);
                    }
                    a.c(decode);
                    arrayList.add(a.a());
                }
                return arrayList;
            default:
                return Boolean.valueOf(((Cursor) obj).moveToNext());
        }
    }
}
