package androidx.media3.exoplayer.analytics;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.media3.common.FlagSet;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface AnalyticsListener {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EventTime {
        public final long a;
        public final Timeline b;
        public final int c;
        public final MediaSource.MediaPeriodId d;
        public final long e;
        public final Timeline f;
        public final int g;
        public final MediaSource.MediaPeriodId h;
        public final long i;
        public final long j;

        public EventTime(long j, Timeline timeline, int i, MediaSource.MediaPeriodId mediaPeriodId, long j2, Timeline timeline2, int i2, MediaSource.MediaPeriodId mediaPeriodId2, long j3, long j4) {
            this.a = j;
            this.b = timeline;
            this.c = i;
            this.d = mediaPeriodId;
            this.e = j2;
            this.f = timeline2;
            this.g = i2;
            this.h = mediaPeriodId2;
            this.i = j3;
            this.j = j4;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && EventTime.class == obj.getClass()) {
                    EventTime eventTime = (EventTime) obj;
                    if (this.a == eventTime.a && this.c == eventTime.c && this.e == eventTime.e && this.g == eventTime.g && this.i == eventTime.i && this.j == eventTime.j && this.b.equals(eventTime.b) && Objects.equals(this.d, eventTime.d) && Objects.equals(this.f, eventTime.f) && Objects.equals(this.h, eventTime.h)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(Long.valueOf(this.a), this.b, Integer.valueOf(this.c), this.d, Long.valueOf(this.e), this.f, Integer.valueOf(this.g), this.h, Long.valueOf(this.i), Long.valueOf(this.j));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Events {
        public final FlagSet a;
        public final SparseArray b;

        public Events(FlagSet flagSet, SparseArray sparseArray) {
            this.a = flagSet;
            SparseBooleanArray sparseBooleanArray = flagSet.a;
            SparseArray sparseArray2 = new SparseArray(sparseBooleanArray.size());
            for (int i = 0; i < sparseBooleanArray.size(); i++) {
                Preconditions.h(i, sparseBooleanArray.size());
                int keyAt = sparseBooleanArray.keyAt(i);
                EventTime eventTime = (EventTime) sparseArray.get(keyAt);
                eventTime.getClass();
                sparseArray2.append(keyAt, eventTime);
            }
            this.b = sparseArray2;
        }

        public final boolean a(int i) {
            return this.a.a.get(i);
        }
    }

    default void a(VideoSize videoSize) {
    }

    default void g(DecoderCounters decoderCounters) {
    }

    default void h(PlaybackException playbackException) {
    }

    default void i(int i) {
    }

    default void m(MediaLoadData mediaLoadData) {
    }

    default void j(EventTime eventTime, Object obj) {
    }

    default void k(EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    default void l(Player player, Events events) {
    }

    default void n(EventTime eventTime, int i) {
    }

    default void o(EventTime eventTime, int i, long j) {
    }
}
