package androidx.media3.common.audio;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.q;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface AudioProcessor {
    public static final ByteBuffer a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AudioFormat {
        public static final AudioFormat e = new AudioFormat(-1, -1, -1);
        public final int a;
        public final int b;
        public final int c;
        public final int d;

        public AudioFormat(int i, int i2, int i3) {
            int i4;
            this.a = i;
            this.b = i2;
            this.c = i3;
            if (Util.A(i3)) {
                i4 = Util.n(i3) * i2;
            } else {
                i4 = -1;
            }
            this.d = i4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioFormat)) {
                return false;
            }
            AudioFormat audioFormat = (AudioFormat) obj;
            if (this.a == audioFormat.a && this.b == audioFormat.b && this.c == audioFormat.c) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AudioFormat[sampleRate=");
            sb.append(this.a);
            sb.append(", channelCount=");
            sb.append(this.b);
            sb.append(", encoding=");
            return q.j(sb, this.c, ']');
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StreamMetadata {
        public static final StreamMetadata d = new Builder().a();
        public final long a;
        public final Timeline b;
        public final Object c;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
            public long a = 0;
            public Timeline b = Timeline.a;
            public Object c = null;

            public final StreamMetadata a() {
                Object obj;
                boolean z;
                if (!this.b.p() && (obj = this.c) != null) {
                    if (this.b.b(obj) != -1) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.e(z);
                }
                return new StreamMetadata(this);
            }
        }

        public StreamMetadata(Builder builder) {
            this.a = builder.a;
            this.b = builder.b;
            this.c = builder.c;
        }
    }

    boolean b();

    boolean h();

    ByteBuffer i();

    void j(ByteBuffer byteBuffer);

    void k(StreamMetadata streamMetadata);

    void l();

    AudioFormat m(AudioFormat audioFormat);

    void reset();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(String str, AudioFormat audioFormat) {
            super(str + " " + audioFormat);
        }

        public UnhandledAudioFormatException(AudioFormat audioFormat) {
            this("Unhandled input format:", audioFormat);
        }
    }

    default long n(long j) {
        return j;
    }
}
