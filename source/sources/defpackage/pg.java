package defpackage;

import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.impl.model.SystemIdInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class pg implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;
    public final /* synthetic */ int l;

    public /* synthetic */ pg(int i, String str) {
        this.j = 2;
        this.l = i;
        this.k = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        SQLiteStatement a1;
        SystemIdInfo systemIdInfo;
        int i = this.j;
        Unit unit = Unit.a;
        String str = this.k;
        int i2 = this.l;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                a1 = sQLiteConnection.a1("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    a1.T(1, str);
                    a1.j(2, i2);
                    int b = SQLiteStatementUtil.b(a1, "work_spec_id");
                    int b2 = SQLiteStatementUtil.b(a1, "generation");
                    int b3 = SQLiteStatementUtil.b(a1, "system_id");
                    if (a1.V0()) {
                        systemIdInfo = new SystemIdInfo(a1.r0(b), (int) a1.getLong(b2), (int) a1.getLong(b3));
                    } else {
                        systemIdInfo = null;
                    }
                    return systemIdInfo;
                } finally {
                }
            case 1:
                sQLiteConnection.getClass();
                a1 = sQLiteConnection.a1("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    a1.T(1, str);
                    a1.j(2, i2);
                    a1.V0();
                    return unit;
                } finally {
                }
            default:
                sQLiteConnection.getClass();
                a1 = sQLiteConnection.a1("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    a1.j(1, i2);
                    a1.T(2, str);
                    a1.V0();
                    return unit;
                } finally {
                }
        }
    }

    public /* synthetic */ pg(String str, int i, int i2) {
        this.j = i2;
        this.k = str;
        this.l = i;
    }
}
