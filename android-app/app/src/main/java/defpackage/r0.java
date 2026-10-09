package defpackage;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.datastore.preferences.PreferencesProto$Value;
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
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class r0 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;

    public /* synthetic */ r0(LazyListState lazyListState, int i) {
        this.j = 8;
        this.k = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Function1 function1;
        int b;
        SQLiteStatement sQLiteStatement;
        boolean z;
        String r0;
        int i;
        int i2;
        Integer valueOf;
        Boolean bool;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3 = this.j;
        int i4 = this.k;
        switch (i3) {
            case 0:
                Class cls = AndroidComposeView.R0;
                return Boolean.valueOf(((FocusTargetNode) obj).f1(i4));
            case 1:
                Class cls2 = AndroidComposeView.R0;
                return Boolean.valueOf(((FocusTargetNode) obj).f1(i4));
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return Boolean.valueOf(((FocusTargetNode) obj).f1(i4));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return Boolean.valueOf(((FocusTargetNode) obj).f1(i4));
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return Boolean.valueOf(((FocusTargetNode) obj).Y0(i4));
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                ((Integer) obj).intValue();
                return Integer.valueOf(i4);
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                ((Integer) obj).intValue();
                return Integer.valueOf(-i4);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((Integer) obj).intValue();
                return Integer.valueOf(-i4);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                NestedPrefetchScope nestedPrefetchScope = (NestedPrefetchScope) obj;
                Snapshot a = Snapshot.Companion.a();
                if (a != null) {
                    function1 = a.e();
                } else {
                    function1 = null;
                }
                Snapshot.Companion.e(a, Snapshot.Companion.b(a), function1);
                if (nestedPrefetchScope.b() == -1) {
                    b = 2;
                } else {
                    b = nestedPrefetchScope.b();
                }
                for (int i5 = 0; i5 < b; i5++) {
                    nestedPrefetchScope.a(i4 + i5);
                }
                return Unit.a;
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement a1 = sQLiteConnection.a1("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
                try {
                    a1.j(1, i4);
                    int b2 = SQLiteStatementUtil.b(a1, "id");
                    int b3 = SQLiteStatementUtil.b(a1, "state");
                    int b4 = SQLiteStatementUtil.b(a1, "worker_class_name");
                    int b5 = SQLiteStatementUtil.b(a1, "input_merger_class_name");
                    int b6 = SQLiteStatementUtil.b(a1, "input");
                    int b7 = SQLiteStatementUtil.b(a1, "output");
                    int b8 = SQLiteStatementUtil.b(a1, "initial_delay");
                    int b9 = SQLiteStatementUtil.b(a1, "interval_duration");
                    int b10 = SQLiteStatementUtil.b(a1, "flex_duration");
                    int b11 = SQLiteStatementUtil.b(a1, "run_attempt_count");
                    int b12 = SQLiteStatementUtil.b(a1, "backoff_policy");
                    int b13 = SQLiteStatementUtil.b(a1, "backoff_delay_duration");
                    int b14 = SQLiteStatementUtil.b(a1, "last_enqueue_time");
                    int b15 = SQLiteStatementUtil.b(a1, "minimum_retention_duration");
                    int b16 = SQLiteStatementUtil.b(a1, "schedule_requested_at");
                    int b17 = SQLiteStatementUtil.b(a1, "run_in_foreground");
                    int b18 = SQLiteStatementUtil.b(a1, "out_of_quota_policy");
                    int b19 = SQLiteStatementUtil.b(a1, "period_count");
                    int b20 = SQLiteStatementUtil.b(a1, "generation");
                    int b21 = SQLiteStatementUtil.b(a1, "next_schedule_time_override");
                    int b22 = SQLiteStatementUtil.b(a1, "next_schedule_time_override_generation");
                    int b23 = SQLiteStatementUtil.b(a1, "stop_reason");
                    int b24 = SQLiteStatementUtil.b(a1, "trace_tag");
                    int b25 = SQLiteStatementUtil.b(a1, "backoff_on_system_interruptions");
                    int b26 = SQLiteStatementUtil.b(a1, "required_network_type");
                    int b27 = SQLiteStatementUtil.b(a1, "required_network_request");
                    int b28 = SQLiteStatementUtil.b(a1, "requires_charging");
                    int b29 = SQLiteStatementUtil.b(a1, "requires_device_idle");
                    int b30 = SQLiteStatementUtil.b(a1, "requires_battery_not_low");
                    int b31 = SQLiteStatementUtil.b(a1, "requires_storage_not_low");
                    int b32 = SQLiteStatementUtil.b(a1, "trigger_content_update_delay");
                    int b33 = SQLiteStatementUtil.b(a1, "trigger_max_content_delay");
                    int b34 = SQLiteStatementUtil.b(a1, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (a1.V0()) {
                        String r02 = a1.r0(b2);
                        ArrayList arrayList2 = arrayList;
                        int i6 = b2;
                        WorkInfo$State e = WorkTypeConverters.e((int) a1.getLong(b3));
                        String r03 = a1.r0(b4);
                        String r04 = a1.r0(b5);
                        byte[] blob = a1.getBlob(b6);
                        Data data = Data.b;
                        Data a2 = Data.Companion.a(blob);
                        Data a3 = Data.Companion.a(a1.getBlob(b7));
                        long j = a1.getLong(b8);
                        long j2 = a1.getLong(b9);
                        long j3 = a1.getLong(b10);
                        int i7 = (int) a1.getLong(b11);
                        BackoffPolicy b35 = WorkTypeConverters.b((int) a1.getLong(b12));
                        long j4 = a1.getLong(b13);
                        long j5 = a1.getLong(b14);
                        long j6 = a1.getLong(b15);
                        int i8 = b16;
                        long j7 = a1.getLong(i8);
                        int i9 = b15;
                        int i10 = b17;
                        if (((int) a1.getLong(i10)) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i11 = b18;
                        OutOfQuotaPolicy d = WorkTypeConverters.d((int) a1.getLong(i11));
                        int i12 = b19;
                        int i13 = b3;
                        int i14 = (int) a1.getLong(i12);
                        int i15 = b20;
                        int i16 = (int) a1.getLong(i15);
                        int i17 = b21;
                        long j8 = a1.getLong(i17);
                        int i18 = b14;
                        int i19 = b22;
                        int i20 = (int) a1.getLong(i19);
                        int i21 = b23;
                        int i22 = (int) a1.getLong(i21);
                        int i23 = b24;
                        if (a1.isNull(i23)) {
                            r0 = null;
                        } else {
                            r0 = a1.r0(i23);
                        }
                        int i24 = b25;
                        if (a1.isNull(i24)) {
                            i = i20;
                            i2 = i21;
                            valueOf = null;
                        } else {
                            i = i20;
                            i2 = i21;
                            valueOf = Integer.valueOf((int) a1.getLong(i24));
                        }
                        if (valueOf != null) {
                            if (valueOf.intValue() != 0) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            bool = Boolean.valueOf(z6);
                        } else {
                            bool = null;
                        }
                        int i25 = b26;
                        NetworkType c = WorkTypeConverters.c((int) a1.getLong(i25));
                        int i26 = b27;
                        NetworkRequestCompat g = WorkTypeConverters.g(a1.getBlob(i26));
                        b26 = i25;
                        b27 = i26;
                        int i27 = b28;
                        if (((int) a1.getLong(i27)) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        b28 = i27;
                        int i28 = b29;
                        if (((int) a1.getLong(i28)) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        int i29 = b30;
                        if (((int) a1.getLong(i29)) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        b30 = i29;
                        int i30 = b31;
                        if (((int) a1.getLong(i30)) != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        int i31 = b32;
                        int i32 = b33;
                        int i33 = b34;
                        b34 = i33;
                        sQLiteStatement = a1;
                        try {
                            arrayList2.add(new WorkSpec(r02, e, r03, r04, a2, a3, j, j2, j3, new Constraints(g, c, z2, z3, z4, z5, a1.getLong(i31), a1.getLong(i32), WorkTypeConverters.a(a1.getBlob(i33))), i7, b35, j4, j5, j6, j7, z, d, i14, i16, j8, i, i22, r0, bool));
                            b33 = i32;
                            b14 = i18;
                            b21 = i17;
                            b22 = i19;
                            b24 = i23;
                            arrayList = arrayList2;
                            b29 = i28;
                            b3 = i13;
                            a1 = sQLiteStatement;
                            b19 = i12;
                            b32 = i31;
                            b15 = i9;
                            b16 = i8;
                            b17 = i10;
                            b18 = i11;
                            b20 = i15;
                            b23 = i2;
                            b25 = i24;
                            b31 = i30;
                            b2 = i6;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteStatement.close();
                            throw th;
                        }
                    }
                    SQLiteStatement sQLiteStatement2 = a1;
                    ArrayList arrayList3 = arrayList;
                    sQLiteStatement2.close();
                    return arrayList3;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = a1;
                }
        }
    }

    public /* synthetic */ r0(int i, int i2) {
        this.j = i2;
        this.k = i;
    }
}
