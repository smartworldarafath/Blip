package okhttp3.internal.connection;

import defpackage.q;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import okhttp3.Address;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealConnectionPool {
    public final long a;
    public final TaskQueue b;
    public final RealConnectionPool$cleanupTask$1 c;
    public final ConcurrentLinkedQueue d;

    /* JADX WARN: Type inference failed for: r0v3, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner) {
        taskRunner.getClass();
        TimeUnit.MINUTES.getClass();
        this.a = 300000000000L;
        this.b = taskRunner.e();
        final String l = q.l(new StringBuilder(), Util.f, " ConnectionPool");
        this.c = new Task(l) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                RealConnectionPool realConnectionPool = RealConnectionPool.this;
                long nanoTime = System.nanoTime();
                Iterator it = realConnectionPool.d.iterator();
                int i = 0;
                long j = Long.MIN_VALUE;
                RealConnection realConnection = null;
                int i2 = 0;
                while (it.hasNext()) {
                    RealConnection realConnection2 = (RealConnection) it.next();
                    realConnection2.getClass();
                    synchronized (realConnection2) {
                        if (realConnectionPool.b(realConnection2, nanoTime) > 0) {
                            i2++;
                        } else {
                            i++;
                            long j2 = nanoTime - realConnection2.q;
                            if (j2 > j) {
                                realConnection = realConnection2;
                                j = j2;
                            }
                        }
                    }
                }
                long j3 = realConnectionPool.a;
                if (j < j3 && i <= 5) {
                    if (i > 0) {
                        return j3 - j;
                    }
                    if (i2 > 0) {
                        return j3;
                    }
                    return -1L;
                }
                realConnection.getClass();
                synchronized (realConnection) {
                    if (!realConnection.p.isEmpty()) {
                        return 0L;
                    }
                    if (realConnection.q + j != nanoTime) {
                        return 0L;
                    }
                    realConnection.j = true;
                    realConnectionPool.d.remove(realConnection);
                    Socket socket = realConnection.d;
                    socket.getClass();
                    Util.c(socket);
                    if (realConnectionPool.d.isEmpty()) {
                        realConnectionPool.b.a();
                    }
                    return 0L;
                }
            }
        };
        this.d = new ConcurrentLinkedQueue();
    }

    public final boolean a(Address address, RealCall realCall, ArrayList arrayList, boolean z) {
        Iterator it = this.d.iterator();
        while (true) {
            boolean z2 = false;
            if (!it.hasNext()) {
                return false;
            }
            RealConnection realConnection = (RealConnection) it.next();
            realConnection.getClass();
            synchronized (realConnection) {
                if (z) {
                    try {
                        if (realConnection.g != null) {
                            z2 = true;
                        }
                        if (!z2) {
                            continue;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (realConnection.h(address, arrayList)) {
                    realCall.b(realConnection);
                    return true;
                }
            }
        }
    }

    public final int b(RealConnection realConnection, long j) {
        byte[] bArr = Util.a;
        ArrayList arrayList = realConnection.p;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                String str = "A connection to " + realConnection.b.a.h + " was leaked. Did you forget to close a response body?";
                Platform platform = Platform.a;
                Platform.a.j(((RealCall.CallReference) reference).a, str);
                arrayList.remove(i);
                realConnection.j = true;
                if (arrayList.isEmpty()) {
                    realConnection.q = j - this.a;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
