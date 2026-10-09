package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class JobInfoScheduler implements WorkScheduler {
    public final Context a;
    public final EventStore b;
    public final SchedulerConfig c;

    public JobInfoScheduler(Context context, EventStore eventStore, SchedulerConfig schedulerConfig) {
        this.a = context;
        this.b = eventStore;
        this.c = schedulerConfig;
    }

    public final void a(TransportContext transportContext, int i, boolean z) {
        Long l;
        Context context = this.a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(transportContext.b().getBytes(Charset.forName("UTF-8")));
        adler32.update(ByteBuffer.allocate(4).putInt(PriorityMapping.a(transportContext.d())).array());
        if (transportContext.c() != null) {
            adler32.update(transportContext.c());
        }
        int value = (int) adler32.getValue();
        if (!z) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i2 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i2 >= i) {
                        Logging.a("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", transportContext);
                        return;
                    }
                }
            }
        }
        Cursor rawQuery = ((SQLiteEventStore) this.b).h().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.b(), String.valueOf(PriorityMapping.a(transportContext.d()))});
        try {
            if (rawQuery.moveToNext()) {
                l = Long.valueOf(rawQuery.getLong(0));
            } else {
                l = 0L;
            }
            rawQuery.close();
            long longValue = l.longValue();
            JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
            Priority d = transportContext.d();
            SchedulerConfig schedulerConfig = this.c;
            builder.setMinimumLatency(schedulerConfig.b(d, longValue, i));
            Set set = ((AutoValue_SchedulerConfig_ConfigValue) ((SchedulerConfig.ConfigValue) ((AutoValue_SchedulerConfig) schedulerConfig).b.get(d))).c;
            if (set.contains(SchedulerConfig.Flag.j)) {
                builder.setRequiredNetworkType(2);
            } else {
                builder.setRequiredNetworkType(1);
            }
            if (set.contains(SchedulerConfig.Flag.l)) {
                builder.setRequiresCharging(true);
            }
            if (set.contains(SchedulerConfig.Flag.k)) {
                builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i);
            persistableBundle.putString("backendName", transportContext.b());
            persistableBundle.putInt("priority", PriorityMapping.a(transportContext.d()));
            if (transportContext.c() != null) {
                persistableBundle.putString("extras", Base64.encodeToString(transportContext.c(), 0));
            }
            builder.setExtras(persistableBundle);
            Object[] objArr = {transportContext, Integer.valueOf(value), Long.valueOf(schedulerConfig.b(transportContext.d(), longValue, i)), l, Integer.valueOf(i)};
            String concat = "TRuntime.".concat("JobInfoScheduler");
            if (Log.isLoggable(concat, 3)) {
                Log.d(concat, String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", objArr));
            }
            jobScheduler.schedule(builder.build());
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }
}
