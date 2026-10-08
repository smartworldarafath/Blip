package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.FcmBroadcastProcessor;
import com.google.firebase.messaging.MessagingAnalytics;
import java.lang.ref.SoftReference;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CloudMessagingReceiver extends BroadcastReceiver {
    public static SoftReference a;
    public static SoftReference b;

    public static int a(Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException unused) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if (Objects.equals(intent.getAction(), "com.google.firebase.messaging.NOTIFICATION_DISMISS")) {
            Intent putExtras = new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(extras);
            if (MessagingAnalytics.d(putExtras)) {
                MessagingAnalytics.c("_nd", putExtras.getExtras());
                return -1;
            }
            return -1;
        }
        Log.e("CloudMessagingReceiver", "Unknown notification action");
        return 500;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        ExecutorService executorService;
        ExecutorService executorService2;
        if (intent == null) {
            return;
        }
        final boolean isOrderedBroadcast = isOrderedBroadcast();
        final BroadcastReceiver.PendingResult goAsync = goAsync();
        synchronized (CloudMessagingReceiver.class) {
            try {
                SoftReference softReference = a;
                if (softReference != null) {
                    executorService = (ExecutorService) softReference.get();
                } else {
                    executorService = null;
                }
                if (executorService == null) {
                    executorService = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new NamedThreadFactory("firebase-iid-executor")));
                    a = new SoftReference(executorService);
                }
                executorService2 = executorService;
            } catch (Throwable th) {
                throw th;
            }
        }
        executorService2.execute(new Runnable(this) { // from class: com.google.android.gms.cloudmessaging.zzg
            @Override // java.lang.Runnable
            public final void run() {
                Intent intent2;
                int i;
                Intent intent3 = intent;
                final Context context2 = context;
                boolean z = isOrderedBroadcast;
                BroadcastReceiver.PendingResult pendingResult = goAsync;
                try {
                    Parcelable parcelableExtra = intent3.getParcelableExtra("wrapped_intent");
                    Executor executor = null;
                    if (parcelableExtra instanceof Intent) {
                        intent2 = (Intent) parcelableExtra;
                    } else {
                        intent2 = null;
                    }
                    if (intent2 != null) {
                        i = CloudMessagingReceiver.a(intent2);
                    } else {
                        int i2 = 500;
                        if (intent3.getExtras() != null) {
                            final CloudMessage cloudMessage = new CloudMessage(intent3);
                            final CountDownLatch countDownLatch = new CountDownLatch(1);
                            synchronized (CloudMessagingReceiver.class) {
                                try {
                                    SoftReference softReference2 = CloudMessagingReceiver.b;
                                    if (softReference2 != null) {
                                        executor = (Executor) softReference2.get();
                                    }
                                    if (executor == null) {
                                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new NamedThreadFactory("pscm-ack-executor"));
                                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                                        executor = Executors.unconfigurableExecutorService(threadPoolExecutor);
                                        CloudMessagingReceiver.b = new SoftReference(executor);
                                    }
                                } finally {
                                }
                            }
                            executor.execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zze
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Task b2;
                                    Intent intent4 = cloudMessage.j;
                                    String stringExtra = intent4.getStringExtra("google.message_id");
                                    if (stringExtra == null) {
                                        stringExtra = intent4.getStringExtra("message_id");
                                    }
                                    Integer num = null;
                                    if (TextUtils.isEmpty(stringExtra)) {
                                        b2 = Tasks.e(null);
                                    } else {
                                        Bundle bundle = new Bundle();
                                        String stringExtra2 = intent4.getStringExtra("google.message_id");
                                        if (stringExtra2 == null) {
                                            stringExtra2 = intent4.getStringExtra("message_id");
                                        }
                                        bundle.putString("google.message_id", stringExtra2);
                                        if (intent4.hasExtra("google.product_id")) {
                                            num = Integer.valueOf(intent4.getIntExtra("google.product_id", 0));
                                        }
                                        if (num != null) {
                                            bundle.putInt("google.product_id", num.intValue());
                                        }
                                        bundle.putBoolean("supports_message_handled", true);
                                        b2 = zzv.a(context2).b(2, bundle);
                                    }
                                    final CountDownLatch countDownLatch2 = countDownLatch;
                                    b2.b(zzh.j, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzf
                                        @Override // com.google.android.gms.tasks.OnCompleteListener
                                        public final /* synthetic */ void h(Task task) {
                                            countDownLatch2.countDown();
                                        }
                                    });
                                }
                            });
                            try {
                                i2 = ((Integer) Tasks.a(new FcmBroadcastProcessor(context2).b(intent3))).intValue();
                            } catch (InterruptedException | ExecutionException e) {
                                Log.e("FirebaseMessaging", "Failed to send message to service.", e);
                            }
                            try {
                                if (!countDownLatch.await(1000L, TimeUnit.MILLISECONDS)) {
                                    Log.w("CloudMessagingReceiver", "Message ack timed out");
                                }
                            } catch (InterruptedException e2) {
                                Log.w("CloudMessagingReceiver", "Message ack failed: ".concat(e2.toString()));
                            }
                        }
                        i = i2;
                    }
                    if (z && pendingResult != null) {
                        pendingResult.setResultCode(i);
                    }
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                } catch (Throwable th2) {
                    if (pendingResult != null) {
                        pendingResult.finish();
                    }
                    throw th2;
                }
            }
        });
    }
}
