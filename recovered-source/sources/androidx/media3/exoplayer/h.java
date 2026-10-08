package androidx.media3.exoplayer;

import android.content.Context;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import defpackage.b7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ Object k;

    public /* synthetic */ h(ExoPlayerImpl exoPlayerImpl) {
        this.k = exoPlayerImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                ExoPlayerImpl exoPlayerImpl = (ExoPlayerImpl) obj;
                BackgroundThreadStateHandler backgroundThreadStateHandler = exoPlayerImpl.B;
                Context context = exoPlayerImpl.e;
                String str = Util.a;
                int generateAudioSessionId = AudioManagerCompat.a(context).generateAudioSessionId();
                if (generateAudioSessionId == -1) {
                    generateAudioSessionId = 0;
                }
                if (((Integer) backgroundThreadStateHandler.a()).intValue() != generateAudioSessionId) {
                    backgroundThreadStateHandler.c(Integer.valueOf(generateAudioSessionId));
                    HandlerWrapper handlerWrapper = exoPlayerImpl.l.p;
                    handlerWrapper.c(handlerWrapper.a(40, generateAudioSessionId, 0));
                    return;
                }
                return;
            case 1:
                DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) ((ExoPlayerImplInternal) obj).F;
                defaultAnalyticsCollector.N(defaultAnalyticsCollector.G(), 1034, new b7(3));
                return;
            default:
                PlayerMessage playerMessage = (PlayerMessage) obj;
                int i2 = ExoPlayerImplInternal.q0;
                try {
                    synchronized (playerMessage) {
                    }
                    try {
                        playerMessage.a.o(playerMessage.c, playerMessage.d);
                        return;
                    } finally {
                        playerMessage.a(true);
                    }
                } catch (ExoPlaybackException e) {
                    Log.d("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
                    throw new RuntimeException(e);
                }
        }
    }

    public /* synthetic */ h(ExoPlayerImplInternal exoPlayerImplInternal, int i) {
        this.k = exoPlayerImplInternal;
    }

    public /* synthetic */ h(ExoPlayerImplInternal exoPlayerImplInternal, PlayerMessage playerMessage) {
        this.k = playerMessage;
    }
}
