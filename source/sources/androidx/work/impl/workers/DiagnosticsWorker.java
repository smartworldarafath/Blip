package androidx.work.impl.workers;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao;
import defpackage.ii;
import defpackage.y0;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Result.Success c() {
        WorkManagerImpl a = WorkManagerImpl.a(this.a);
        WorkDatabase workDatabase = a.c;
        workDatabase.getClass();
        WorkSpecDao v = workDatabase.v();
        WorkNameDao t = workDatabase.t();
        WorkTagDao w = workDatabase.w();
        SystemIdInfoDao s = workDatabase.s();
        a.b.d.getClass();
        List list = (List) DBUtil.b(((WorkSpecDao_Impl) v).a, true, false, new y0(2, System.currentTimeMillis() - 86400000));
        RoomDatabase roomDatabase = ((WorkSpecDao_Impl) v).a;
        List list2 = (List) DBUtil.b(roomDatabase, true, false, new ii(15));
        List list3 = (List) DBUtil.b(roomDatabase, true, false, new ii(19));
        if (!list.isEmpty()) {
            Logger d = Logger.d();
            String str = DiagnosticsWorkerKt.a;
            d.e(str, "Recently completed work:\n\n");
            Logger.d().e(str, DiagnosticsWorkerKt.a(t, w, s, list));
        }
        if (!list2.isEmpty()) {
            Logger d2 = Logger.d();
            String str2 = DiagnosticsWorkerKt.a;
            d2.e(str2, "Running work:\n\n");
            Logger.d().e(str2, DiagnosticsWorkerKt.a(t, w, s, list2));
        }
        if (!list3.isEmpty()) {
            Logger d3 = Logger.d();
            String str3 = DiagnosticsWorkerKt.a;
            d3.e(str3, "Enqueued work:\n\n");
            Logger.d().e(str3, DiagnosticsWorkerKt.a(t, w, s, list3));
        }
        return new ListenableWorker.Result.Success();
    }
}
