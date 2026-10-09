package defpackage;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.window.layout.WindowMetricsCalculator;
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
import okio.internal.ZipEntry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ii implements Function1 {
    public final /* synthetic */ int j;

    public /* synthetic */ ii(int i) {
        this.j = i;
    }

    private final Object d(Object obj) {
        boolean z;
        String r0;
        int i;
        Integer valueOf;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement a1 = sQLiteConnection.a1("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?");
        try {
            a1.j(1, 200L);
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
                int i2 = b13;
                int i3 = b14;
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
                int i4 = (int) a1.getLong(b10);
                int i5 = b;
                int i6 = b2;
                BackoffPolicy b34 = WorkTypeConverters.b((int) a1.getLong(b11));
                long j4 = a1.getLong(b12);
                long j5 = a1.getLong(i2);
                long j6 = a1.getLong(i3);
                int i7 = b15;
                long j7 = a1.getLong(i7);
                b15 = i7;
                int i8 = b16;
                int i9 = b3;
                if (((int) a1.getLong(i8)) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i10 = b17;
                int i11 = b4;
                OutOfQuotaPolicy d = WorkTypeConverters.d((int) a1.getLong(i10));
                int i12 = b18;
                int i13 = (int) a1.getLong(i12);
                int i14 = b19;
                int i15 = (int) a1.getLong(i14);
                int i16 = b20;
                long j8 = a1.getLong(i16);
                int i17 = b21;
                int i18 = (int) a1.getLong(i17);
                b21 = i17;
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
                    i = i21;
                    b22 = i19;
                    valueOf = null;
                } else {
                    i = i21;
                    b22 = i19;
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
                Boolean bool2 = bool;
                int i23 = b25;
                NetworkType c = WorkTypeConverters.c((int) a1.getLong(i23));
                int i24 = b26;
                NetworkRequestCompat g = WorkTypeConverters.g(a1.getBlob(i24));
                int i25 = b27;
                if (((int) a1.getLong(i25)) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
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
                b31 = i29;
                int i31 = b33;
                arrayList.add(new WorkSpec(r02, e, r03, r04, a, a2, j, j2, j3, new Constraints(g, c, z2, z3, z4, z5, a1.getLong(i29), a1.getLong(i30), WorkTypeConverters.a(a1.getBlob(i31))), i4, b34, j4, j5, j6, j7, z, d, i13, i15, j8, i18, i20, r0, bool2));
                b28 = i26;
                b4 = i11;
                b17 = i10;
                b18 = i12;
                b19 = i14;
                b20 = i16;
                b23 = i;
                b24 = i22;
                b25 = i23;
                b26 = i24;
                b27 = i25;
                b33 = i31;
                b32 = i30;
                b30 = i28;
                b = i5;
                b3 = i9;
                b13 = i2;
                b14 = i3;
                b2 = i6;
                b16 = i8;
            }
            a1.close();
            return arrayList;
        } catch (Throwable th) {
            a1.close();
            throw th;
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i;
        boolean z;
        String r0;
        int i2;
        int i3;
        Integer valueOf;
        Boolean bool;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        String r02;
        Integer valueOf2;
        Boolean bool2;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        String r03;
        Integer valueOf3;
        Boolean bool3;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19 = true;
        int i4 = 0;
        boolean z20 = false;
        switch (this.j) {
            case 0:
                Offset offset = (Offset) obj;
                return new AnimationVector2D(Float.intBitsToFloat((int) (offset.a >> 32)), Float.intBitsToFloat((int) (offset.a & 4294967295L)));
            case 1:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                float f = animationVector2D.a;
                float f2 = animationVector2D.b;
                return new Offset((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                long j = ((IntOffset) obj).a;
                return new AnimationVector2D((int) (j >> 32), (int) (j & 4294967295L));
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                return new IntOffset((Math.round(animationVector2D2.a) << 32) | (Math.round(animationVector2D2.b) & 4294967295L));
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                long j2 = ((IntSize) obj).a;
                return new AnimationVector2D((int) (j2 >> 32), (int) (j2 & 4294967295L));
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                AnimationVector2D animationVector2D3 = (AnimationVector2D) obj;
                int round = Math.round(animationVector2D3.a);
                if (round < 0) {
                    round = 0;
                }
                int round2 = Math.round(animationVector2D3.b);
                if (round2 < 0) {
                    i = 0;
                } else {
                    i = round2;
                }
                return new IntSize((round << 32) | (i & 4294967295L));
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                Rect rect = (Rect) obj;
                return new AnimationVector4D(rect.a, rect.b, rect.c, rect.d);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AnimationVector4D animationVector4D = (AnimationVector4D) obj;
                return new Rect(animationVector4D.a, animationVector4D.b, animationVector4D.c, animationVector4D.d);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Float.valueOf(((AnimationVector1D) obj).a);
            case KeyModifiers.a /* 9 */:
                return ((WindowInsetsHolder) obj).g;
            case KeyModifiers.b /* 10 */:
                return ((WindowInsetsHolder) obj).f;
            case 11:
                return ((WindowInsetsHolder) obj).c;
            case KeyModifiers.c /* 12 */:
                WindowMetricsCalculator windowMetricsCalculator = (WindowMetricsCalculator) obj;
                WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.Companion.a;
                windowMetricsCalculator.getClass();
                return windowMetricsCalculator;
            case 13:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement a1 = sQLiteConnection.a1("DELETE FROM WorkProgress");
                try {
                    a1.V0();
                    a1.close();
                    return Unit.a;
                } finally {
                }
            case 14:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                SQLiteStatement a12 = sQLiteConnection2.a1("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
                try {
                    int b = SQLiteStatementUtil.b(a12, "id");
                    int b2 = SQLiteStatementUtil.b(a12, "state");
                    int b3 = SQLiteStatementUtil.b(a12, "worker_class_name");
                    int b4 = SQLiteStatementUtil.b(a12, "input_merger_class_name");
                    int b5 = SQLiteStatementUtil.b(a12, "input");
                    int b6 = SQLiteStatementUtil.b(a12, "output");
                    int b7 = SQLiteStatementUtil.b(a12, "initial_delay");
                    int b8 = SQLiteStatementUtil.b(a12, "interval_duration");
                    int b9 = SQLiteStatementUtil.b(a12, "flex_duration");
                    int b10 = SQLiteStatementUtil.b(a12, "run_attempt_count");
                    int b11 = SQLiteStatementUtil.b(a12, "backoff_policy");
                    int b12 = SQLiteStatementUtil.b(a12, "backoff_delay_duration");
                    int b13 = SQLiteStatementUtil.b(a12, "last_enqueue_time");
                    int b14 = SQLiteStatementUtil.b(a12, "minimum_retention_duration");
                    int b15 = SQLiteStatementUtil.b(a12, "schedule_requested_at");
                    int b16 = SQLiteStatementUtil.b(a12, "run_in_foreground");
                    int b17 = SQLiteStatementUtil.b(a12, "out_of_quota_policy");
                    int b18 = SQLiteStatementUtil.b(a12, "period_count");
                    int b19 = SQLiteStatementUtil.b(a12, "generation");
                    int b20 = SQLiteStatementUtil.b(a12, "next_schedule_time_override");
                    int b21 = SQLiteStatementUtil.b(a12, "next_schedule_time_override_generation");
                    int b22 = SQLiteStatementUtil.b(a12, "stop_reason");
                    int b23 = SQLiteStatementUtil.b(a12, "trace_tag");
                    int b24 = SQLiteStatementUtil.b(a12, "backoff_on_system_interruptions");
                    int b25 = SQLiteStatementUtil.b(a12, "required_network_type");
                    int b26 = SQLiteStatementUtil.b(a12, "required_network_request");
                    int b27 = SQLiteStatementUtil.b(a12, "requires_charging");
                    int b28 = SQLiteStatementUtil.b(a12, "requires_device_idle");
                    int b29 = SQLiteStatementUtil.b(a12, "requires_battery_not_low");
                    int b30 = SQLiteStatementUtil.b(a12, "requires_storage_not_low");
                    int b31 = SQLiteStatementUtil.b(a12, "trigger_content_update_delay");
                    int b32 = SQLiteStatementUtil.b(a12, "trigger_max_content_delay");
                    int b33 = SQLiteStatementUtil.b(a12, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (a12.V0()) {
                        String r04 = a12.r0(b);
                        int i5 = b14;
                        int i6 = b13;
                        WorkInfo$State e = WorkTypeConverters.e((int) a12.getLong(b2));
                        String r05 = a12.r0(b3);
                        String r06 = a12.r0(b4);
                        byte[] blob = a12.getBlob(b5);
                        Data data = Data.b;
                        Data a = Data.Companion.a(blob);
                        Data a2 = Data.Companion.a(a12.getBlob(b6));
                        long j3 = a12.getLong(b7);
                        long j4 = a12.getLong(b8);
                        long j5 = a12.getLong(b9);
                        int i7 = (int) a12.getLong(b10);
                        int i8 = b3;
                        int i9 = b2;
                        BackoffPolicy b34 = WorkTypeConverters.b((int) a12.getLong(b11));
                        long j6 = a12.getLong(b12);
                        long j7 = a12.getLong(i6);
                        long j8 = a12.getLong(i5);
                        int i10 = b15;
                        long j9 = a12.getLong(i10);
                        b15 = i10;
                        int i11 = b16;
                        int i12 = b;
                        if (((int) a12.getLong(i11)) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i13 = b4;
                        int i14 = b17;
                        OutOfQuotaPolicy d = WorkTypeConverters.d((int) a12.getLong(i14));
                        b17 = i14;
                        int i15 = b18;
                        int i16 = (int) a12.getLong(i15);
                        b18 = i15;
                        int i17 = b19;
                        int i18 = (int) a12.getLong(i17);
                        int i19 = b20;
                        long j10 = a12.getLong(i19);
                        int i20 = b21;
                        int i21 = (int) a12.getLong(i20);
                        int i22 = b22;
                        int i23 = (int) a12.getLong(i22);
                        int i24 = b23;
                        if (a12.isNull(i24)) {
                            r0 = null;
                        } else {
                            r0 = a12.r0(i24);
                        }
                        int i25 = b24;
                        if (a12.isNull(i25)) {
                            i2 = i24;
                            i3 = i22;
                            valueOf = null;
                        } else {
                            i2 = i24;
                            i3 = i22;
                            valueOf = Integer.valueOf((int) a12.getLong(i25));
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
                        int i26 = b25;
                        NetworkType c = WorkTypeConverters.c((int) a12.getLong(i26));
                        int i27 = b26;
                        NetworkRequestCompat g = WorkTypeConverters.g(a12.getBlob(i27));
                        int i28 = b27;
                        if (((int) a12.getLong(i28)) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        int i29 = b28;
                        if (((int) a12.getLong(i29)) != 0) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        int i30 = b29;
                        if (((int) a12.getLong(i30)) != 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        b29 = i30;
                        int i31 = b30;
                        if (((int) a12.getLong(i31)) != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        int i32 = b31;
                        int i33 = b32;
                        b31 = i32;
                        int i34 = b33;
                        b33 = i34;
                        arrayList.add(new WorkSpec(r04, e, r05, r06, a, a2, j3, j4, j5, new Constraints(g, c, z2, z3, z4, z5, a12.getLong(i32), a12.getLong(i33), WorkTypeConverters.a(a12.getBlob(i34))), i7, b34, j6, j7, j8, j9, z, d, i16, i18, j10, i21, i23, r0, bool));
                        b = i12;
                        b16 = i11;
                        b19 = i17;
                        b21 = i20;
                        b22 = i3;
                        b23 = i2;
                        b24 = i25;
                        b25 = i26;
                        b26 = i27;
                        b32 = i33;
                        b30 = i31;
                        b2 = i9;
                        b4 = i13;
                        b20 = i19;
                        b27 = i28;
                        b13 = i6;
                        b3 = i8;
                        b28 = i29;
                        b14 = i5;
                    }
                    return arrayList;
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                SQLiteStatement a13 = sQLiteConnection3.a1("SELECT * FROM workspec WHERE state=1");
                try {
                    int b35 = SQLiteStatementUtil.b(a13, "id");
                    int b36 = SQLiteStatementUtil.b(a13, "state");
                    int b37 = SQLiteStatementUtil.b(a13, "worker_class_name");
                    int b38 = SQLiteStatementUtil.b(a13, "input_merger_class_name");
                    int b39 = SQLiteStatementUtil.b(a13, "input");
                    int b40 = SQLiteStatementUtil.b(a13, "output");
                    int b41 = SQLiteStatementUtil.b(a13, "initial_delay");
                    int b42 = SQLiteStatementUtil.b(a13, "interval_duration");
                    int b43 = SQLiteStatementUtil.b(a13, "flex_duration");
                    int b44 = SQLiteStatementUtil.b(a13, "run_attempt_count");
                    int b45 = SQLiteStatementUtil.b(a13, "backoff_policy");
                    int b46 = SQLiteStatementUtil.b(a13, "backoff_delay_duration");
                    int b47 = SQLiteStatementUtil.b(a13, "last_enqueue_time");
                    int b48 = SQLiteStatementUtil.b(a13, "minimum_retention_duration");
                    int b49 = SQLiteStatementUtil.b(a13, "schedule_requested_at");
                    int b50 = SQLiteStatementUtil.b(a13, "run_in_foreground");
                    int b51 = SQLiteStatementUtil.b(a13, "out_of_quota_policy");
                    int b52 = SQLiteStatementUtil.b(a13, "period_count");
                    int b53 = SQLiteStatementUtil.b(a13, "generation");
                    int b54 = SQLiteStatementUtil.b(a13, "next_schedule_time_override");
                    int b55 = SQLiteStatementUtil.b(a13, "next_schedule_time_override_generation");
                    int b56 = SQLiteStatementUtil.b(a13, "stop_reason");
                    int b57 = SQLiteStatementUtil.b(a13, "trace_tag");
                    int b58 = SQLiteStatementUtil.b(a13, "backoff_on_system_interruptions");
                    int b59 = SQLiteStatementUtil.b(a13, "required_network_type");
                    int b60 = SQLiteStatementUtil.b(a13, "required_network_request");
                    int b61 = SQLiteStatementUtil.b(a13, "requires_charging");
                    int b62 = SQLiteStatementUtil.b(a13, "requires_device_idle");
                    int b63 = SQLiteStatementUtil.b(a13, "requires_battery_not_low");
                    int b64 = SQLiteStatementUtil.b(a13, "requires_storage_not_low");
                    int b65 = SQLiteStatementUtil.b(a13, "trigger_content_update_delay");
                    int b66 = SQLiteStatementUtil.b(a13, "trigger_max_content_delay");
                    int b67 = SQLiteStatementUtil.b(a13, "content_uri_triggers");
                    ArrayList arrayList2 = new ArrayList();
                    while (a13.V0()) {
                        String r07 = a13.r0(b35);
                        int i35 = b48;
                        int i36 = b47;
                        WorkInfo$State e2 = WorkTypeConverters.e((int) a13.getLong(b36));
                        String r08 = a13.r0(b37);
                        String r09 = a13.r0(b38);
                        byte[] blob2 = a13.getBlob(b39);
                        Data data2 = Data.b;
                        Data a3 = Data.Companion.a(blob2);
                        Data a4 = Data.Companion.a(a13.getBlob(b40));
                        long j11 = a13.getLong(b41);
                        long j12 = a13.getLong(b42);
                        long j13 = a13.getLong(b43);
                        int i37 = (int) a13.getLong(b44);
                        int i38 = b37;
                        int i39 = b36;
                        BackoffPolicy b68 = WorkTypeConverters.b((int) a13.getLong(b45));
                        long j14 = a13.getLong(b46);
                        long j15 = a13.getLong(i36);
                        long j16 = a13.getLong(i35);
                        int i40 = b49;
                        long j17 = a13.getLong(i40);
                        int i41 = b35;
                        int i42 = b50;
                        if (((int) a13.getLong(i42)) != 0) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        int i43 = b38;
                        int i44 = b51;
                        OutOfQuotaPolicy d2 = WorkTypeConverters.d((int) a13.getLong(i44));
                        int i45 = b52;
                        int i46 = (int) a13.getLong(i45);
                        int i47 = b53;
                        int i48 = (int) a13.getLong(i47);
                        long j18 = a13.getLong(b54);
                        int i49 = b55;
                        int i50 = (int) a13.getLong(i49);
                        b55 = i49;
                        int i51 = b56;
                        int i52 = (int) a13.getLong(i51);
                        int i53 = b57;
                        if (a13.isNull(i53)) {
                            r02 = null;
                        } else {
                            r02 = a13.r0(i53);
                        }
                        int i54 = b58;
                        if (a13.isNull(i54)) {
                            b57 = i53;
                            b56 = i51;
                            valueOf2 = null;
                        } else {
                            b57 = i53;
                            b56 = i51;
                            valueOf2 = Integer.valueOf((int) a13.getLong(i54));
                        }
                        if (valueOf2 != null) {
                            if (valueOf2.intValue() != 0) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            bool2 = Boolean.valueOf(z12);
                        } else {
                            bool2 = null;
                        }
                        int i55 = b59;
                        NetworkType c2 = WorkTypeConverters.c((int) a13.getLong(i55));
                        int i56 = b60;
                        NetworkRequestCompat g2 = WorkTypeConverters.g(a13.getBlob(i56));
                        b58 = i54;
                        b59 = i55;
                        int i57 = b61;
                        if (((int) a13.getLong(i57)) != 0) {
                            z8 = true;
                        } else {
                            z8 = false;
                        }
                        int i58 = b62;
                        if (((int) a13.getLong(i58)) != 0) {
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        b61 = i57;
                        int i59 = b63;
                        if (((int) a13.getLong(i59)) != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        b62 = i58;
                        b63 = i59;
                        int i60 = b64;
                        if (((int) a13.getLong(i60)) != 0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        int i61 = b65;
                        int i62 = b66;
                        int i63 = b67;
                        b65 = i61;
                        arrayList2.add(new WorkSpec(r07, e2, r08, r09, a3, a4, j11, j12, j13, new Constraints(g2, c2, z8, z9, z10, z11, a13.getLong(i61), a13.getLong(i62), WorkTypeConverters.a(a13.getBlob(i63))), i37, b68, j14, j15, j16, j17, z7, d2, i46, i48, j18, i50, i52, r02, bool2));
                        b66 = i62;
                        b64 = i60;
                        b67 = i63;
                        b48 = i35;
                        b36 = i39;
                        b37 = i38;
                        b38 = i43;
                        b50 = i42;
                        b51 = i44;
                        b52 = i45;
                        b53 = i47;
                        b60 = i56;
                        b35 = i41;
                        b49 = i40;
                        b47 = i36;
                    }
                    return arrayList2;
                } finally {
                }
            case 16:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                SQLiteStatement a14 = sQLiteConnection4.a1("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time");
                try {
                    int b69 = SQLiteStatementUtil.b(a14, "id");
                    int b70 = SQLiteStatementUtil.b(a14, "state");
                    int b71 = SQLiteStatementUtil.b(a14, "worker_class_name");
                    int b72 = SQLiteStatementUtil.b(a14, "input_merger_class_name");
                    int b73 = SQLiteStatementUtil.b(a14, "input");
                    int b74 = SQLiteStatementUtil.b(a14, "output");
                    int b75 = SQLiteStatementUtil.b(a14, "initial_delay");
                    int b76 = SQLiteStatementUtil.b(a14, "interval_duration");
                    int b77 = SQLiteStatementUtil.b(a14, "flex_duration");
                    int b78 = SQLiteStatementUtil.b(a14, "run_attempt_count");
                    int b79 = SQLiteStatementUtil.b(a14, "backoff_policy");
                    int b80 = SQLiteStatementUtil.b(a14, "backoff_delay_duration");
                    int b81 = SQLiteStatementUtil.b(a14, "last_enqueue_time");
                    int b82 = SQLiteStatementUtil.b(a14, "minimum_retention_duration");
                    int b83 = SQLiteStatementUtil.b(a14, "schedule_requested_at");
                    int b84 = SQLiteStatementUtil.b(a14, "run_in_foreground");
                    int b85 = SQLiteStatementUtil.b(a14, "out_of_quota_policy");
                    int b86 = SQLiteStatementUtil.b(a14, "period_count");
                    int b87 = SQLiteStatementUtil.b(a14, "generation");
                    int b88 = SQLiteStatementUtil.b(a14, "next_schedule_time_override");
                    int b89 = SQLiteStatementUtil.b(a14, "next_schedule_time_override_generation");
                    int b90 = SQLiteStatementUtil.b(a14, "stop_reason");
                    int b91 = SQLiteStatementUtil.b(a14, "trace_tag");
                    int b92 = SQLiteStatementUtil.b(a14, "backoff_on_system_interruptions");
                    int b93 = SQLiteStatementUtil.b(a14, "required_network_type");
                    int b94 = SQLiteStatementUtil.b(a14, "required_network_request");
                    int b95 = SQLiteStatementUtil.b(a14, "requires_charging");
                    int b96 = SQLiteStatementUtil.b(a14, "requires_device_idle");
                    int b97 = SQLiteStatementUtil.b(a14, "requires_battery_not_low");
                    int b98 = SQLiteStatementUtil.b(a14, "requires_storage_not_low");
                    int b99 = SQLiteStatementUtil.b(a14, "trigger_content_update_delay");
                    int b100 = SQLiteStatementUtil.b(a14, "trigger_max_content_delay");
                    int b101 = SQLiteStatementUtil.b(a14, "content_uri_triggers");
                    ArrayList arrayList3 = new ArrayList();
                    while (a14.V0()) {
                        String r010 = a14.r0(b69);
                        int i64 = b82;
                        int i65 = b81;
                        WorkInfo$State e3 = WorkTypeConverters.e((int) a14.getLong(b70));
                        String r011 = a14.r0(b71);
                        String r012 = a14.r0(b72);
                        byte[] blob3 = a14.getBlob(b73);
                        Data data3 = Data.b;
                        Data a5 = Data.Companion.a(blob3);
                        Data a6 = Data.Companion.a(a14.getBlob(b74));
                        long j19 = a14.getLong(b75);
                        long j20 = a14.getLong(b76);
                        long j21 = a14.getLong(b77);
                        int i66 = (int) a14.getLong(b78);
                        int i67 = b71;
                        int i68 = b70;
                        BackoffPolicy b102 = WorkTypeConverters.b((int) a14.getLong(b79));
                        long j22 = a14.getLong(b80);
                        long j23 = a14.getLong(i65);
                        long j24 = a14.getLong(i64);
                        int i69 = b83;
                        long j25 = a14.getLong(i69);
                        int i70 = b69;
                        int i71 = b84;
                        if (((int) a14.getLong(i71)) != 0) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        int i72 = b72;
                        int i73 = b85;
                        OutOfQuotaPolicy d3 = WorkTypeConverters.d((int) a14.getLong(i73));
                        int i74 = b86;
                        int i75 = (int) a14.getLong(i74);
                        int i76 = b87;
                        int i77 = (int) a14.getLong(i76);
                        long j26 = a14.getLong(b88);
                        int i78 = b89;
                        int i79 = (int) a14.getLong(i78);
                        b89 = i78;
                        int i80 = b90;
                        int i81 = (int) a14.getLong(i80);
                        int i82 = b91;
                        if (a14.isNull(i82)) {
                            r03 = null;
                        } else {
                            r03 = a14.r0(i82);
                        }
                        int i83 = b92;
                        if (a14.isNull(i83)) {
                            b91 = i82;
                            b90 = i80;
                            valueOf3 = null;
                        } else {
                            b91 = i82;
                            b90 = i80;
                            valueOf3 = Integer.valueOf((int) a14.getLong(i83));
                        }
                        if (valueOf3 != null) {
                            if (valueOf3.intValue() != 0) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            bool3 = Boolean.valueOf(z18);
                        } else {
                            bool3 = null;
                        }
                        int i84 = b93;
                        NetworkType c3 = WorkTypeConverters.c((int) a14.getLong(i84));
                        int i85 = b94;
                        NetworkRequestCompat g3 = WorkTypeConverters.g(a14.getBlob(i85));
                        b92 = i83;
                        b93 = i84;
                        int i86 = b95;
                        if (((int) a14.getLong(i86)) != 0) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        int i87 = b96;
                        if (((int) a14.getLong(i87)) != 0) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        b95 = i86;
                        int i88 = b97;
                        if (((int) a14.getLong(i88)) != 0) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        b96 = i87;
                        b97 = i88;
                        int i89 = b98;
                        if (((int) a14.getLong(i89)) != 0) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        int i90 = b99;
                        int i91 = b100;
                        int i92 = b101;
                        b99 = i90;
                        arrayList3.add(new WorkSpec(r010, e3, r011, r012, a5, a6, j19, j20, j21, new Constraints(g3, c3, z14, z15, z16, z17, a14.getLong(i90), a14.getLong(i91), WorkTypeConverters.a(a14.getBlob(i92))), i66, b102, j22, j23, j24, j25, z13, d3, i75, i77, j26, i79, i81, r03, bool3));
                        b100 = i91;
                        b98 = i89;
                        b101 = i92;
                        b82 = i64;
                        b70 = i68;
                        b71 = i67;
                        b72 = i72;
                        b84 = i71;
                        b85 = i73;
                        b86 = i74;
                        b87 = i76;
                        b94 = i85;
                        b69 = i70;
                        b83 = i69;
                        b81 = i65;
                    }
                    return arrayList3;
                } finally {
                }
            case 17:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                SQLiteStatement a15 = sQLiteConnection5.a1("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)");
                try {
                    if (a15.V0()) {
                        i4 = (int) a15.getLong(0);
                    }
                    a15.close();
                    return Integer.valueOf(i4);
                } finally {
                }
            case 18:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                SQLiteStatement a16 = sQLiteConnection6.a1("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1");
                try {
                    if (a16.V0()) {
                        if (((int) a16.getLong(0)) == 0) {
                            z19 = false;
                        }
                        z20 = z19;
                    }
                    a16.close();
                    return Boolean.valueOf(z20);
                } finally {
                }
            case 19:
                return d(obj);
            case 20:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                SQLiteStatement a17 = sQLiteConnection7.a1("UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)");
                try {
                    a17.V0();
                    int a7 = SQLiteConnectionUtil.a(sQLiteConnection7);
                    a17.close();
                    return Integer.valueOf(a7);
                } finally {
                }
            default:
                ((ZipEntry) obj).getClass();
                return Boolean.TRUE;
        }
    }
}
