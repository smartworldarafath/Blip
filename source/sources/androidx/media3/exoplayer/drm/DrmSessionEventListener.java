package androidx.media3.exoplayer.drm;

import android.os.Handler;
import androidx.media3.exoplayer.source.MediaSource;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface DrmSessionEventListener {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class EventDispatcher {
        public final int a;
        public final MediaSource.MediaPeriodId b;
        public final CopyOnWriteArrayList c;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class ListenerAndHandler {
            public DrmSessionEventListener a;
        }

        public EventDispatcher(CopyOnWriteArrayList copyOnWriteArrayList, int i, MediaSource.MediaPeriodId mediaPeriodId) {
            this.c = copyOnWriteArrayList;
            this.a = i;
            this.b = mediaPeriodId;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.media3.exoplayer.drm.DrmSessionEventListener$EventDispatcher$ListenerAndHandler] */
        public final void a(Handler handler, DrmSessionEventListener drmSessionEventListener) {
            handler.getClass();
            ?? obj = new Object();
            obj.a = drmSessionEventListener;
            this.c.add(obj);
        }

        public final void b(DrmSessionEventListener drmSessionEventListener) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.c;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                if (listenerAndHandler.a == drmSessionEventListener) {
                    copyOnWriteArrayList.remove(listenerAndHandler);
                }
            }
        }
    }
}
