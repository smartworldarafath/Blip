package androidx.room.coroutines;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ConnectionWithLock implements SQLiteConnection, Mutex {
    public final SQLiteConnection j;
    public final Mutex k;
    public CoroutineContext l;
    public Throwable m;

    public ConnectionWithLock(SQLiteConnection sQLiteConnection) {
        MutexImpl mutexImpl = new MutexImpl();
        sQLiteConnection.getClass();
        this.j = sQLiteConnection;
        this.k = mutexImpl;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final Object a(Continuation continuation) {
        return this.k.a(continuation);
    }

    @Override // androidx.sqlite.SQLiteConnection
    public final SQLiteStatement a1(String str) {
        str.getClass();
        return this.j.a1(str);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void h(Object obj) {
        this.k.h(null);
    }

    public final void n(StringBuilder sb) {
        if (this.l == null && this.m == null) {
            sb.append("\t\tStatus: Free connection");
            sb.append('\n');
            return;
        }
        sb.append("\t\tStatus: Acquired connection");
        sb.append('\n');
        CoroutineContext coroutineContext = this.l;
        if (coroutineContext != null) {
            sb.append("\t\tCoroutine: " + coroutineContext);
            sb.append('\n');
        }
        Throwable th = this.m;
        if (th != null) {
            sb.append("\t\tAcquired:");
            sb.append('\n');
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            printWriter.flush();
            String stringWriter2 = stringWriter.toString();
            stringWriter2.getClass();
            Iterator it = CollectionsKt.p(StringsKt.x(stringWriter2)).iterator();
            while (it.hasNext()) {
                sb.append("\t\t" + ((String) it.next()));
                sb.append('\n');
            }
        }
    }

    public final String toString() {
        return this.j.toString();
    }
}
