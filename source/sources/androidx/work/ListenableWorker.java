package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListenableWorker {
    public final Context a;
    public final WorkerParameters b;
    public final AtomicInteger c = new AtomicInteger(-256);
    public boolean d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Result {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Failure extends Result {
            public final Data a = Data.b;

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Failure.class == obj.getClass()) {
                    return this.a.equals(((Failure) obj).a);
                }
                return false;
            }

            public final int hashCode() {
                return this.a.hashCode() + 846803280;
            }

            public final String toString() {
                return "Failure {mOutputData=" + this.a + '}';
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Success extends Result {
            public final Data a = Data.b;

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Success.class == obj.getClass()) {
                    return this.a.equals(((Success) obj).a);
                }
                return false;
            }

            public final int hashCode() {
                return this.a.hashCode() - 1876823561;
            }

            public final String toString() {
                return "Success {mOutputData=" + this.a + '}';
            }
        }
    }

    public ListenableWorker(Context context, WorkerParameters workerParameters) {
        this.a = context;
        this.b = workerParameters;
    }

    public abstract ListenableFuture a();

    public abstract ListenableFuture b();
}
