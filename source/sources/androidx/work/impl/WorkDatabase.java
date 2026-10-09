package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.PreferenceDao;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkDatabase extends RoomDatabase {
    public abstract DependencyDao q();

    public abstract PreferenceDao r();

    public abstract SystemIdInfoDao s();

    public abstract WorkNameDao t();

    public abstract WorkProgressDao u();

    public abstract WorkSpecDao v();

    public abstract WorkTagDao w();
}
