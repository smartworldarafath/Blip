package com.google.android.gms.cloudmessaging;

import android.app.BroadcastOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Rpc {
    public static int h;
    public static PendingIntent i;
    public static final Executor j = null;
    public static final Pattern k = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");
    public final Context b;
    public final zzw c;
    public final ScheduledThreadPoolExecutor d;
    public Messenger f;
    public zzd g;
    public final SimpleArrayMap a = new SimpleArrayMap(0);
    public final Messenger e = new Messenger(new zzy(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.b = context;
        this.c = new zzw(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("fcm-rpc-timeout-executor"));
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.d = scheduledThreadPoolExecutor;
    }

    public final Task a() {
        int i2;
        if (this.c.b() >= 241100000) {
            zzv a = zzv.a(this.b);
            Bundle bundle = Bundle.EMPTY;
            synchronized (a) {
                i2 = a.d;
                a.d = i2 + 1;
            }
            return a.c(new zzs(i2, 5, bundle)).d(zzaf.j, zzac.j);
        }
        return Tasks.d(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    public final Task b(final Bundle bundle) {
        int i2;
        zzaf zzafVar = zzaf.j;
        zzw zzwVar = this.c;
        if (zzwVar.b() < 12000000) {
            if (zzwVar.a() != 0) {
                return d(bundle).e(zzafVar, new Continuation() { // from class: com.google.android.gms.cloudmessaging.zzz
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object g(Task task) {
                        Rpc rpc = Rpc.this;
                        rpc.getClass();
                        if (!task.k()) {
                            return task;
                        }
                        Bundle bundle2 = (Bundle) task.g();
                        if (bundle2 != null && bundle2.containsKey("google.messenger")) {
                            return rpc.d(bundle).l(zzaf.j, zzad.a);
                        }
                        return task;
                    }
                });
            }
            return Tasks.d(new IOException("MISSING_INSTANCEID_SERVICE"));
        }
        zzv a = zzv.a(this.b);
        synchronized (a) {
            i2 = a.d;
            a.d = i2 + 1;
        }
        return a.c(new zzs(i2, 1, bundle)).d(zzafVar, zzae.j);
    }

    public final void c(String str, Bundle bundle) {
        SimpleArrayMap simpleArrayMap = this.a;
        synchronized (simpleArrayMap) {
            try {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) simpleArrayMap.remove(str);
                if (taskCompletionSource == null) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21);
                    sb.append("Missing callback for ");
                    sb.append(str);
                    Log.w("Rpc", sb.toString());
                    return;
                }
                taskCompletionSource.b(bundle);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Task d(Bundle bundle) {
        final String num;
        BroadcastOptions makeBasic;
        BroadcastOptions shareIdentityEnabled;
        Bundle bundle2;
        synchronized (Rpc.class) {
            int i2 = h;
            h = i2 + 1;
            num = Integer.toString(i2);
        }
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        SimpleArrayMap simpleArrayMap = this.a;
        synchronized (simpleArrayMap) {
            simpleArrayMap.put(num, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.c.a() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        Context context = this.b;
        synchronized (Rpc.class) {
            try {
                if (i == null) {
                    Intent intent2 = new Intent();
                    intent2.setPackage("com.google.example.invalidpackage");
                    i = PendingIntent.getBroadcast(context, 0, intent2, com.google.android.gms.internal.cloudmessaging.zzr.a);
                }
                intent.putExtra("app", i);
            } finally {
            }
        }
        StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 5);
        sb.append("|ID|");
        sb.append(num);
        sb.append("|");
        intent.putExtra("kid", sb.toString());
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Sending ".concat(String.valueOf(intent.getExtras())));
        }
        intent.putExtra("google.messenger", this.e);
        if (this.f != null || this.g != null) {
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                Messenger messenger = this.f;
                if (messenger != null) {
                    messenger.send(obtain);
                } else {
                    this.g.j.send(obtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
            }
            final ScheduledFuture<?> schedule = this.d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzaa
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    if (TaskCompletionSource.this.c(new IOException("TIMEOUT"))) {
                        Log.w("Rpc", "No response");
                    }
                }
            }, 30L, TimeUnit.SECONDS);
            taskCompletionSource.a.b(zzaf.j, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzab
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final /* synthetic */ void h(Task task) {
                    Rpc rpc = Rpc.this;
                    String str = num;
                    ScheduledFuture scheduledFuture = schedule;
                    SimpleArrayMap simpleArrayMap2 = rpc.a;
                    synchronized (simpleArrayMap2) {
                        simpleArrayMap2.remove(str);
                    }
                    scheduledFuture.cancel(false);
                }
            });
            return taskCompletionSource.a;
        }
        int a = this.c.a();
        Context context2 = this.b;
        if (a == 2) {
            if (Build.VERSION.SDK_INT >= 34) {
                makeBasic = BroadcastOptions.makeBasic();
                shareIdentityEnabled = makeBasic.setShareIdentityEnabled(true);
                bundle2 = shareIdentityEnabled.toBundle();
                context2.sendBroadcast(intent, null, bundle2);
            } else {
                context2.sendBroadcast(intent);
            }
        } else {
            context2.startService(intent);
        }
        final ScheduledFuture schedule2 = this.d.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzaa
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                if (TaskCompletionSource.this.c(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                }
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.a.b(zzaf.j, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzab
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final /* synthetic */ void h(Task task) {
                Rpc rpc = Rpc.this;
                String str = num;
                ScheduledFuture scheduledFuture = schedule2;
                SimpleArrayMap simpleArrayMap2 = rpc.a;
                synchronized (simpleArrayMap2) {
                    simpleArrayMap2.remove(str);
                }
                scheduledFuture.cancel(false);
            }
        });
        return taskCompletionSource.a;
    }
}
