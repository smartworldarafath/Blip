package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class WorkForegroundUpdater {
    public static final /* synthetic */ int d = 0;
    public final WorkManagerTaskExecutor a;
    public final ForegroundProcessor b;
    public final WorkSpecDao c;

    static {
        Logger.f("WMFgUpdater");
    }

    public WorkForegroundUpdater(WorkDatabase workDatabase, ForegroundProcessor foregroundProcessor, WorkManagerTaskExecutor workManagerTaskExecutor) {
        this.b = foregroundProcessor;
        this.a = workManagerTaskExecutor;
        this.c = workDatabase.v();
    }
}
