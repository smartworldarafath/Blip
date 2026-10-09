package androidx.core.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import defpackage.jb;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NotificationManagerCompat {
    public static String d;
    public static SideChannelManager g;
    public final Context a;
    public final NotificationManager b;
    public static final Object c = new Object();
    public static HashSet e = new HashSet();
    public static final Object f = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NotifyTask implements Task {
        public final String a;
        public final int b;
        public final Notification c;

        public NotifyTask(String str, int i, Notification notification) {
            this.a = str;
            this.b = i;
            this.c = notification;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[packageName:");
            sb.append(this.a);
            sb.append(", id:");
            return jb.i(sb, this.b, ", tag:null]");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ServiceConnectedEvent {
        public final ComponentName a;
        public final IBinder b;

        public ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
            this.a = componentName;
            this.b = iBinder;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class SideChannelManager implements Handler.Callback, ServiceConnection {
        public final Context j;
        public final Handler k;
        public final HashMap l = new HashMap();
        public HashSet m = new HashSet();

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class ListenerRecord {
            public final ComponentName a;
            public INotificationSideChannel c;
            public boolean b = false;
            public final ArrayDeque d = new ArrayDeque();
            public int e = 0;

            public ListenerRecord(ComponentName componentName) {
                this.a = componentName;
            }
        }

        public SideChannelManager(Context context) {
            this.j = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            handlerThread.start();
            this.k = new Handler(handlerThread.getLooper(), this);
        }

        public final void a(ListenerRecord listenerRecord) {
            boolean z;
            ArrayDeque arrayDeque = listenerRecord.d;
            ComponentName componentName = listenerRecord.a;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Processing component " + componentName + ", " + arrayDeque.size() + " queued tasks");
            }
            if (!arrayDeque.isEmpty()) {
                if (listenerRecord.b) {
                    z = true;
                } else {
                    Intent component = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
                    Context context = this.j;
                    boolean bindService = context.bindService(component, this, 33);
                    listenerRecord.b = bindService;
                    if (bindService) {
                        listenerRecord.e = 0;
                    } else {
                        Log.w("NotifManCompat", "Unable to bind to listener " + componentName);
                        context.unbindService(this);
                    }
                    z = listenerRecord.b;
                }
                if (z && listenerRecord.c != null) {
                    while (true) {
                        Task task = (Task) arrayDeque.peek();
                        if (task == null) {
                            break;
                        }
                        try {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Sending task " + task);
                            }
                            NotifyTask notifyTask = (NotifyTask) task;
                            listenerRecord.c.h(notifyTask.a, notifyTask.b, notifyTask.c);
                            arrayDeque.remove();
                        } catch (DeadObjectException unused) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Remote service has died: " + componentName);
                            }
                        } catch (RemoteException e) {
                            Log.w("NotifManCompat", "RemoteException communicating with " + componentName, e);
                        }
                    }
                    if (!arrayDeque.isEmpty()) {
                        b(listenerRecord);
                        return;
                    }
                    return;
                }
                b(listenerRecord);
            }
        }

        public final void b(ListenerRecord listenerRecord) {
            ComponentName componentName = listenerRecord.a;
            ArrayDeque arrayDeque = listenerRecord.d;
            Handler handler = this.k;
            if (handler.hasMessages(3, componentName)) {
                return;
            }
            int i = listenerRecord.e;
            int i2 = i + 1;
            listenerRecord.e = i2;
            if (i2 > 6) {
                Log.w("NotifManCompat", "Giving up on delivering " + arrayDeque.size() + " tasks to " + componentName + " after " + listenerRecord.e + " retries");
                arrayDeque.clear();
                return;
            }
            int i3 = (1 << i) * 1000;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Scheduling retry for " + i3 + " ms");
            }
            handler.sendMessageDelayed(handler.obtainMessage(3, componentName), i3);
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            HashSet hashSet;
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return false;
                        }
                        ListenerRecord listenerRecord = (ListenerRecord) this.l.get((ComponentName) message.obj);
                        if (listenerRecord != null) {
                            a(listenerRecord);
                            return true;
                        }
                    } else {
                        ListenerRecord listenerRecord2 = (ListenerRecord) this.l.get((ComponentName) message.obj);
                        if (listenerRecord2 != null) {
                            if (listenerRecord2.b) {
                                this.j.unbindService(this);
                                listenerRecord2.b = false;
                            }
                            listenerRecord2.c = null;
                            return true;
                        }
                    }
                } else {
                    ServiceConnectedEvent serviceConnectedEvent = (ServiceConnectedEvent) message.obj;
                    ComponentName componentName = serviceConnectedEvent.a;
                    IBinder iBinder = serviceConnectedEvent.b;
                    ListenerRecord listenerRecord3 = (ListenerRecord) this.l.get(componentName);
                    if (listenerRecord3 != null) {
                        listenerRecord3.c = INotificationSideChannel.Stub.c(iBinder);
                        listenerRecord3.e = 0;
                        a(listenerRecord3);
                        return true;
                    }
                }
            } else {
                Task task = (Task) message.obj;
                Context context = this.j;
                Object obj = NotificationManagerCompat.c;
                String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
                synchronized (NotificationManagerCompat.c) {
                    if (string != null) {
                        try {
                            if (!string.equals(NotificationManagerCompat.d)) {
                                String[] split = string.split(":", -1);
                                HashSet hashSet2 = new HashSet(split.length);
                                for (String str : split) {
                                    ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                                    if (unflattenFromString != null) {
                                        hashSet2.add(unflattenFromString.getPackageName());
                                    }
                                }
                                NotificationManagerCompat.e = hashSet2;
                                NotificationManagerCompat.d = string;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    hashSet = NotificationManagerCompat.e;
                }
                if (!hashSet.equals(this.m)) {
                    this.m = hashSet;
                    List<ResolveInfo> queryIntentServices = this.j.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                    HashSet hashSet3 = new HashSet();
                    for (ResolveInfo resolveInfo : queryIntentServices) {
                        if (hashSet.contains(resolveInfo.serviceInfo.packageName)) {
                            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                            ComponentName componentName2 = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                            if (resolveInfo.serviceInfo.permission != null) {
                                Log.w("NotifManCompat", "Permission present on component " + componentName2 + ", not adding listener record.");
                            } else {
                                hashSet3.add(componentName2);
                            }
                        }
                    }
                    Iterator it = hashSet3.iterator();
                    while (it.hasNext()) {
                        ComponentName componentName3 = (ComponentName) it.next();
                        if (!this.l.containsKey(componentName3)) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Adding listener record for " + componentName3);
                            }
                            this.l.put(componentName3, new ListenerRecord(componentName3));
                        }
                    }
                    Iterator it2 = this.l.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (!hashSet3.contains(entry.getKey())) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Log.d("NotifManCompat", "Removing listener record for " + entry.getKey());
                            }
                            ListenerRecord listenerRecord4 = (ListenerRecord) entry.getValue();
                            if (listenerRecord4.b) {
                                this.j.unbindService(this);
                                listenerRecord4.b = false;
                            }
                            listenerRecord4.c = null;
                            it2.remove();
                        }
                    }
                }
                for (ListenerRecord listenerRecord5 : this.l.values()) {
                    listenerRecord5.d.add(task);
                    a(listenerRecord5);
                }
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            this.k.obtainMessage(1, new ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            this.k.obtainMessage(2, componentName).sendToTarget();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Task {
    }

    public NotificationManagerCompat(Context context) {
        this.a = context;
        this.b = (NotificationManager) context.getSystemService("notification");
    }

    public final void a(int i, Notification notification) {
        Bundle bundle = notification.extras;
        if (bundle != null && bundle.getBoolean("android.support.useSideChannel")) {
            NotifyTask notifyTask = new NotifyTask(this.a.getPackageName(), i, notification);
            synchronized (f) {
                try {
                    if (g == null) {
                        g = new SideChannelManager(this.a.getApplicationContext());
                    }
                    g.k.obtainMessage(0, notifyTask).sendToTarget();
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.b.cancel(null, i);
            return;
        }
        this.b.notify(null, i, notification);
    }
}
