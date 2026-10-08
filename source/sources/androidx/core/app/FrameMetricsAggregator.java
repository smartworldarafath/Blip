package androidx.core.app;

import android.app.Activity;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FrameMetricsAggregator {
    public final FrameMetricsApi24Impl a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FrameMetricsApi24Impl extends FrameMetricsBaseImpl {
        public static HandlerThread e;
        public static Handler f;
        public final int a;
        public SparseIntArray[] b = new SparseIntArray[9];
        public final ArrayList c = new ArrayList();
        public final Window.OnFrameMetricsAvailableListener d = new Window.OnFrameMetricsAvailableListener() { // from class: androidx.core.app.FrameMetricsAggregator.FrameMetricsApi24Impl.1
            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                FrameMetricsApi24Impl frameMetricsApi24Impl = FrameMetricsApi24Impl.this;
                int i2 = frameMetricsApi24Impl.a;
                if ((i2 & 1) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[0], frameMetrics.getMetric(8));
                }
                if ((i2 & 2) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[1], frameMetrics.getMetric(1));
                }
                if ((i2 & 4) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[2], frameMetrics.getMetric(3));
                }
                if ((i2 & 8) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[3], frameMetrics.getMetric(4));
                }
                if ((i2 & 16) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[4], frameMetrics.getMetric(5));
                }
                if ((i2 & 64) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[6], frameMetrics.getMetric(7));
                }
                if ((i2 & 32) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[5], frameMetrics.getMetric(6));
                }
                if ((i2 & 128) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[7], frameMetrics.getMetric(0));
                }
                if ((i2 & 256) != 0) {
                    FrameMetricsApi24Impl.a(frameMetricsApi24Impl.b[8], frameMetrics.getMetric(2));
                }
            }
        };

        public FrameMetricsApi24Impl(int i) {
            this.a = i;
        }

        public static void a(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FrameMetricsBaseImpl {
    }

    public FrameMetricsAggregator(int i) {
        this.a = new FrameMetricsApi24Impl(i);
    }

    public final void a(Activity activity) {
        FrameMetricsApi24Impl frameMetricsApi24Impl = this.a;
        frameMetricsApi24Impl.getClass();
        if (FrameMetricsApi24Impl.e == null) {
            HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
            FrameMetricsApi24Impl.e = handlerThread;
            handlerThread.start();
            FrameMetricsApi24Impl.f = new Handler(FrameMetricsApi24Impl.e.getLooper());
        }
        for (int i = 0; i <= 8; i++) {
            SparseIntArray[] sparseIntArrayArr = frameMetricsApi24Impl.b;
            if (sparseIntArrayArr[i] == null && (frameMetricsApi24Impl.a & (1 << i)) != 0) {
                sparseIntArrayArr[i] = new SparseIntArray();
            }
        }
        activity.getWindow().addOnFrameMetricsAvailableListener(frameMetricsApi24Impl.d, FrameMetricsApi24Impl.f);
        frameMetricsApi24Impl.c.add(new WeakReference(activity));
    }

    public final SparseIntArray[] b() {
        return this.a.b;
    }

    public final void c(Activity activity) {
        FrameMetricsApi24Impl frameMetricsApi24Impl = this.a;
        ArrayList arrayList = frameMetricsApi24Impl.c;
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            WeakReference weakReference = (WeakReference) it.next();
            if (weakReference.get() == activity) {
                arrayList.remove(weakReference);
                break;
            }
        }
        activity.getWindow().removeOnFrameMetricsAvailableListener(frameMetricsApi24Impl.d);
    }

    public final void d() {
        FrameMetricsApi24Impl frameMetricsApi24Impl = this.a;
        SparseIntArray[] sparseIntArrayArr = frameMetricsApi24Impl.b;
        frameMetricsApi24Impl.b = new SparseIntArray[9];
    }

    public final void e() {
        FrameMetricsApi24Impl frameMetricsApi24Impl = this.a;
        ArrayList arrayList = frameMetricsApi24Impl.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            WeakReference weakReference = (WeakReference) arrayList.get(size);
            Activity activity = (Activity) weakReference.get();
            if (weakReference.get() != null) {
                activity.getWindow().removeOnFrameMetricsAvailableListener(frameMetricsApi24Impl.d);
                arrayList.remove(size);
            }
        }
    }

    public FrameMetricsAggregator() {
        this(1);
    }
}
