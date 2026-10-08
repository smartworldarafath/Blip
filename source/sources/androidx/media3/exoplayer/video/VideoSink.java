package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Size;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface VideoSink {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface VideoFrameHandler {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VideoSinkException extends Exception {
        public final Format j;

        public VideoSinkException(Exception exc, Format format) {
            super(exc);
            this.j = format;
        }
    }

    void a();

    boolean b();

    boolean c();

    void d(long j, long j2);

    Surface e();

    void f(Surface surface, Size size);

    void g();

    boolean h(long j, VideoFrameHandler videoFrameHandler);

    void i();

    void j(long j);

    void k(VideoFrameMetadataListener videoFrameMetadataListener);

    void l();

    void m(int i);

    void n(float f);

    void o();

    void p(Format format, long j, int i, List list);

    void q(boolean z);

    void r(List list);

    void s(boolean z);

    boolean t(boolean z);

    void u();

    void v(Listener listener, Executor executor);

    boolean w(Format format);

    void x();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
        public static final Listener a = new Object();

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.media3.exoplayer.video.VideoSink$Listener$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Listener {
        }

        default void b() {
        }

        default void c() {
        }

        default void d() {
        }

        default void a(VideoSize videoSize) {
        }
    }
}
