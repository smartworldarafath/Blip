package androidx.work.impl.utils;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.ApplicationExitInfo;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.os.UserManagerCompat;
import androidx.room.util.DBUtil;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkDatabasePathHelper;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.JobSchedulerExtKt;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.Preference;
import androidx.work.impl.model.PreferenceDao_Impl;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkProgressDao;
import androidx.work.impl.model.WorkProgressDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import defpackage.ec;
import defpackage.ii;
import defpackage.j;
import defpackage.le;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ForceStopRunnable implements Runnable {
    public static final String n = Logger.f("ForceStopRunnable");
    public static final long o = 315360000000L;
    public final Context j;
    public final WorkManagerImpl k;
    public final PreferenceUtils l;
    public int m = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {
        public static final String a = Logger.f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null && "ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                if (((Logger.LogcatLogger) Logger.d()).c <= 2) {
                    Log.v(a, "Rescheduling alarm that keeps track of force-stops.");
                }
                ForceStopRunnable.c(context);
            }
        }
    }

    public ForceStopRunnable(Context context, WorkManagerImpl workManagerImpl) {
        this.j = context.getApplicationContext();
        this.k = workManagerImpl;
        this.l = workManagerImpl.g;
    }

    public static void c(Context context) {
        int i;
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (Build.VERSION.SDK_INT >= 31) {
            i = 167772160;
        } else {
            i = 134217728;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i);
        long currentTimeMillis = System.currentTimeMillis() + o;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0215  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        int i2;
        int i3;
        PendingIntent broadcast;
        List historicalProcessExitReasons;
        int reason;
        long timestamp;
        PreferenceUtils preferenceUtils = this.l;
        WorkManagerImpl workManagerImpl = this.k;
        WorkDatabase workDatabase = workManagerImpl.c;
        Configuration configuration = workManagerImpl.b;
        PreferenceUtils preferenceUtils2 = workManagerImpl.g;
        workDatabase = workManagerImpl.c;
        String str = SystemJobScheduler.o;
        Context context = this.j;
        JobScheduler a = JobSchedulerExtKt.a(context);
        ArrayList d = SystemJobScheduler.d(context, a);
        List list = (List) DBUtil.b(((SystemIdInfoDao_Impl) workDatabase.s()).a, true, false, new le(29));
        if (d != null) {
            i = d.size();
        } else {
            i = 0;
        }
        HashSet hashSet = new HashSet(i);
        if (d != null && !d.isEmpty()) {
            Iterator it = d.iterator();
            while (it.hasNext()) {
                JobInfo jobInfo = (JobInfo) it.next();
                WorkGenerationalId f = SystemJobScheduler.f(jobInfo);
                if (f != null) {
                    hashSet.add(f.a);
                } else {
                    SystemJobScheduler.b(a, jobInfo.getId());
                }
            }
        }
        Iterator it2 = list.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (!hashSet.contains((String) it2.next())) {
                    Logger.d().a(SystemJobScheduler.o, "Reconciling jobs");
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            workDatabase.b();
            try {
                WorkSpecDao v = workDatabase.v();
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    ((WorkSpecDao_Impl) v).c(-1L, (String) it3.next());
                }
                workDatabase.o();
                workDatabase.l();
            } catch (Throwable th) {
                throw th;
            }
        }
        WorkSpecDao v2 = workDatabase.v();
        WorkProgressDao u = workDatabase.u();
        workDatabase.b();
        try {
            WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) v2;
            List<WorkSpec> list2 = (List) DBUtil.b(workSpecDao_Impl.a, true, false, new ii(15));
            if (list2 != null && !list2.isEmpty()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                for (WorkSpec workSpec : list2) {
                    WorkInfo$State workInfo$State = WorkInfo$State.j;
                    String str2 = workSpec.a;
                    workSpecDao_Impl.f(workInfo$State, str2);
                    workSpecDao_Impl.g(-512, str2);
                    workSpecDao_Impl.c(-1L, str2);
                }
            }
            DBUtil.b(((WorkProgressDao_Impl) u).a, false, true, new ii(13));
            workDatabase.o();
            workDatabase.l();
            if (!z2 && !z) {
                z3 = false;
            } else {
                z3 = true;
            }
            Long a2 = ((PreferenceDao_Impl) preferenceUtils2.a.r()).a("reschedule_needed");
            int i4 = 7;
            long j = 0;
            String str3 = n;
            if (a2 != null && a2.longValue() == 1) {
                Logger.d().a(str3, "Rescheduling Workers.");
                workManagerImpl.c();
                preferenceUtils2.getClass();
                Preference preference = new Preference("reschedule_needed", 0L);
                PreferenceDao_Impl preferenceDao_Impl = (PreferenceDao_Impl) preferenceUtils2.a.r();
                DBUtil.b(preferenceDao_Impl.a, false, true, new ec(i4, preferenceDao_Impl, preference));
                return;
            }
            try {
                i2 = Build.VERSION.SDK_INT;
                if (i2 >= 31) {
                    i3 = 570425344;
                } else {
                    i3 = 536870912;
                }
                Intent intent = new Intent();
                intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
                intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
                broadcast = PendingIntent.getBroadcast(context, -1, intent, i3);
            } catch (IllegalArgumentException e) {
                e = e;
                if (((Logger.LogcatLogger) Logger.d()).c <= 5) {
                    Log.w(str3, "Ignoring exception", e);
                }
                Logger.d().a(str3, "Application was force-stopped, rescheduling.");
                workManagerImpl.c();
                configuration.d.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                preferenceUtils.getClass();
                Preference preference2 = new Preference("last_force_stop_ms", Long.valueOf(currentTimeMillis));
                PreferenceDao_Impl preferenceDao_Impl2 = (PreferenceDao_Impl) preferenceUtils.a.r();
                DBUtil.b(preferenceDao_Impl2.a, false, true, new ec(i4, preferenceDao_Impl2, preference2));
                return;
            } catch (SecurityException e2) {
                e = e2;
                if (((Logger.LogcatLogger) Logger.d()).c <= 5) {
                }
                Logger.d().a(str3, "Application was force-stopped, rescheduling.");
                workManagerImpl.c();
                configuration.d.getClass();
                long currentTimeMillis2 = System.currentTimeMillis();
                preferenceUtils.getClass();
                Preference preference22 = new Preference("last_force_stop_ms", Long.valueOf(currentTimeMillis2));
                PreferenceDao_Impl preferenceDao_Impl22 = (PreferenceDao_Impl) preferenceUtils.a.r();
                DBUtil.b(preferenceDao_Impl22.a, false, true, new ec(i4, preferenceDao_Impl22, preference22));
                return;
            }
            if (i2 >= 30) {
                if (broadcast != null) {
                    broadcast.cancel();
                }
                historicalProcessExitReasons = ((ActivityManager) context.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    Long a3 = ((PreferenceDao_Impl) preferenceUtils.a.r()).a("last_force_stop_ms");
                    if (a3 != null) {
                        j = a3.longValue();
                    }
                    for (int i5 = 0; i5 < historicalProcessExitReasons.size(); i5++) {
                        ApplicationExitInfo e3 = j.e(historicalProcessExitReasons.get(i5));
                        reason = e3.getReason();
                        if (reason == 10) {
                            timestamp = e3.getTimestamp();
                            if (timestamp >= j) {
                                Logger.d().a(str3, "Application was force-stopped, rescheduling.");
                                workManagerImpl.c();
                                configuration.d.getClass();
                                long currentTimeMillis22 = System.currentTimeMillis();
                                preferenceUtils.getClass();
                                Preference preference222 = new Preference("last_force_stop_ms", Long.valueOf(currentTimeMillis22));
                                PreferenceDao_Impl preferenceDao_Impl222 = (PreferenceDao_Impl) preferenceUtils.a.r();
                                DBUtil.b(preferenceDao_Impl222.a, false, true, new ec(i4, preferenceDao_Impl222, preference222));
                                return;
                            }
                        }
                    }
                }
                if (!z3) {
                    Logger.d().a(str3, "Found unfinished work, scheduling it.");
                    Schedulers.b(configuration, workDatabase, workManagerImpl.e);
                    return;
                }
                return;
            }
            if (broadcast == null) {
                c(context);
                Logger.d().a(str3, "Application was force-stopped, rescheduling.");
                workManagerImpl.c();
                configuration.d.getClass();
                long currentTimeMillis222 = System.currentTimeMillis();
                preferenceUtils.getClass();
                Preference preference2222 = new Preference("last_force_stop_ms", Long.valueOf(currentTimeMillis222));
                PreferenceDao_Impl preferenceDao_Impl2222 = (PreferenceDao_Impl) preferenceUtils.a.r();
                DBUtil.b(preferenceDao_Impl2222.a, false, true, new ec(i4, preferenceDao_Impl2222, preference2222));
                return;
            }
            if (!z3) {
            }
        } finally {
            workDatabase.l();
        }
    }

    public final boolean b() {
        Configuration configuration = this.k.b;
        configuration.getClass();
        boolean isEmpty = TextUtils.isEmpty(null);
        String str = n;
        if (isEmpty) {
            Logger.d().a(str, "The default process name was not specified.");
            return true;
        }
        boolean a = ProcessUtils.a(this.j, configuration);
        Logger.d().a(str, "Is default app process = " + a);
        return a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        Context context = this.j;
        String str2 = n;
        WorkManagerImpl workManagerImpl = this.k;
        try {
            if (!b()) {
                return;
            }
            while (true) {
                try {
                    WorkDatabasePathHelper.a(context);
                    Logger.d().a(str2, "Performing cleanup operations.");
                    try {
                        a();
                        return;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteFullException | SQLiteTableLockedException e) {
                        int i = this.m + 1;
                        this.m = i;
                        if (i >= 3) {
                            if (UserManagerCompat.a(context)) {
                                str = "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.";
                            } else {
                                str = "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                            }
                            Logger.d().c(str2, str, e);
                            IllegalStateException illegalStateException = new IllegalStateException(str, e);
                            workManagerImpl.b.getClass();
                            throw illegalStateException;
                        }
                        long j = i * 300;
                        String str3 = "Retrying after " + j;
                        if (((Logger.LogcatLogger) Logger.d()).c <= 3) {
                            Log.d(str2, str3, e);
                        }
                        try {
                            Thread.sleep(this.m * 300);
                        } catch (InterruptedException unused) {
                        }
                    }
                } catch (SQLiteException e2) {
                    Logger.d().b(str2, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e2);
                    workManagerImpl.b.getClass();
                    throw illegalStateException2;
                }
            }
        } finally {
            workManagerImpl.b();
        }
    }
}
