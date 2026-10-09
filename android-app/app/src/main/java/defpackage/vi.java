package defpackage;

import android.content.res.AssetFileDescriptor;
import androidx.room.util.DBUtil;
import androidx.work.Logger;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import java.util.concurrent.Callable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class vi implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ vi(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                WorkerWrapper workerWrapper = (WorkerWrapper) obj;
                WorkSpec workSpec = workerWrapper.a;
                WorkInfo$State workInfo$State = workSpec.b;
                String str = workSpec.c;
                WorkInfo$State workInfo$State2 = WorkInfo$State.j;
                if (workInfo$State != workInfo$State2) {
                    String str2 = WorkerWrapperKt.a;
                    Logger.d().a(str2, str + " is not in ENQUEUED state. Nothing more to do");
                    return Boolean.TRUE;
                }
                if (workSpec.b() || (workSpec.b == workInfo$State2 && workSpec.k > 0)) {
                    workerWrapper.f.getClass();
                    if (System.currentTimeMillis() < workSpec.a()) {
                        Logger.d().a(WorkerWrapperKt.a, "Delaying execution for " + str + " because it is being executed before schedule.");
                        return Boolean.TRUE;
                    }
                }
                return Boolean.FALSE;
            case 1:
                WorkerWrapper workerWrapper2 = (WorkerWrapper) obj;
                WorkSpecDao workSpecDao = workerWrapper2.i;
                String str3 = workerWrapper2.c;
                WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) workSpecDao;
                boolean z = false;
                if (workSpecDao_Impl.a(str3) == WorkInfo$State.j) {
                    workSpecDao_Impl.f(WorkInfo$State.k, str3);
                    ((Number) DBUtil.b(workSpecDao_Impl.a, false, true, new q7(str3, 17))).intValue();
                    workSpecDao_Impl.g(-256, str3);
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                return (AssetFileDescriptor) obj;
        }
    }
}
