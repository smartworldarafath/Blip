package androidx.work.impl.model;

import android.net.NetworkRequest;
import android.os.Build;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.utils.NetworkRequestCompat;
import defpackage.ec;
import defpackage.k8;
import defpackage.pg;
import defpackage.q7;
import defpackage.ti;
import io.sentry.d;
import java.io.ByteArrayOutputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    public final RoomDatabase a;
    public final AnonymousClass1 b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends EntityInsertAdapter<WorkSpec> {
        @Override // androidx.room.EntityInsertAdapter
        public final void a(SQLiteStatement sQLiteStatement, Object obj) {
            int i;
            int i2;
            Integer num;
            int[] W;
            int[] W2;
            byte[] byteArray;
            byte[] byteArray2;
            WorkSpec workSpec = (WorkSpec) obj;
            sQLiteStatement.getClass();
            workSpec.getClass();
            int i3 = 1;
            sQLiteStatement.T(1, workSpec.a);
            sQLiteStatement.j(2, WorkTypeConverters.f(workSpec.b));
            sQLiteStatement.T(3, workSpec.c);
            sQLiteStatement.T(4, workSpec.d);
            Data data = Data.b;
            sQLiteStatement.k(5, Data.Companion.c(workSpec.e));
            sQLiteStatement.k(6, Data.Companion.c(workSpec.f));
            sQLiteStatement.j(7, workSpec.g);
            sQLiteStatement.j(8, workSpec.h);
            sQLiteStatement.j(9, workSpec.i);
            sQLiteStatement.j(10, workSpec.k);
            BackoffPolicy backoffPolicy = workSpec.l;
            backoffPolicy.getClass();
            int ordinal = backoffPolicy.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    i = 1;
                } else {
                    k8.e();
                    return;
                }
            } else {
                i = 0;
            }
            sQLiteStatement.j(11, i);
            sQLiteStatement.j(12, workSpec.m);
            sQLiteStatement.j(13, workSpec.n);
            sQLiteStatement.j(14, workSpec.o);
            sQLiteStatement.j(15, workSpec.p);
            sQLiteStatement.j(16, workSpec.q ? 1L : 0L);
            OutOfQuotaPolicy outOfQuotaPolicy = workSpec.r;
            outOfQuotaPolicy.getClass();
            int ordinal2 = outOfQuotaPolicy.ordinal();
            if (ordinal2 != 0) {
                if (ordinal2 == 1) {
                    i2 = 1;
                } else {
                    k8.e();
                    return;
                }
            } else {
                i2 = 0;
            }
            sQLiteStatement.j(17, i2);
            sQLiteStatement.j(18, workSpec.s);
            sQLiteStatement.j(19, workSpec.t);
            sQLiteStatement.j(20, workSpec.u);
            sQLiteStatement.j(21, workSpec.v);
            sQLiteStatement.j(22, workSpec.w);
            String str = workSpec.x;
            if (str == null) {
                sQLiteStatement.l(23);
            } else {
                sQLiteStatement.T(23, str);
            }
            Boolean bool = workSpec.y;
            if (bool != null) {
                num = Integer.valueOf(bool.booleanValue() ? 1 : 0);
            } else {
                num = null;
            }
            if (num == null) {
                sQLiteStatement.l(24);
            } else {
                sQLiteStatement.j(24, num.intValue());
            }
            Constraints constraints = workSpec.j;
            NetworkType networkType = constraints.a;
            networkType.getClass();
            int ordinal3 = networkType.ordinal();
            if (ordinal3 != 0) {
                if (ordinal3 != 1) {
                    if (ordinal3 != 2) {
                        if (ordinal3 != 3) {
                            if (ordinal3 != 4) {
                                if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.o) {
                                    i3 = 5;
                                } else {
                                    d.g("Could not convert ", networkType, " to int");
                                    return;
                                }
                            } else {
                                i3 = 4;
                            }
                        } else {
                            i3 = 3;
                        }
                    } else {
                        i3 = 2;
                    }
                }
            } else {
                i3 = 0;
            }
            sQLiteStatement.j(25, i3);
            NetworkRequestCompat networkRequestCompat = constraints.b;
            networkRequestCompat.getClass();
            NetworkRequest networkRequest = (NetworkRequest) networkRequestCompat.a;
            if (networkRequest == null) {
                byteArray = new byte[0];
            } else {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                    try {
                        if (Build.VERSION.SDK_INT >= 31) {
                            W = networkRequest.getTransportTypes();
                            W.getClass();
                        } else {
                            int[] iArr = {2, 0, 3, 6, 10, 9, 8, 4, 1, 5};
                            ArrayList arrayList = new ArrayList();
                            for (int i4 = 0; i4 < 10; i4++) {
                                int i5 = iArr[i4];
                                if (networkRequest.hasTransport(i5)) {
                                    arrayList.add(Integer.valueOf(i5));
                                }
                            }
                            W = CollectionsKt.W(arrayList);
                        }
                        if (Build.VERSION.SDK_INT >= 31) {
                            W2 = networkRequest.getCapabilities();
                            W2.getClass();
                        } else {
                            int[] iArr2 = {17, 5, 2, 10, 29, 19, 3, 32, 7, 4, 12, 36, 23, 0, 33, 20, 11, 13, 18, 21, 15, 35, 34, 8, 1, 25, 14, 16, 6, 9};
                            ArrayList arrayList2 = new ArrayList();
                            for (int i6 = 0; i6 < 30; i6++) {
                                int i7 = iArr2[i6];
                                if (networkRequest.hasCapability(i7)) {
                                    arrayList2.add(Integer.valueOf(i7));
                                }
                            }
                            W2 = CollectionsKt.W(arrayList2);
                        }
                        objectOutputStream.writeInt(W.length);
                        for (int i8 : W) {
                            objectOutputStream.writeInt(i8);
                        }
                        objectOutputStream.writeInt(W2.length);
                        for (int i9 : W2) {
                            objectOutputStream.writeInt(i9);
                        }
                        objectOutputStream.close();
                        byteArrayOutputStream.close();
                        byteArray = byteArrayOutputStream.toByteArray();
                        byteArray.getClass();
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
            sQLiteStatement.k(26, byteArray);
            sQLiteStatement.j(27, constraints.c ? 1L : 0L);
            sQLiteStatement.j(28, constraints.d ? 1L : 0L);
            sQLiteStatement.j(29, constraints.e ? 1L : 0L);
            sQLiteStatement.j(30, constraints.f ? 1L : 0L);
            sQLiteStatement.j(31, constraints.g);
            sQLiteStatement.j(32, constraints.h);
            Set<Constraints.ContentUriTrigger> set = constraints.i;
            set.getClass();
            if (set.isEmpty()) {
                byteArray2 = new byte[0];
            } else {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream2);
                    try {
                        objectOutputStream2.writeInt(set.size());
                        for (Constraints.ContentUriTrigger contentUriTrigger : set) {
                            objectOutputStream2.writeUTF(contentUriTrigger.a.toString());
                            objectOutputStream2.writeBoolean(contentUriTrigger.b);
                        }
                        objectOutputStream2.close();
                        byteArrayOutputStream2.close();
                        byteArray2 = byteArrayOutputStream2.toByteArray();
                        byteArray2.getClass();
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } finally {
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } finally {
                    }
                }
            }
            sQLiteStatement.k(33, byteArray2);
        }

        @Override // androidx.room.EntityInsertAdapter
        public final String b() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.work.impl.model.WorkSpecDao_Impl$1] */
    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.a = roomDatabase;
    }

    public final WorkInfo$State a(String str) {
        str.getClass();
        return (WorkInfo$State) DBUtil.b(this.a, true, false, new q7(str, 11));
    }

    public final WorkSpec b(String str) {
        str.getClass();
        return (WorkSpec) DBUtil.b(this.a, true, false, new q7(str, 10));
    }

    public final int c(long j, String str) {
        str.getClass();
        return ((Number) DBUtil.b(this.a, false, true, new ti(0, j, str))).intValue();
    }

    public final void d(int i, String str) {
        str.getClass();
        DBUtil.b(this.a, false, true, new pg(str, i, 1));
    }

    public final void e(long j, String str) {
        str.getClass();
        DBUtil.b(this.a, false, true, new ti(1, j, str));
    }

    public final int f(WorkInfo$State workInfo$State, String str) {
        str.getClass();
        return ((Number) DBUtil.b(this.a, false, true, new ec(28, workInfo$State, str))).intValue();
    }

    public final void g(int i, String str) {
        str.getClass();
        DBUtil.b(this.a, false, true, new pg(i, str));
    }
}
