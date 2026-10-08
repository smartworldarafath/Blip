package androidx.lifecycle;

import android.os.Handler;
import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.executor.DefaultTaskExecutor;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LiveData;
import androidx.work.Operation;
import defpackage.q;
import defpackage.u2;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MutableLiveData<T> extends LiveData<T> {
    @Override // androidx.lifecycle.LiveData
    public final void a(Object obj) {
        ArchTaskExecutor.a().a.getClass();
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            u2.l(q.i("Cannot invoke ", "setValue", " on a background thread"));
        }
        this.e++;
        this.c = obj;
        if (this.f) {
            this.g = true;
            return;
        }
        this.f = true;
        do {
            this.g = false;
            SafeIterableMap safeIterableMap = this.b;
            safeIterableMap.getClass();
            SafeIterableMap.IteratorWithAdditions iteratorWithAdditions = new SafeIterableMap.IteratorWithAdditions();
            safeIterableMap.j.put(iteratorWithAdditions, Boolean.FALSE);
            while (iteratorWithAdditions.hasNext()) {
                ((LiveData.ObserverWrapper) ((Map.Entry) iteratorWithAdditions.next()).getValue()).getClass();
                if (this.g) {
                    break;
                }
            }
        } while (this.g);
        this.f = false;
    }

    public final void b(Operation.State state) {
        boolean z;
        synchronized (this.a) {
            if (this.d == LiveData.i) {
                z = true;
            } else {
                z = false;
            }
            this.d = state;
        }
        if (!z) {
            return;
        }
        ArchTaskExecutor a = ArchTaskExecutor.a();
        Runnable runnable = this.h;
        DefaultTaskExecutor defaultTaskExecutor = a.a;
        if (defaultTaskExecutor.c == null) {
            synchronized (defaultTaskExecutor.a) {
                try {
                    if (defaultTaskExecutor.c == null) {
                        defaultTaskExecutor.c = Handler.createAsync(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        defaultTaskExecutor.c.post(runnable);
    }
}
