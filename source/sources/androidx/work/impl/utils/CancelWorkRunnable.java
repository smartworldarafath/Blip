package androidx.work.impl.utils;

import androidx.room.util.DBUtil;
import androidx.work.Logger;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import defpackage.q7;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CancelWorkRunnable {
    public static final void a(WorkManagerImpl workManagerImpl, String str) {
        WorkerWrapper b;
        WorkDatabase workDatabase = workManagerImpl.c;
        workDatabase.getClass();
        WorkSpecDao v = workDatabase.v();
        DependencyDao q = workDatabase.q();
        ArrayList E = CollectionsKt.E(str);
        while (!E.isEmpty()) {
            String str2 = (String) CollectionsKt.L(E);
            WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) v;
            WorkInfo$State a = workSpecDao_Impl.a(str2);
            if (a != WorkInfo$State.l && a != WorkInfo$State.m) {
                ((Number) DBUtil.b(workSpecDao_Impl.a, false, true, new q7(str2, 13))).intValue();
            }
            E.addAll(((DependencyDao_Impl) q).a(str2));
        }
        Processor processor = workManagerImpl.f;
        processor.getClass();
        synchronized (processor.k) {
            Logger.d().a(Processor.l, "Processor cancelling " + str);
            processor.i.add(str);
            b = processor.b(str);
        }
        Processor.d(str, b, 1);
        Iterator it = workManagerImpl.e.iterator();
        while (it.hasNext()) {
            ((Scheduler) it.next()).e(str);
        }
    }
}
