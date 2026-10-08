package androidx.media3.common;

import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.media3.common.FlagSet;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import com.google.common.base.Preconditions;
import defpackage.q;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Player {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Commands {
        public final FlagSet a;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Builder {
            public final FlagSet.Builder a = new FlagSet.Builder();

            static {
                FlagSet.Builder builder = new FlagSet.Builder();
                int[] iArr = {16, 17, 18, 21, 22, 23, 28, 30};
                for (int i = 0; i < 8; i++) {
                    builder.a(iArr[i]);
                }
                builder.b();
                FlagSet.Builder builder2 = new FlagSet.Builder();
                int[] iArr2 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 19, 31, 20, 24, 25, 33, 26, 34, 35, 27, 29, 32};
                for (int i2 = 0; i2 < 27; i2++) {
                    builder2.a(iArr2[i2]);
                }
                builder2.b();
            }

            public final void a(int i, boolean z) {
                FlagSet.Builder builder = this.a;
                if (z) {
                    builder.a(i);
                } else {
                    builder.getClass();
                }
            }
        }

        static {
            new Builder().a.b();
            Util.z(0);
        }

        public Commands(FlagSet flagSet) {
            this.a = flagSet;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Commands)) {
                return false;
            }
            return this.a.equals(((Commands) obj).a);
        }

        public final int hashCode() {
            return this.a.a.hashCode();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Events {
        public final FlagSet a;

        public Events(FlagSet flagSet) {
            this.a = flagSet;
        }

        public final boolean a(int... iArr) {
            for (int i : iArr) {
                if (this.a.a.get(i)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Events)) {
                return false;
            }
            return this.a.equals(((Events) obj).a);
        }

        public final int hashCode() {
            return this.a.a.hashCode();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PositionInfo {
        public final Object a;
        public final int b;
        public final MediaItem c;
        public final Object d;
        public final int e;
        public final long f;
        public final long g;
        public final int h;
        public final int i;

        static {
            q.q(0, 1, 2, 3, 4);
            Util.z(5);
            Util.z(6);
        }

        public PositionInfo(Object obj, int i, MediaItem mediaItem, Object obj2, int i2, long j, long j2, int i3, int i4) {
            boolean z;
            if (i >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z);
            Preconditions.e(i2 >= 0);
            this.a = obj;
            this.b = i;
            this.c = mediaItem;
            this.d = obj2;
            this.e = i2;
            this.f = j;
            this.g = j2;
            this.h = i3;
            this.i = i4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PositionInfo.class == obj.getClass()) {
                PositionInfo positionInfo = (PositionInfo) obj;
                if (this.b == positionInfo.b && this.e == positionInfo.e && this.f == positionInfo.f && this.g == positionInfo.g && this.h == positionInfo.h && this.i == positionInfo.i && Objects.equals(this.c, positionInfo.c) && Objects.equals(this.a, positionInfo.a) && Objects.equals(this.d, positionInfo.d)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a, Integer.valueOf(this.b), this.c, this.d, Integer.valueOf(this.e), Long.valueOf(this.f), Long.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(this.i));
        }

        public final String toString() {
            String str = "mediaItem=" + this.b + ", period=" + this.e + ", pos=" + this.f;
            int i = this.h;
            if (i == -1) {
                return str;
            }
            return str + ", contentPos=" + this.g + ", adGroup=" + i + ", ad=" + this.i;
        }
    }

    CueGroup A();

    void B(Listener listener);

    int C();

    int D();

    void E(int i);

    void F(TrackSelectionParameters trackSelectionParameters);

    void G(SurfaceView surfaceView);

    void H(Listener listener);

    int I();

    int J();

    Timeline K();

    Looper L();

    boolean N();

    TrackSelectionParameters O();

    long P();

    void Q(TextureView textureView);

    MediaMetadata R();

    long S();

    long T();

    void c(PlaybackParameters playbackParameters);

    PlaybackParameters e();

    boolean f();

    long g();

    long getDuration();

    Commands h();

    boolean i();

    void j(boolean z);

    long k();

    int l();

    void m(TextureView textureView);

    VideoSize n();

    void o();

    int q();

    void r(SurfaceView surfaceView);

    ExoPlaybackException t();

    void u(boolean z);

    long v();

    long w();

    long x();

    int y();

    Tracks z();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
        default void v() {
        }

        default void A(PlaybackException playbackException) {
        }

        default void D(Commands commands) {
        }

        default void F(boolean z) {
        }

        default void a(VideoSize videoSize) {
        }

        default void b(int i) {
        }

        default void c(CueGroup cueGroup) {
        }

        default void d(Metadata metadata) {
        }

        default void e(boolean z) {
        }

        default void f(List list) {
        }

        default void h(PlaybackException playbackException) {
        }

        default void i(int i) {
        }

        default void k(Events events) {
        }

        default void l(boolean z) {
        }

        default void n(int i) {
        }

        default void p(boolean z) {
        }

        default void q(PlaybackParameters playbackParameters) {
        }

        default void r(int i) {
        }

        default void s(MediaMetadata mediaMetadata) {
        }

        default void t(TrackSelectionParameters trackSelectionParameters) {
        }

        default void u(int i) {
        }

        default void w(Tracks tracks) {
        }

        default void C(int i, int i2) {
        }

        default void m(int i, boolean z) {
        }

        default void x(MediaItem mediaItem, int i) {
        }

        default void y(int i, boolean z) {
        }

        default void j(int i, PositionInfo positionInfo, PositionInfo positionInfo2) {
        }
    }
}
