package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.PackageManagerHelper;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class WorkManagerImplExtKt$WorkManagerImpl$1 extends FunctionReferenceImpl implements Function6<Context, Configuration, TaskExecutor, WorkDatabase, Trackers, Processor, List<? extends Scheduler>> {
    public static final WorkManagerImplExtKt$WorkManagerImpl$1 r = new FunctionReferenceImpl(6, WorkManagerImplExtKt.class, "createSchedulers", "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;", 1);

    @Override // kotlin.jvm.functions.Function6
    public final Object k(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Context context = (Context) obj;
        Configuration configuration = (Configuration) obj2;
        TaskExecutor taskExecutor = (TaskExecutor) obj3;
        Trackers trackers = (Trackers) obj5;
        Processor processor = (Processor) obj6;
        context.getClass();
        trackers.getClass();
        String str = Schedulers.a;
        SystemJobScheduler systemJobScheduler = new SystemJobScheduler(context, (WorkDatabase) obj4, configuration);
        PackageManagerHelper.a(context, SystemJobService.class, true);
        Logger.d().a(Schedulers.a, "Created SystemJobScheduler and enabled SystemJobService");
        return CollectionsKt.C(systemJobScheduler, new GreedyScheduler(context, configuration, trackers, processor, new WorkLauncherImpl(processor, taskExecutor), taskExecutor));
    }
}
