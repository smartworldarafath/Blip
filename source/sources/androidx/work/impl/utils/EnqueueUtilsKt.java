package androidx.work.impl.utils;

import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import defpackage.ii;
import defpackage.jb;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EnqueueUtilsKt {
    public static final void a(WorkDatabase workDatabase, Configuration configuration, WorkContinuationImpl workContinuationImpl) {
        int i;
        workDatabase.getClass();
        configuration.getClass();
        ArrayList E = CollectionsKt.E(workContinuationImpl);
        int i2 = 0;
        while (!E.isEmpty()) {
            List list = ((WorkContinuationImpl) CollectionsKt.L(E)).c;
            if (list.isEmpty()) {
                i = 0;
            } else {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (!((WorkRequest) it.next()).b.j.i.isEmpty() && (i = i + 1) < 0) {
                        throw new ArithmeticException("Count overflow has happened.");
                    }
                }
            }
            i2 += i;
        }
        if (i2 != 0) {
            int intValue = ((Number) DBUtil.b(((WorkSpecDao_Impl) workDatabase.v()).a, true, false, new ii(17))).intValue();
            int i3 = configuration.j;
            if (intValue + i2 <= i3) {
                return;
            }
            u2.g(jb.i(jb.k("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: ", i3, ";\nalready enqueued count: ", intValue, ";\ncurrent enqueue operation count: "), i2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."));
        }
    }
}
