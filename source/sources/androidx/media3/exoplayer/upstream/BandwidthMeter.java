package androidx.media3.exoplayer.upstream;

import android.os.Handler;
import androidx.media3.datasource.TransferListener;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface BandwidthMeter {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface EventListener {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class EventDispatcher {
            public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* loaded from: classes.dex */
            public static final class HandlerAndListener {
                public final Handler a;
                public final EventListener b;
                public boolean c;

                public HandlerAndListener(Handler handler, EventListener eventListener) {
                    this.a = handler;
                    this.b = eventListener;
                }
            }
        }
    }

    void a(EventListener eventListener);

    void b(Handler handler, EventListener eventListener);

    TransferListener c();
}
