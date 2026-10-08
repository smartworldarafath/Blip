package defpackage;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkTypeConverters;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class q7 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;

    public /* synthetic */ q7(String str, int i) {
        this.j = i;
        this.k = str;
    }

    /* JADX WARN: Type inference failed for: r6v12, types: [java.lang.Object, androidx.work.impl.model.WorkSpec$IdAndState] */
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        SQLiteStatement a1;
        boolean z;
        Long l;
        WorkSpec workSpec;
        boolean z2;
        String r0;
        Integer valueOf;
        Boolean bool;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        WorkInfo$State workInfo$State;
        Integer valueOf2;
        int i = this.j;
        Unit unit = Unit.a;
        String str = this.k;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                a1 = sQLiteConnection.a1("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
                try {
                    a1.T(1, str);
                    ArrayList arrayList = new ArrayList();
                    while (a1.V0()) {
                        arrayList.add(a1.r0(0));
                    }
                    return arrayList;
                } finally {
                }
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                a1 = sQLiteConnection2.a1("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
                try {
                    a1.T(1, str);
                    if (a1.V0()) {
                        if (((int) a1.getLong(0)) != 0) {
                            z = true;
                            a1.close();
                            return Boolean.valueOf(z);
                        }
                    }
                    z = false;
                    a1.close();
                    return Boolean.valueOf(z);
                } finally {
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                semanticsPropertyReceiver.b(SemanticsProperties.a, CollectionsKt.B(str));
                SemanticsPropertiesKt.c(semanticsPropertyReceiver, 5);
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return Boolean.valueOf(Intrinsics.a((String) obj, str));
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                a1 = sQLiteConnection3.a1("SELECT long_value FROM Preference where `key`=?");
                try {
                    a1.T(1, str);
                    if (!a1.V0() || a1.isNull(0)) {
                        l = null;
                    } else {
                        l = Long.valueOf(a1.getLong(0));
                    }
                    return l;
                } finally {
                }
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
                ((SemanticsPropertyReceiver) obj).b(SemanticsProperties.a, CollectionsKt.B(str));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                String str2 = (String) obj;
                str2.getClass();
                if (StringsKt.t(str2)) {
                    if (str2.length() >= str.length()) {
                        return str2;
                    }
                    return str;
                }
                return str.concat(str2);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                a1 = sQLiteConnection4.a1("DELETE FROM SystemIdInfo where work_spec_id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    return unit;
                } finally {
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                a1 = sQLiteConnection5.a1("SELECT name FROM workname WHERE work_spec_id=?");
                try {
                    a1.T(1, str);
                    ArrayList arrayList2 = new ArrayList();
                    while (a1.V0()) {
                        arrayList2.add(a1.r0(0));
                    }
                    return arrayList2;
                } finally {
                }
            case KeyModifiers.a /* 9 */:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                a1 = sQLiteConnection6.a1("DELETE from WorkProgress where work_spec_id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    return unit;
                } finally {
                }
            case KeyModifiers.b /* 10 */:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                a1 = sQLiteConnection7.a1("SELECT * FROM workspec WHERE id=?");
                try {
                    a1.T(1, str);
                    int b = SQLiteStatementUtil.b(a1, "id");
                    int b2 = SQLiteStatementUtil.b(a1, "state");
                    int b3 = SQLiteStatementUtil.b(a1, "worker_class_name");
                    int b4 = SQLiteStatementUtil.b(a1, "input_merger_class_name");
                    int b5 = SQLiteStatementUtil.b(a1, "input");
                    int b6 = SQLiteStatementUtil.b(a1, "output");
                    int b7 = SQLiteStatementUtil.b(a1, "initial_delay");
                    int b8 = SQLiteStatementUtil.b(a1, "interval_duration");
                    int b9 = SQLiteStatementUtil.b(a1, "flex_duration");
                    int b10 = SQLiteStatementUtil.b(a1, "run_attempt_count");
                    int b11 = SQLiteStatementUtil.b(a1, "backoff_policy");
                    int b12 = SQLiteStatementUtil.b(a1, "backoff_delay_duration");
                    int b13 = SQLiteStatementUtil.b(a1, "last_enqueue_time");
                    int b14 = SQLiteStatementUtil.b(a1, "minimum_retention_duration");
                    int b15 = SQLiteStatementUtil.b(a1, "schedule_requested_at");
                    int b16 = SQLiteStatementUtil.b(a1, "run_in_foreground");
                    int b17 = SQLiteStatementUtil.b(a1, "out_of_quota_policy");
                    int b18 = SQLiteStatementUtil.b(a1, "period_count");
                    int b19 = SQLiteStatementUtil.b(a1, "generation");
                    int b20 = SQLiteStatementUtil.b(a1, "next_schedule_time_override");
                    int b21 = SQLiteStatementUtil.b(a1, "next_schedule_time_override_generation");
                    int b22 = SQLiteStatementUtil.b(a1, "stop_reason");
                    int b23 = SQLiteStatementUtil.b(a1, "trace_tag");
                    int b24 = SQLiteStatementUtil.b(a1, "backoff_on_system_interruptions");
                    int b25 = SQLiteStatementUtil.b(a1, "required_network_type");
                    int b26 = SQLiteStatementUtil.b(a1, "required_network_request");
                    int b27 = SQLiteStatementUtil.b(a1, "requires_charging");
                    int b28 = SQLiteStatementUtil.b(a1, "requires_device_idle");
                    int b29 = SQLiteStatementUtil.b(a1, "requires_battery_not_low");
                    int b30 = SQLiteStatementUtil.b(a1, "requires_storage_not_low");
                    int b31 = SQLiteStatementUtil.b(a1, "trigger_content_update_delay");
                    int b32 = SQLiteStatementUtil.b(a1, "trigger_max_content_delay");
                    int b33 = SQLiteStatementUtil.b(a1, "content_uri_triggers");
                    if (a1.V0()) {
                        String r02 = a1.r0(b);
                        WorkInfo$State e = WorkTypeConverters.e((int) a1.getLong(b2));
                        String r03 = a1.r0(b3);
                        String r04 = a1.r0(b4);
                        byte[] blob = a1.getBlob(b5);
                        Data data = Data.b;
                        Data a = Data.Companion.a(blob);
                        Data a2 = Data.Companion.a(a1.getBlob(b6));
                        long j = a1.getLong(b7);
                        long j2 = a1.getLong(b8);
                        long j3 = a1.getLong(b9);
                        int i2 = (int) a1.getLong(b10);
                        BackoffPolicy b34 = WorkTypeConverters.b((int) a1.getLong(b11));
                        long j4 = a1.getLong(b12);
                        long j5 = a1.getLong(b13);
                        long j6 = a1.getLong(b14);
                        long j7 = a1.getLong(b15);
                        if (((int) a1.getLong(b16)) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        OutOfQuotaPolicy d = WorkTypeConverters.d((int) a1.getLong(b17));
                        int i3 = (int) a1.getLong(b18);
                        int i4 = (int) a1.getLong(b19);
                        long j8 = a1.getLong(b20);
                        int i5 = (int) a1.getLong(b21);
                        int i6 = (int) a1.getLong(b22);
                        if (a1.isNull(b23)) {
                            r0 = null;
                        } else {
                            r0 = a1.r0(b23);
                        }
                        if (a1.isNull(b24)) {
                            valueOf = null;
                        } else {
                            valueOf = Integer.valueOf((int) a1.getLong(b24));
                        }
                        if (valueOf != null) {
                            if (valueOf.intValue() != 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            bool = Boolean.valueOf(z7);
                        } else {
                            bool = null;
                        }
                        NetworkType c = WorkTypeConverters.c((int) a1.getLong(b25));
                        NetworkRequestCompat g = WorkTypeConverters.g(a1.getBlob(b26));
                        if (((int) a1.getLong(b27)) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (((int) a1.getLong(b28)) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (((int) a1.getLong(b29)) != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (((int) a1.getLong(b30)) != 0) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        workSpec = new WorkSpec(r02, e, r03, r04, a, a2, j, j2, j3, new Constraints(g, c, z3, z4, z5, z6, a1.getLong(b31), a1.getLong(b32), WorkTypeConverters.a(a1.getBlob(b33))), i2, b34, j4, j5, j6, j7, z2, d, i3, i4, j8, i5, i6, r0, bool);
                    } else {
                        workSpec = null;
                    }
                    return workSpec;
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                a1 = sQLiteConnection8.a1("SELECT state FROM workspec WHERE id=?");
                try {
                    a1.T(1, str);
                    if (a1.V0()) {
                        if (a1.isNull(0)) {
                            valueOf2 = null;
                        } else {
                            valueOf2 = Integer.valueOf((int) a1.getLong(0));
                        }
                        if (valueOf2 != null) {
                            workInfo$State = WorkTypeConverters.e(valueOf2.intValue());
                            return workInfo$State;
                        }
                    }
                    workInfo$State = null;
                    return workInfo$State;
                } finally {
                }
            case KeyModifiers.c /* 12 */:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                a1 = sQLiteConnection9.a1("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    a1.T(1, str);
                    ArrayList arrayList3 = new ArrayList();
                    while (a1.V0()) {
                        arrayList3.add(a1.r0(0));
                    }
                    return arrayList3;
                } finally {
                }
            case 13:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                a1 = sQLiteConnection10.a1("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    int a3 = SQLiteConnectionUtil.a(sQLiteConnection10);
                    a1.close();
                    return Integer.valueOf(a3);
                } finally {
                }
            case 14:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                a1 = sQLiteConnection11.a1("UPDATE workspec SET run_attempt_count=0 WHERE id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    int a4 = SQLiteConnectionUtil.a(sQLiteConnection11);
                    a1.close();
                    return Integer.valueOf(a4);
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                a1 = sQLiteConnection12.a1("UPDATE workspec SET period_count=period_count+1 WHERE id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    return unit;
                } finally {
                }
            case 16:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                a1 = sQLiteConnection13.a1("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                try {
                    a1.T(1, str);
                    ArrayList arrayList4 = new ArrayList();
                    while (a1.V0()) {
                        byte[] blob2 = a1.getBlob(0);
                        Data data2 = Data.b;
                        arrayList4.add(Data.Companion.a(blob2));
                    }
                    return arrayList4;
                } finally {
                }
            case 17:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                a1 = sQLiteConnection14.a1("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    int a5 = SQLiteConnectionUtil.a(sQLiteConnection14);
                    a1.close();
                    return Integer.valueOf(a5);
                } finally {
                }
            case 18:
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                a1 = sQLiteConnection15.a1("DELETE FROM workspec WHERE id=?");
                try {
                    a1.T(1, str);
                    a1.V0();
                    return unit;
                } finally {
                }
            case 19:
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                a1 = sQLiteConnection16.a1("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    a1.T(1, str);
                    ArrayList arrayList5 = new ArrayList();
                    while (a1.V0()) {
                        String r05 = a1.r0(0);
                        WorkInfo$State e2 = WorkTypeConverters.e((int) a1.getLong(1));
                        r05.getClass();
                        ?? obj2 = new Object();
                        obj2.a = r05;
                        obj2.b = e2;
                        arrayList5.add(obj2);
                    }
                    return arrayList5;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection17 = (SQLiteConnection) obj;
                sQLiteConnection17.getClass();
                a1 = sQLiteConnection17.a1("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
                try {
                    a1.T(1, str);
                    ArrayList arrayList6 = new ArrayList();
                    while (a1.V0()) {
                        arrayList6.add(a1.r0(0));
                    }
                    return arrayList6;
                } finally {
                }
        }
    }
}
