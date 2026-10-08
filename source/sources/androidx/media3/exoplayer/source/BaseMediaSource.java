package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.Timeline;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseMediaSource implements MediaSource {
    public final ArrayList a = new ArrayList(1);
    public final HashSet b = new HashSet(1);
    public final MediaSourceEventListener.EventDispatcher c = new MediaSourceEventListener.EventDispatcher(new CopyOnWriteArrayList(), 0, null);
    public final DrmSessionEventListener.EventDispatcher d = new DrmSessionEventListener.EventDispatcher(new CopyOnWriteArrayList(), 0, null);
    public Looper e;
    public Timeline f;
    public PlayerId g;
    public BandwidthMeter h;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.source.MediaSourceEventListener$EventDispatcher$ListenerAndHandler, java.lang.Object] */
    public final void h(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
        handler.getClass();
        MediaSourceEventListener.EventDispatcher eventDispatcher = this.c;
        eventDispatcher.getClass();
        CopyOnWriteArrayList copyOnWriteArrayList = eventDispatcher.c;
        ?? obj = new Object();
        obj.a = handler;
        obj.b = mediaSourceEventListener;
        copyOnWriteArrayList.add(obj);
    }

    public final void i(MediaSource.MediaSourceCaller mediaSourceCaller) {
        HashSet hashSet = this.b;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.remove(mediaSourceCaller);
        if (!isEmpty && hashSet.isEmpty()) {
            j();
        }
    }

    public final void k(MediaSource.MediaSourceCaller mediaSourceCaller) {
        this.e.getClass();
        HashSet hashSet = this.b;
        boolean isEmpty = hashSet.isEmpty();
        hashSet.add(mediaSourceCaller);
        if (isEmpty) {
            l();
        }
    }

    public final void m(MediaSource.MediaSourceCaller mediaSourceCaller, PlayerId playerId, BandwidthMeter bandwidthMeter) {
        boolean z;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.e;
        if (looper != null && looper != myLooper) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.e(z);
        this.g = playerId;
        this.h = bandwidthMeter;
        Timeline timeline = this.f;
        this.a.add(mediaSourceCaller);
        if (this.e == null) {
            this.e = myLooper;
            this.b.add(mediaSourceCaller);
            n(bandwidthMeter.c());
        } else if (timeline != null) {
            k(mediaSourceCaller);
            mediaSourceCaller.a(timeline);
        }
    }

    public abstract void n(TransferListener transferListener);

    public final void o(Timeline timeline) {
        this.f = timeline;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((MediaSource.MediaSourceCaller) it.next()).a(timeline);
        }
    }

    public final void p(MediaSource.MediaSourceCaller mediaSourceCaller) {
        ArrayList arrayList = this.a;
        arrayList.remove(mediaSourceCaller);
        if (arrayList.isEmpty()) {
            this.e = null;
            this.f = null;
            this.g = null;
            this.b.clear();
            q();
            return;
        }
        i(mediaSourceCaller);
    }

    public abstract void q();

    public final void r(MediaSourceEventListener mediaSourceEventListener) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.c.c;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            MediaSourceEventListener.EventDispatcher.ListenerAndHandler listenerAndHandler = (MediaSourceEventListener.EventDispatcher.ListenerAndHandler) it.next();
            if (listenerAndHandler.b == mediaSourceEventListener) {
                copyOnWriteArrayList.remove(listenerAndHandler);
            }
        }
    }

    public void j() {
    }

    public void l() {
    }
}
