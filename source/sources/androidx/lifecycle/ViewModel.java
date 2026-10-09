package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewModel {
    public final ViewModelImpl a = new ViewModelImpl();

    public final void a() {
        ViewModelImpl viewModelImpl = this.a;
        if (viewModelImpl != null && !viewModelImpl.d) {
            viewModelImpl.d = true;
            synchronized (viewModelImpl.a) {
                try {
                    Iterator it = viewModelImpl.b.values().iterator();
                    while (it.hasNext()) {
                        ViewModelImpl.a((AutoCloseable) it.next());
                    }
                    Iterator it2 = viewModelImpl.c.iterator();
                    while (it2.hasNext()) {
                        ViewModelImpl.a((AutoCloseable) it2.next());
                    }
                    viewModelImpl.c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }

    public void b() {
    }
}
