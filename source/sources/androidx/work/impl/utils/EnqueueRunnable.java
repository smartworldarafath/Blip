package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.room.util.DBUtil;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import defpackage.b;
import defpackage.ec;
import defpackage.q7;
import defpackage.s3;
import defpackage.ui;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EnqueueRunnable {
    public static final String a = Logger.f("EnqueueRunnable");

    /* JADX WARN: Removed duplicated region for block: B:60:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(WorkContinuationImpl workContinuationImpl) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        List list;
        boolean z5;
        boolean z6;
        Iterator it;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        long j;
        boolean z11;
        HashSet b = WorkContinuationImpl.b(workContinuationImpl);
        WorkManagerImpl workManagerImpl = workContinuationImpl.a;
        List list2 = workContinuationImpl.c;
        String[] strArr = (String[]) b.toArray(new String[0]);
        String str = workContinuationImpl.b;
        ExistingWorkPolicy[] existingWorkPolicyArr = ExistingWorkPolicy.j;
        workManagerImpl.b.d.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        WorkDatabase workDatabase = workManagerImpl.c;
        if (strArr != null && strArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            z3 = false;
            z4 = false;
            z2 = true;
            for (String str2 : strArr) {
                WorkSpec b2 = ((WorkSpecDao_Impl) workDatabase.v()).b(str2);
                if (b2 == null) {
                    Logger.d().b(a, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    break;
                }
                WorkInfo$State workInfo$State = b2.b;
                if (workInfo$State == WorkInfo$State.l) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                z2 &= z11;
                if (workInfo$State == WorkInfo$State.m) {
                    z4 = true;
                } else if (workInfo$State == WorkInfo$State.o) {
                    z3 = true;
                }
            }
        } else {
            z2 = true;
            z3 = false;
            z4 = false;
        }
        boolean isEmpty = TextUtils.isEmpty(str);
        if (!isEmpty && !z) {
            WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) workDatabase.v();
            workSpecDao_Impl.getClass();
            str.getClass();
            list = list2;
            List list3 = (List) DBUtil.b(workSpecDao_Impl.a, true, false, new q7(str, 19));
            if (!list3.isEmpty()) {
                ExistingWorkPolicy[] existingWorkPolicyArr2 = ExistingWorkPolicy.j;
                ExistingWorkPolicy[] existingWorkPolicyArr3 = ExistingWorkPolicy.j;
                ExistingWorkPolicy[] existingWorkPolicyArr4 = ExistingWorkPolicy.j;
                Iterator it2 = list3.iterator();
                while (it2.hasNext()) {
                    WorkInfo$State workInfo$State2 = ((WorkSpec.IdAndState) it2.next()).b;
                    if (workInfo$State2 != WorkInfo$State.j && workInfo$State2 != WorkInfo$State.k) {
                    }
                    z8 = false;
                    z7 = true;
                }
                s3 s3Var = new s3(workDatabase, str, workManagerImpl, 2);
                workDatabase.b();
                try {
                    s3Var.run();
                    workDatabase.o();
                    workDatabase.l();
                    WorkSpecDao v = workDatabase.v();
                    Iterator it3 = list3.iterator();
                    while (it3.hasNext()) {
                        String str3 = ((WorkSpec.IdAndState) it3.next()).a;
                        WorkSpecDao_Impl workSpecDao_Impl2 = (WorkSpecDao_Impl) v;
                        workSpecDao_Impl2.getClass();
                        str3.getClass();
                        DBUtil.b(workSpecDao_Impl2.a, false, true, new q7(str3, 18));
                        v = v;
                        isEmpty = isEmpty;
                    }
                    z5 = isEmpty;
                    z6 = true;
                    it = list.iterator();
                    while (it.hasNext()) {
                        WorkRequest workRequest = (WorkRequest) it.next();
                        WorkSpec workSpec = workRequest.b;
                        UUID uuid = workRequest.a;
                        if (z && !z2) {
                            if (z4) {
                                z9 = z6;
                                workSpec.b = WorkInfo$State.m;
                            } else {
                                z9 = z6;
                                if (z3) {
                                    workSpec.b = WorkInfo$State.o;
                                } else {
                                    workSpec.b = WorkInfo$State.n;
                                }
                            }
                        } else {
                            z9 = z6;
                            workSpec.n = currentTimeMillis;
                        }
                        Iterator it4 = it;
                        if (workSpec.b == WorkInfo$State.j) {
                            z10 = true;
                        } else {
                            z10 = z9;
                        }
                        WorkSpecDao v2 = workDatabase.v();
                        boolean z12 = z10;
                        workManagerImpl.e.getClass();
                        WorkManagerImpl workManagerImpl2 = workManagerImpl;
                        boolean a2 = workSpec.e.a("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME");
                        boolean a3 = workSpec.e.a("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
                        boolean a4 = workSpec.e.a("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
                        if (!a2 && a3 && a4) {
                            String str4 = workSpec.c;
                            Data.Builder builder = new Data.Builder();
                            j = currentTimeMillis;
                            Data data = workSpec.e;
                            data.getClass();
                            builder.b(data.a);
                            builder.a.put("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", str4);
                            Data a5 = builder.a();
                            String str5 = workSpec.a;
                            WorkInfo$State workInfo$State3 = workSpec.b;
                            String str6 = workSpec.d;
                            Data data2 = workSpec.f;
                            long j2 = workSpec.g;
                            long j3 = workSpec.h;
                            long j4 = workSpec.i;
                            Constraints constraints = workSpec.j;
                            int i = workSpec.k;
                            BackoffPolicy backoffPolicy = workSpec.l;
                            long j5 = workSpec.m;
                            long j6 = workSpec.n;
                            long j7 = workSpec.o;
                            long j8 = workSpec.p;
                            boolean z13 = workSpec.q;
                            OutOfQuotaPolicy outOfQuotaPolicy = workSpec.r;
                            int i2 = workSpec.s;
                            int i3 = workSpec.t;
                            long j9 = workSpec.u;
                            int i4 = workSpec.v;
                            int i5 = workSpec.w;
                            String str7 = workSpec.x;
                            Boolean bool = workSpec.y;
                            str5.getClass();
                            workInfo$State3.getClass();
                            str6.getClass();
                            data2.getClass();
                            constraints.getClass();
                            backoffPolicy.getClass();
                            outOfQuotaPolicy.getClass();
                            workSpec = new WorkSpec(str5, workInfo$State3, "androidx.work.multiprocess.RemoteListenableDelegatingWorker", str6, a5, data2, j2, j3, j4, constraints, i, backoffPolicy, j5, j6, j7, j8, z13, outOfQuotaPolicy, i2, i3, j9, i4, i5, str7, bool);
                        } else {
                            j = currentTimeMillis;
                        }
                        WorkSpecDao_Impl workSpecDao_Impl3 = (WorkSpecDao_Impl) v2;
                        workSpecDao_Impl3.getClass();
                        DBUtil.b(workSpecDao_Impl3.a, false, true, new ui(0, workSpecDao_Impl3, workSpec));
                        if (z) {
                            int length = strArr.length;
                            int i6 = 0;
                            while (i6 < length) {
                                String str8 = strArr[i6];
                                String uuid2 = uuid.toString();
                                uuid2.getClass();
                                Dependency dependency = new Dependency(uuid2, str8);
                                DependencyDao_Impl dependencyDao_Impl = (DependencyDao_Impl) workDatabase.q();
                                dependencyDao_Impl.getClass();
                                DBUtil.b(dependencyDao_Impl.a, false, true, new b(11, dependencyDao_Impl, dependency));
                                i6++;
                                strArr = strArr;
                            }
                        }
                        String[] strArr2 = strArr;
                        WorkTagDao w = workDatabase.w();
                        String uuid3 = uuid.toString();
                        uuid3.getClass();
                        Set set = workRequest.c;
                        w.getClass();
                        set.getClass();
                        Iterator it5 = set.iterator();
                        while (it5.hasNext()) {
                            WorkTagDao_Impl workTagDao_Impl = (WorkTagDao_Impl) w;
                            DBUtil.b(workTagDao_Impl.a, false, true, new ui(1, workTagDao_Impl, new WorkTag((String) it5.next(), uuid3)));
                        }
                        if (!z5) {
                            WorkNameDao t = workDatabase.t();
                            String uuid4 = uuid.toString();
                            uuid4.getClass();
                            WorkName workName = new WorkName(str, uuid4);
                            WorkNameDao_Impl workNameDao_Impl = (WorkNameDao_Impl) t;
                            workNameDao_Impl.getClass();
                            DBUtil.b(workNameDao_Impl.a, false, true, new ec(27, workNameDao_Impl, workName));
                        }
                        z6 = z12;
                        it = it4;
                        workManagerImpl = workManagerImpl2;
                        strArr = strArr2;
                        currentTimeMillis = j;
                    }
                    z7 = true;
                    z8 = z6;
                    workContinuationImpl.f = z7;
                    return z8;
                } catch (Throwable th) {
                    workDatabase.l();
                    throw th;
                }
            }
        } else {
            list = list2;
        }
        z5 = isEmpty;
        z6 = false;
        it = list.iterator();
        while (it.hasNext()) {
        }
        z7 = true;
        z8 = z6;
        workContinuationImpl.f = z7;
        return z8;
    }
}
