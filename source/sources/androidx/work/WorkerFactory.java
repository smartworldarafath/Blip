package androidx.work;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkerFactory {
    public final ListenableWorker a(Context context, String str, WorkerParameters workerParameters) {
        context.getClass();
        str.getClass();
        try {
            Class<? extends U> asSubclass = Class.forName(str).asSubclass(ListenableWorker.class);
            asSubclass.getClass();
            try {
                Object newInstance = asSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                newInstance.getClass();
                ListenableWorker listenableWorker = (ListenableWorker) newInstance;
                if (!listenableWorker.d) {
                    return listenableWorker;
                }
                throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
            } catch (Throwable th) {
                Logger.d().c(WorkerFactoryKt.a, "Could not instantiate ".concat(str), th);
                throw th;
            }
        } catch (Throwable th2) {
            Logger.d().c(WorkerFactoryKt.a, "Invalid class: ".concat(str), th2);
            throw th2;
        }
    }
}
