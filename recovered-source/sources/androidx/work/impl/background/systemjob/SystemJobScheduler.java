package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.room.util.DBUtil;
import androidx.work.BackoffPolicy;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.SystemClock;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfo;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.IdGenerator;
import defpackage.ec;
import defpackage.ii;
import defpackage.q;
import defpackage.q7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SystemJobScheduler implements Scheduler {
    public static final String o = Logger.f("SystemJobScheduler");
    public final Context j;
    public final JobScheduler k;
    public final SystemJobInfoConverter l;
    public final WorkDatabase m;
    public final Configuration n;

    public SystemJobScheduler(Context context, WorkDatabase workDatabase, Configuration configuration) {
        JobScheduler a = JobSchedulerExtKt.a(context);
        SystemJobInfoConverter systemJobInfoConverter = new SystemJobInfoConverter(context, configuration.d, configuration.l);
        this.j = context;
        this.k = a;
        this.l = systemJobInfoConverter;
        this.m = workDatabase;
        this.n = configuration;
    }

    public static void b(JobScheduler jobScheduler, int i) {
        try {
            jobScheduler.cancel(i);
        } catch (Throwable th) {
            Logger.d().c(o, String.format(Locale.getDefault(), "Exception while trying to cancel job (%d)", Integer.valueOf(i)), th);
        }
    }

    public static ArrayList d(Context context, JobScheduler jobScheduler) {
        List<JobInfo> list;
        String str = JobSchedulerExtKt.a;
        jobScheduler.getClass();
        try {
            list = jobScheduler.getAllPendingJobs();
            list.getClass();
        } catch (Throwable th) {
            Logger.d().c(JobSchedulerExtKt.a, "getAllPendingJobs() is not reliable on this device.", th);
            list = null;
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ComponentName componentName = new ComponentName(context, (Class<?>) SystemJobService.class);
        for (JobInfo jobInfo : list) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static WorkGenerationalId f(JobInfo jobInfo) {
        PersistableBundle extras = jobInfo.getExtras();
        if (extras != null) {
            try {
                if (extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                    return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
                }
                return null;
            } catch (NullPointerException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // androidx.work.impl.Scheduler
    public final void a(WorkSpec... workSpecArr) {
        int intValue;
        Configuration configuration = this.n;
        WorkDatabase workDatabase = this.m;
        final IdGenerator idGenerator = new IdGenerator(workDatabase);
        for (WorkSpec workSpec : workSpecArr) {
            workDatabase.b();
            try {
                WorkSpecDao v = workDatabase.v();
                String str = workSpec.a;
                WorkSpec b = ((WorkSpecDao_Impl) v).b(str);
                String str2 = o;
                if (b == null) {
                    Logger.d().g(str2, "Skipping scheduling " + str + " because it's no longer in the DB");
                    workDatabase.o();
                } else if (b.b != WorkInfo$State.j) {
                    Logger.d().g(str2, "Skipping scheduling " + str + " because it is no longer enqueued");
                    workDatabase.o();
                } else {
                    WorkGenerationalId a = WorkSpecKt.a(workSpec);
                    SystemIdInfo a2 = workDatabase.s().a(a);
                    if (a2 != null) {
                        intValue = a2.c;
                    } else {
                        configuration.getClass();
                        final int i = configuration.i;
                        Object n = idGenerator.a.n(new Callable() { // from class: t9
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                int i2;
                                int i3;
                                WorkDatabase workDatabase2 = IdGenerator.this.a;
                                Long a3 = ((PreferenceDao_Impl) workDatabase2.r()).a("next_job_scheduler_id");
                                int i4 = 0;
                                if (a3 != null) {
                                    i2 = (int) a3.longValue();
                                } else {
                                    i2 = 0;
                                }
                                if (i2 == Integer.MAX_VALUE) {
                                    i3 = 0;
                                } else {
                                    i3 = i2 + 1;
                                }
                                PreferenceDao_Impl preferenceDao_Impl = (PreferenceDao_Impl) workDatabase2.r();
                                DBUtil.b(preferenceDao_Impl.a, false, true, new ec(7, preferenceDao_Impl, new Preference("next_job_scheduler_id", Long.valueOf(i3))));
                                if (i2 >= 0 && i2 <= i) {
                                    i4 = i2;
                                } else {
                                    PreferenceDao_Impl preferenceDao_Impl2 = (PreferenceDao_Impl) workDatabase2.r();
                                    DBUtil.b(preferenceDao_Impl2.a, false, true, new ec(7, preferenceDao_Impl2, new Preference("next_job_scheduler_id", 1L)));
                                }
                                return Integer.valueOf(i4);
                            }
                        });
                        n.getClass();
                        intValue = ((Number) n).intValue();
                    }
                    if (a2 == null) {
                        SystemIdInfo systemIdInfo = new SystemIdInfo(a.a, a.b, intValue);
                        SystemIdInfoDao_Impl systemIdInfoDao_Impl = (SystemIdInfoDao_Impl) workDatabase.s();
                        systemIdInfoDao_Impl.getClass();
                        DBUtil.b(systemIdInfoDao_Impl.a, false, true, new ec(13, systemIdInfoDao_Impl, systemIdInfo));
                    }
                    g(workSpec, intValue);
                    workDatabase.o();
                }
            } finally {
                workDatabase.l();
            }
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean c() {
        return true;
    }

    @Override // androidx.work.impl.Scheduler
    public final void e(String str) {
        ArrayList arrayList;
        Context context = this.j;
        JobScheduler jobScheduler = this.k;
        ArrayList d = d(context, jobScheduler);
        if (d == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(2);
            Iterator it = d.iterator();
            while (it.hasNext()) {
                JobInfo jobInfo = (JobInfo) it.next();
                WorkGenerationalId f = f(jobInfo);
                if (f != null && str.equals(f.a)) {
                    arrayList2.add(Integer.valueOf(jobInfo.getId()));
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                b(jobScheduler, ((Integer) it2.next()).intValue());
            }
            SystemIdInfoDao_Impl systemIdInfoDao_Impl = (SystemIdInfoDao_Impl) this.m.s();
            systemIdInfoDao_Impl.getClass();
            str.getClass();
            DBUtil.b(systemIdInfoDao_Impl.a, false, true, new q7(str, 7));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g(WorkSpec workSpec, int i) {
        int i2;
        Object[] objArr;
        Object[] objArr2;
        int i3;
        List<JobInfo> list;
        int i4;
        String str;
        String str2;
        int i5;
        SystemJobInfoConverter systemJobInfoConverter = this.l;
        systemJobInfoConverter.getClass();
        Constraints constraints = workSpec.j;
        PersistableBundle persistableBundle = new PersistableBundle();
        String str3 = workSpec.a;
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", str3);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", workSpec.t);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", workSpec.b());
        JobInfo.Builder builder = new JobInfo.Builder(i, systemJobInfoConverter.a);
        boolean z = constraints.c;
        Set<Constraints.ContentUriTrigger> set = constraints.i;
        JobInfo.Builder requiresCharging = builder.setRequiresCharging(z);
        boolean z2 = constraints.d;
        JobInfo.Builder extras = requiresCharging.setRequiresDeviceIdle(z2).setExtras(persistableBundle);
        NetworkRequest a = constraints.a();
        int i6 = 0;
        if (a != null) {
            extras.getClass();
            extras.setRequiredNetwork(a);
        } else {
            NetworkType networkType = constraints.a;
            if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.o) {
                extras.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
            } else {
                int ordinal = networkType.ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        i2 = 2;
                        if (ordinal != 2) {
                            i2 = 3;
                            if (ordinal != 3) {
                                i2 = 4;
                                if (ordinal != 4) {
                                    Logger.d().a(SystemJobInfoConverter.d, "API version too low. Cannot convert network type value " + networkType);
                                }
                            }
                        }
                    }
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                extras.setRequiredNetworkType(i2);
            }
        }
        if (!z2) {
            if (workSpec.l == BackoffPolicy.k) {
                i5 = 0;
            } else {
                i5 = 1;
            }
            extras.setBackoffCriteria(workSpec.m, i5);
        }
        long a2 = workSpec.a();
        ((SystemClock) systemJobInfoConverter.b).getClass();
        long max = Math.max(a2 - System.currentTimeMillis(), 0L);
        if (Build.VERSION.SDK_INT <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else if (!workSpec.q && systemJobInfoConverter.c) {
            extras.setImportantWhileForeground(true);
        }
        if (!set.isEmpty()) {
            for (Constraints.ContentUriTrigger contentUriTrigger : set) {
                extras.addTriggerContentUri(new JobInfo.TriggerContentUri(contentUriTrigger.a, contentUriTrigger.b ? 1 : 0));
            }
            extras.setTriggerContentUpdateDelay(constraints.g);
            extras.setTriggerContentMaxDelay(constraints.h);
        }
        extras.setPersisted(false);
        extras.setRequiresBatteryNotLow(constraints.e);
        extras.setRequiresStorageNotLow(constraints.f);
        if (workSpec.k > 0) {
            objArr = true;
        } else {
            objArr = false;
        }
        if (max > 0) {
            objArr2 = true;
        } else {
            objArr2 = false;
        }
        int i7 = Build.VERSION.SDK_INT;
        if (i7 >= 31 && workSpec.q && objArr == false && objArr2 == false) {
            extras.setExpedited(true);
        }
        if (i7 >= 35 && (str2 = workSpec.x) != null) {
            extras.setTraceTag(str2);
        }
        JobInfo build = extras.build();
        String str4 = o;
        Logger.d().a(str4, "Scheduling work ID " + str3 + "Job ID " + i);
        try {
            if (this.k.schedule(build) == 0) {
                Logger.d().g(str4, "Unable to schedule work ID " + str3);
                if (workSpec.q && workSpec.r == OutOfQuotaPolicy.j) {
                    workSpec.q = false;
                    Logger.d().a(str4, "Scheduling a non-expedited job (work ID " + str3 + ")");
                    g(workSpec, i);
                }
            }
        } catch (IllegalStateException e) {
            String str5 = JobSchedulerExtKt.a;
            Context context = this.j;
            context.getClass();
            WorkDatabase workDatabase = this.m;
            workDatabase.getClass();
            Configuration configuration = this.n;
            configuration.getClass();
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 31) {
                i3 = 150;
            } else {
                i3 = 100;
            }
            int size = ((List) DBUtil.b(((WorkSpecDao_Impl) workDatabase.v()).a, true, false, new ii(14))).size();
            String str6 = "<faulty JobScheduler failed to getPendingJobs>";
            if (i8 >= 34) {
                JobScheduler a3 = JobSchedulerExtKt.a(context);
                String str7 = null;
                try {
                    list = a3.getAllPendingJobs();
                    list.getClass();
                } catch (Throwable th) {
                    Logger.d().c(JobSchedulerExtKt.a, "getAllPendingJobs() is not reliable on this device.", th);
                    list = null;
                }
                if (list != null) {
                    ArrayList d = d(context, a3);
                    if (d != null) {
                        i4 = list.size() - d.size();
                    } else {
                        i4 = 0;
                    }
                    if (i4 == 0) {
                        str = null;
                    } else {
                        str = i4 + " of which are not owned by WorkManager";
                    }
                    Object systemService = context.getSystemService("jobscheduler");
                    systemService.getClass();
                    ArrayList d2 = d(context, (JobScheduler) systemService);
                    if (d2 != null) {
                        i6 = d2.size();
                    }
                    if (i6 != 0) {
                        str7 = i6 + " from WorkManager in the default namespace";
                    }
                    str6 = CollectionsKt.y(ArraysKt.p(new String[]{list.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str7}), ",\n", null, null, null, 62);
                }
            } else {
                ArrayList d3 = d(context, JobSchedulerExtKt.a(context));
                if (d3 != null) {
                    str6 = d3.size() + " jobs from WorkManager";
                }
            }
            StringBuilder sb = new StringBuilder("JobScheduler ");
            sb.append(i3);
            sb.append(" job limit exceeded.\nIn JobScheduler there are ");
            sb.append(str6);
            sb.append(".\nThere are ");
            sb.append(size);
            sb.append(" jobs tracked by WorkManager's database;\nthe Configuration limit is ");
            String j = q.j(sb, configuration.k, '.');
            Logger.d().b(str4, j);
            throw new IllegalStateException(j, e);
        } catch (Throwable th2) {
            Logger.d().c(str4, "Unable to schedule " + workSpec, th2);
        }
    }
}
