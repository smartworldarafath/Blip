package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.LoadingInfo;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.source.SequenceableLoader;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MediaPeriod extends SequenceableLoader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Callback extends SequenceableLoader.Callback<MediaPeriod> {
        void c(MediaPeriod mediaPeriod);
    }

    boolean b(LoadingInfo loadingInfo);

    void d();

    long e();

    void g();

    long h(long j, SeekParameters seekParameters);

    long i(long j);

    void j(long j);

    long k(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j);

    boolean m();

    long o();

    void p(Callback callback, long j);

    TrackGroupArray q();

    long t();

    void u(long j);
}
