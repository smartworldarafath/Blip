package kotlinx.coroutines.internal;

import android.os.Looper;
import defpackage.u2;
import java.util.Iterator;
import java.util.ServiceLoader;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.android.HandlerDispatcherKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MainDispatcherLoader {
    public static final HandlerContext a;

    static {
        Object obj;
        String c = SystemPropsKt.c("kotlinx.coroutines.fast.service.loader");
        if (c != null) {
            Boolean.parseBoolean(c);
        }
        Iterator it = SequencesKt.h(SequencesKt.a(ServiceLoader.load(MainDispatcherFactory.class, MainDispatcherFactory.class.getClassLoader()).iterator())).iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            Object next = it.next();
            if (it.hasNext()) {
                ((MainDispatcherFactory) next).getClass();
                do {
                    ((MainDispatcherFactory) it.next()).getClass();
                } while (it.hasNext());
            }
            obj = next;
        }
        if (((MainDispatcherFactory) obj) != null) {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                a = new HandlerContext(HandlerDispatcherKt.a(mainLooper));
                return;
            } else {
                u2.l("The main looper is not available");
                return;
            }
        }
        u2.l("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }
}
