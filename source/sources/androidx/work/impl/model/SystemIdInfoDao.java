package androidx.work.impl.model;

import androidx.room.util.DBUtil;
import defpackage.pg;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SystemIdInfoDao {
    default SystemIdInfo a(WorkGenerationalId workGenerationalId) {
        String str = workGenerationalId.a;
        int i = workGenerationalId.b;
        str.getClass();
        return (SystemIdInfo) DBUtil.b(((SystemIdInfoDao_Impl) this).a, true, false, new pg(str, i, 0));
    }
}
