package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import defpackage.u2;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface AudioOutputProvider {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ConfigurationException extends Exception {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FormatConfig {
        public final Format a;
        public final AudioAttributes b;
        public final AudioDeviceInfo c;
        public final boolean d;
        public final int e;
        public final int f;
        public final boolean g;
        public final int h;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
            public final Format a;
            public AudioDeviceInfo c;
            public boolean d;
            public boolean g;
            public AudioAttributes b = AudioAttributes.b;
            public int e = 0;
            public int f = -1;
            public int h = -1;

            public Builder(Format format) {
                this.a = format;
            }
        }

        public FormatConfig(Builder builder) {
            this.a = builder.a;
            this.b = builder.b;
            this.c = builder.c;
            this.d = builder.d;
            this.e = builder.e;
            this.f = builder.f;
            this.g = builder.g;
            this.h = builder.h;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FormatSupport {
        public final boolean a;
        public final boolean b;
        public final boolean c;
        public final int d;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
            public boolean a;
            public boolean b;
            public boolean c;
            public int d = 0;

            public final FormatSupport a() {
                if (!this.a && (this.b || this.c)) {
                    u2.l("Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false");
                    return null;
                }
                return new FormatSupport(this);
            }
        }

        static {
            new Builder().a();
        }

        public FormatSupport(Builder builder) {
            this.a = builder.a;
            this.b = builder.b;
            this.c = builder.c;
            this.d = builder.d;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InitializationException extends Exception {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OutputConfig {
        public final int a;
        public final int b;
        public final int c;
        public final boolean d;
        public final boolean e;
        public final int f;
        public final AudioAttributes g;
        public final int h;
        public final int i;
        public final boolean j;
        public final boolean k;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
            public int a;
            public int b;
            public int c;
            public boolean d;
            public boolean e;
            public int f;
            public AudioAttributes g;
            public int h;
            public int i;
            public boolean j;
            public boolean k;
        }

        public OutputConfig(Builder builder) {
            this.a = builder.a;
            this.b = builder.b;
            this.c = builder.c;
            this.d = builder.d;
            this.e = builder.e;
            this.f = builder.f;
            this.g = builder.g;
            this.h = builder.h;
            this.i = builder.i;
            this.j = builder.j;
            this.k = builder.k;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.audio.AudioOutputProvider$OutputConfig$Builder, java.lang.Object] */
        public final Builder a() {
            ?? obj = new Object();
            obj.a = this.a;
            obj.b = this.b;
            obj.c = this.c;
            obj.d = this.d;
            obj.e = this.e;
            obj.f = this.f;
            obj.g = this.g;
            obj.h = this.h;
            obj.i = this.i;
            obj.j = this.j;
            obj.k = this.k;
            return obj;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && OutputConfig.class == obj.getClass()) {
                    OutputConfig outputConfig = (OutputConfig) obj;
                    if (this.a == outputConfig.a && this.b == outputConfig.b && this.c == outputConfig.c && this.d == outputConfig.d && this.e == outputConfig.e && this.f == outputConfig.f && this.h == outputConfig.h && this.i == outputConfig.i && this.j == outputConfig.j && this.k == outputConfig.k && this.g.equals(outputConfig.g)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(this.a), Integer.valueOf(this.b), Integer.valueOf(this.c), Boolean.valueOf(this.d), Boolean.valueOf(this.e), Integer.valueOf(this.f), this.g, Integer.valueOf(this.h), Integer.valueOf(this.i), Boolean.valueOf(this.k), Boolean.valueOf(this.j));
        }
    }
}
