package androidx.media3.exoplayer.audio;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.primitives.ImmutableIntArray;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioSink$AudioSinkConfig {
    public final Format a;
    public final ImmutableIntArray b;
    public final Timeline c;
    public final MediaSource.MediaPeriodId d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Format a;
        public ImmutableIntArray b = null;
        public Timeline c = Timeline.a;
        public MediaSource.MediaPeriodId d = null;

        public Builder(Format format) {
            this.a = format;
        }
    }

    public AudioSink$AudioSinkConfig(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioSink$AudioSinkConfig)) {
            return false;
        }
        AudioSink$AudioSinkConfig audioSink$AudioSinkConfig = (AudioSink$AudioSinkConfig) obj;
        if (this.a.equals(audioSink$AudioSinkConfig.a) && Objects.equals(this.b, audioSink$AudioSinkConfig.b) && this.c.equals(audioSink$AudioSinkConfig.c) && Objects.equals(this.d, audioSink$AudioSinkConfig.d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.a.hashCode() * 961;
        int i = 0;
        ImmutableIntArray immutableIntArray = this.b;
        if (immutableIntArray == null) {
            hashCode = 0;
        } else {
            hashCode = immutableIntArray.hashCode();
        }
        int hashCode3 = (this.c.hashCode() + ((hashCode2 + hashCode) * 31)) * 31;
        MediaSource.MediaPeriodId mediaPeriodId = this.d;
        if (mediaPeriodId != null) {
            i = mediaPeriodId.hashCode();
        }
        return hashCode3 + i;
    }
}
