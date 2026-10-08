package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.ExoPlayerImpl;
import androidx.media3.exoplayer.ExoPlayerImplInternal;
import androidx.media3.exoplayer.source.MediaSource;
import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {
    public final /* synthetic */ ExoPlayerImpl j;
    public final /* synthetic */ ExoPlayerImplInternal.PlaybackInfoUpdate k;

    public /* synthetic */ i(ExoPlayerImpl exoPlayerImpl, ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.j = exoPlayerImpl;
        this.k = playbackInfoUpdate;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ExoPlayerImpl exoPlayerImpl = this.j;
        ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = this.k;
        int i = exoPlayerImpl.I - playbackInfoUpdate.c;
        exoPlayerImpl.I = i;
        boolean z5 = true;
        if (playbackInfoUpdate.d) {
            exoPlayerImpl.J = playbackInfoUpdate.e;
            exoPlayerImpl.K = true;
        }
        if (i == 0) {
            Timeline timeline = playbackInfoUpdate.b.a;
            int i2 = -1;
            if (!exoPlayerImpl.n0.a.p() && timeline.p()) {
                exoPlayerImpl.o0 = -1;
                exoPlayerImpl.p0 = 0L;
            }
            if (!timeline.p()) {
                List asList = Arrays.asList(((PlaylistTimeline) timeline).i);
                if (asList.size() == exoPlayerImpl.p.size()) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                Preconditions.n(z4);
                for (int i3 = 0; i3 < asList.size(); i3++) {
                    ((ExoPlayerImpl.MediaSourceHolderSnapshot) exoPlayerImpl.p.get(i3)).b = (Timeline) asList.get(i3);
                }
            }
            long j = -9223372036854775807L;
            if (exoPlayerImpl.K) {
                if (playbackInfoUpdate.b.a.p() && exoPlayerImpl.n0.a.p()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                boolean b = playbackInfoUpdate.b.b.b(exoPlayerImpl.n0.b);
                if (playbackInfoUpdate.b.d == exoPlayerImpl.n0.s) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z2 || (b && z3)) {
                    z5 = false;
                }
                if (z5) {
                    i2 = exoPlayerImpl.D();
                    if (!timeline.p() && !playbackInfoUpdate.b.b.c()) {
                        PlaybackInfo playbackInfo = playbackInfoUpdate.b;
                        MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.b;
                        long j2 = playbackInfo.d;
                        Object obj = mediaPeriodId.a;
                        Timeline.Period period = exoPlayerImpl.o;
                        timeline.g(obj, period);
                        j = j2 + period.e;
                    } else {
                        j = playbackInfoUpdate.b.d;
                    }
                }
                z = false;
            } else {
                z = false;
                z5 = false;
            }
            long j3 = j;
            int i4 = i2;
            exoPlayerImpl.K = z;
            exoPlayerImpl.u0(playbackInfoUpdate.b, 1, z5, exoPlayerImpl.J, j3, i4, false);
        }
    }
}
