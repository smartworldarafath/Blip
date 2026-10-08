package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.ConfigurationKt$createDefaultTracer$tracer$1;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.WorkContinuation;
import androidx.work.WorkRequest;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.kb;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class WorkContinuationImpl extends WorkContinuation {
    public static final String h = Logger.f("WorkContinuationImpl");
    public final WorkManagerImpl a;
    public final String b;
    public final List c;
    public final ArrayList d;
    public final ArrayList e;
    public boolean f;
    public Operation g;

    public WorkContinuationImpl(WorkManagerImpl workManagerImpl, String str, List list) {
        ExistingWorkPolicy[] existingWorkPolicyArr = ExistingWorkPolicy.j;
        this.a = workManagerImpl;
        this.b = str;
        this.c = list;
        this.d = new ArrayList(list.size());
        this.e = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            ExistingWorkPolicy[] existingWorkPolicyArr2 = ExistingWorkPolicy.j;
            String uuid = ((WorkRequest) list.get(i)).a.toString();
            uuid.getClass();
            this.d.add(uuid);
            this.e.add(uuid);
        }
    }

    public static HashSet b(WorkContinuationImpl workContinuationImpl) {
        HashSet hashSet = new HashSet();
        workContinuationImpl.getClass();
        return hashSet;
    }

    public final Operation a() {
        if (!this.f) {
            WorkManagerImpl workManagerImpl = this.a;
            ConfigurationKt$createDefaultTracer$tracer$1 configurationKt$createDefaultTracer$tracer$1 = workManagerImpl.b.m;
            ExistingWorkPolicy[] existingWorkPolicyArr = ExistingWorkPolicy.j;
            this.g = OperationKt.a(configurationKt$createDefaultTracer$tracer$1, "EnqueueRunnable_KEEP", ((WorkManagerTaskExecutor) workManagerImpl.d).a, new kb(25, this));
        } else {
            Logger.d().g(h, "Already enqueued work ids (" + TextUtils.join(", ", this.d) + ")");
        }
        return this.g;
    }
}
