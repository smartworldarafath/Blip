package defpackage;

import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.AndroidSelectionHandles_androidKt;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
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
public final /* synthetic */ class y0 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ long k;

    public /* synthetic */ y0(int i, long j) {
        this.j = i;
        this.k = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        SQLiteStatement sQLiteStatement;
        boolean z;
        String r0;
        int i;
        int i2;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i3 = this.j;
        long j = this.k;
        switch (i3) {
            case 0:
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                float f = AndroidCursorHandle_androidKt.a;
                float intBitsToFloat = Float.intBitsToFloat((int) (cacheDrawScope.j.i() >> 32)) / 2.0f;
                return cacheDrawScope.a(new z0(intBitsToFloat, AndroidSelectionHandles_androidKt.d(cacheDrawScope, intBitsToFloat), ColorFilter.Companion.a(j), 0));
            case 1:
                ((SemanticsPropertyReceiver) obj).b(SelectionHandlesKt.a, new SelectionHandleInfo(Handle.j, this.k, SelectionHandleAnchor.k, true));
                return Unit.a;
            default:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement a1 = sQLiteConnection.a1("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
                try {
                    a1.j(1, j);
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
                    ArrayList arrayList = new ArrayList();
                    while (a1.V0()) {
                        String r02 = a1.r0(b);
                        ArrayList arrayList2 = arrayList;
                        int i4 = b;
                        WorkInfo$State e = WorkTypeConverters.e((int) a1.getLong(b2));
                        String r03 = a1.r0(b3);
                        String r04 = a1.r0(b4);
                        byte[] blob = a1.getBlob(b5);
                        Data data = Data.b;
                        Data a = Data.Companion.a(blob);
                        Data a2 = Data.Companion.a(a1.getBlob(b6));
                        long j2 = a1.getLong(b7);
                        long j3 = a1.getLong(b8);
                        long j4 = a1.getLong(b9);
                        int i5 = (int) a1.getLong(b10);
                        BackoffPolicy b34 = WorkTypeConverters.b((int) a1.getLong(b11));
                        long j5 = a1.getLong(b12);
                        long j6 = a1.getLong(b13);
                        long j7 = a1.getLong(b14);
                        int i6 = b15;
                        long j8 = a1.getLong(i6);
                        int i7 = b2;
                        int i8 = b16;
                        int i9 = b3;
                        if (((int) a1.getLong(i8)) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i10 = b17;
                        OutOfQuotaPolicy d = WorkTypeConverters.d((int) a1.getLong(i10));
                        int i11 = b18;
                        int i12 = (int) a1.getLong(i11);
                        int i13 = b19;
                        int i14 = (int) a1.getLong(i13);
                        int i15 = b20;
                        long j9 = a1.getLong(i15);
                        int i16 = b14;
                        int i17 = b21;
                        int i18 = (int) a1.getLong(i17);
                        int i19 = b22;
                        int i20 = (int) a1.getLong(i19);
                        int i21 = b23;
                        Boolean bool = null;
                        if (a1.isNull(i21)) {
                            r0 = null;
                        } else {
                            r0 = a1.r0(i21);
                        }
                        int i22 = b24;
                        if (a1.isNull(i22)) {
                            i = i18;
                            i2 = i19;
                            valueOf = null;
                        } else {
                            i = i18;
                            i2 = i19;
                            valueOf = Integer.valueOf((int) a1.getLong(i22));
                        }
                        if (valueOf != null) {
                            if (valueOf.intValue() != 0) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            bool = Boolean.valueOf(z6);
                        }
                        int i23 = b25;
                        Boolean bool2 = bool;
                        NetworkType c = WorkTypeConverters.c((int) a1.getLong(i23));
                        int i24 = b26;
                        NetworkRequestCompat g = WorkTypeConverters.g(a1.getBlob(i24));
                        b25 = i23;
                        b26 = i24;
                        int i25 = b27;
                        if (((int) a1.getLong(i25)) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        b27 = i25;
                        int i26 = b28;
                        if (((int) a1.getLong(i26)) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        int i27 = b29;
                        if (((int) a1.getLong(i27)) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        b29 = i27;
                        int i28 = b30;
                        if (((int) a1.getLong(i28)) != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        int i29 = b31;
                        int i30 = b32;
                        int i31 = b33;
                        b33 = i31;
                        sQLiteStatement = a1;
                        try {
                            arrayList2.add(new WorkSpec(r02, e, r03, r04, a, a2, j2, j3, j4, new Constraints(g, c, z2, z3, z4, z5, a1.getLong(i29), a1.getLong(i30), WorkTypeConverters.a(a1.getBlob(i31))), i5, b34, j5, j6, j7, j8, z, d, i12, i14, j9, i, i20, r0, bool2));
                            b2 = i7;
                            b15 = i6;
                            b22 = i2;
                            b24 = i22;
                            b30 = i28;
                            arrayList = arrayList2;
                            a1 = sQLiteStatement;
                            b31 = i29;
                            b32 = i30;
                            b14 = i16;
                            b20 = i15;
                            b21 = i17;
                            b23 = i21;
                            b = i4;
                            b28 = i26;
                            b3 = i9;
                            b16 = i8;
                            b17 = i10;
                            b18 = i11;
                            b19 = i13;
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
}
