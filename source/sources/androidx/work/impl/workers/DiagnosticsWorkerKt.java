package androidx.work.impl.workers;

import androidx.room.util.DBUtil;
import androidx.work.Logger;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkNameDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.model.WorkTagDao_Impl;
import defpackage.q7;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DiagnosticsWorkerKt {
    public static final String a = Logger.f("DiagnosticsWrkr");

    public static final String a(WorkNameDao workNameDao, WorkTagDao workTagDao, SystemIdInfoDao systemIdInfoDao, List list) {
        Integer num;
        StringBuilder sb = new StringBuilder("\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            WorkSpec workSpec = (WorkSpec) it.next();
            WorkGenerationalId a2 = WorkSpecKt.a(workSpec);
            String str = workSpec.a;
            SystemIdInfo a3 = systemIdInfoDao.a(a2);
            if (a3 != null) {
                num = Integer.valueOf(a3.c);
            } else {
                num = null;
            }
            WorkNameDao_Impl workNameDao_Impl = (WorkNameDao_Impl) workNameDao;
            workNameDao_Impl.getClass();
            str.getClass();
            String y = CollectionsKt.y((List) DBUtil.b(workNameDao_Impl.a, true, false, new q7(str, 8)), ",", null, null, null, 62);
            WorkTagDao_Impl workTagDao_Impl = (WorkTagDao_Impl) workTagDao;
            workTagDao_Impl.getClass();
            sb.append("\n" + str + "\t " + workSpec.c + "\t " + num + "\t " + workSpec.b.name() + "\t " + y + "\t " + CollectionsKt.y((List) DBUtil.b(workTagDao_Impl.a, true, false, new q7(str, 20)), ",", null, null, null, 62) + '\t');
        }
        return sb.toString();
    }
}
