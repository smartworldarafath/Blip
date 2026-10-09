package androidx.work.impl;

import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.SystemClock;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import defpackage.ii;
import defpackage.r0;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Schedulers {
    public static final String a = Logger.f("Schedulers");

    public static void a(WorkSpecDao workSpecDao, SystemClock systemClock, List list) {
        if (list.size() > 0) {
            systemClock.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((WorkSpecDao_Impl) workSpecDao).c(currentTimeMillis, ((WorkSpec) it.next()).a);
            }
        }
    }

    public static void b(Configuration configuration, WorkDatabase workDatabase, List list) {
        if (list != null && list.size() != 0) {
            WorkSpecDao v = workDatabase.v();
            workDatabase.b();
            try {
                List list2 = (List) DBUtil.b(((WorkSpecDao_Impl) v).a, true, false, new ii(16));
                a(v, configuration.d, list2);
                List list3 = (List) DBUtil.b(((WorkSpecDao_Impl) v).a, true, false, new r0(configuration.k, 9));
                a(v, configuration.d, list3);
                list3.addAll(list2);
                List list4 = (List) DBUtil.b(((WorkSpecDao_Impl) v).a, true, false, new ii(19));
                workDatabase.o();
                workDatabase.l();
                if (list3.size() > 0) {
                    WorkSpec[] workSpecArr = (WorkSpec[]) list3.toArray(new WorkSpec[list3.size()]);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Scheduler scheduler = (Scheduler) it.next();
                        if (scheduler.c()) {
                            scheduler.a(workSpecArr);
                        }
                    }
                }
                if (list4.size() > 0) {
                    WorkSpec[] workSpecArr2 = (WorkSpec[]) list4.toArray(new WorkSpec[list4.size()]);
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        Scheduler scheduler2 = (Scheduler) it2.next();
                        if (!scheduler2.c()) {
                            scheduler2.a(workSpecArr2);
                        }
                    }
                }
            } catch (Throwable th) {
                workDatabase.l();
                throw th;
            }
        }
    }
}
