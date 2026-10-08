package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MaskingMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import defpackage.eb;
import defpackage.fb;
import defpackage.gb;
import defpackage.n5;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CompositeMediaSource<T> extends BaseMediaSource {
    public final HashMap i = new HashMap();
    public Handler j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {
        public MediaSourceEventListener.EventDispatcher j;
        public DrmSessionEventListener.EventDispatcher k;
        public final /* synthetic */ WrappingMediaSource l;

        public ForwardingEventListener(WrappingMediaSource wrappingMediaSource) {
            this.l = wrappingMediaSource;
            this.j = new MediaSourceEventListener.EventDispatcher(wrappingMediaSource.c.c, 0, null);
            this.k = new DrmSessionEventListener.EventDispatcher(wrappingMediaSource.d.c, 0, null);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void B(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            a(i, mediaPeriodId);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
            MediaLoadData b = b(mediaLoadData);
            eventDispatcher.getClass();
            eventDispatcher.a(new gb(eventDispatcher, loadEventInfo, b, iOException, z));
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void E(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            a(i, mediaPeriodId);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
            MediaLoadData b = b(mediaLoadData);
            eventDispatcher.getClass();
            eventDispatcher.a(new fb(eventDispatcher, loadEventInfo, b, 1));
        }

        public final void a(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodId2;
            WrappingMediaSource wrappingMediaSource = this.l;
            if (mediaPeriodId != null) {
                Object obj = mediaPeriodId.a;
                Object obj2 = ((MaskingMediaSource) wrappingMediaSource).o.d;
                if (obj2 != null && obj2.equals(obj)) {
                    obj = MaskingMediaSource.MaskingTimeline.e;
                }
                mediaPeriodId2 = mediaPeriodId.a(obj);
            } else {
                mediaPeriodId2 = null;
            }
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
            if (eventDispatcher.a != i || !Objects.equals(eventDispatcher.b, mediaPeriodId2)) {
                this.j = new MediaSourceEventListener.EventDispatcher(wrappingMediaSource.c.c, i, mediaPeriodId2);
            }
            DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.k;
            if (eventDispatcher2.a != i || !Objects.equals(eventDispatcher2.b, mediaPeriodId2)) {
                this.k = new DrmSessionEventListener.EventDispatcher(wrappingMediaSource.d.c, i, mediaPeriodId2);
            }
        }

        public final MediaLoadData b(MediaLoadData mediaLoadData) {
            long j = mediaLoadData.d;
            long j2 = mediaLoadData.e;
            if (j == j && j2 == j2) {
                return mediaLoadData;
            }
            return new MediaLoadData(mediaLoadData.a, mediaLoadData.b, mediaLoadData.c, j, j2);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void g(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            a(i, mediaPeriodId);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
            MediaLoadData b = b(mediaLoadData);
            eventDispatcher.getClass();
            eventDispatcher.a(new fb(eventDispatcher, loadEventInfo, b, 0));
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void o(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            a(i, mediaPeriodId);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
            MediaLoadData b = b(mediaLoadData);
            eventDispatcher.getClass();
            eventDispatcher.a(new n5(6, eventDispatcher, b));
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public final void z(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
            a(i, mediaPeriodId);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.j;
            MediaLoadData b = b(mediaLoadData);
            eventDispatcher.getClass();
            eventDispatcher.a(new eb(eventDispatcher, loadEventInfo, b, i2));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaSourceAndListener<T> {
        public final MediaSource a;
        public final a b;
        public final ForwardingEventListener c;

        public MediaSourceAndListener(MediaSource mediaSource, a aVar, ForwardingEventListener forwardingEventListener) {
            this.a = mediaSource;
            this.b = aVar;
            this.c = forwardingEventListener;
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final void d() {
        Iterator it = this.i.values().iterator();
        while (it.hasNext()) {
            ((MediaSourceAndListener) it.next()).a.d();
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void j() {
        for (MediaSourceAndListener mediaSourceAndListener : this.i.values()) {
            ((BaseMediaSource) mediaSourceAndListener.a).i(mediaSourceAndListener.b);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void l() {
        for (MediaSourceAndListener mediaSourceAndListener : this.i.values()) {
            ((BaseMediaSource) mediaSourceAndListener.a).k(mediaSourceAndListener.b);
        }
    }
}
