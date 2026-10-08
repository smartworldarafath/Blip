package androidx.media3.exoplayer.audio;

import android.os.Handler;
import android.os.SystemClock;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import defpackage.h7;
import defpackage.q3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements ListenerSet.Event {
    public final /* synthetic */ int j;

    public /* synthetic */ a(int i) {
        this.j = i;
    }

    /* JADX WARN: Type inference failed for: r14v15, types: [androidx.media3.exoplayer.audio.AudioSink$AudioTrackConfig, java.lang.Object] */
    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void b(Object obj) {
        long j;
        AudioSink$Listener audioSink$Listener;
        Renderer.WakeupListener wakeupListener;
        DefaultTrackSelector defaultTrackSelector;
        switch (this.j) {
            case 0:
                DefaultAudioSink.AudioOutputListener audioOutputListener = (DefaultAudioSink.AudioOutputListener) ((AudioOutput$Listener) obj);
                DefaultAudioSink defaultAudioSink = DefaultAudioSink.this;
                if (audioOutputListener == defaultAudioSink.j && defaultAudioSink.n != null) {
                    DefaultAudioSink.Configuration configuration = defaultAudioSink.p;
                    int i = configuration.d;
                    if (i != -1) {
                        long j2 = configuration.e.f / i;
                        AudioTrackAudioOutput audioTrackAudioOutput = defaultAudioSink.t;
                        audioTrackAudioOutput.getClass();
                        j = Util.H(audioTrackAudioOutput.a.getSampleRate(), j2);
                    } else {
                        j = -9223372036854775807L;
                    }
                    final long elapsedRealtime = SystemClock.elapsedRealtime() - defaultAudioSink.X;
                    AudioSink$Listener audioSink$Listener2 = defaultAudioSink.n;
                    final int i2 = defaultAudioSink.p.e.f;
                    final long N = Util.N(j);
                    final AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.R0;
                    Handler handler = eventDispatcher.a;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: o3
                            @Override // java.lang.Runnable
                            public final void run() {
                                AudioRendererEventListener audioRendererEventListener = AudioRendererEventListener.EventDispatcher.this.b;
                                String str = Util.a;
                                audioRendererEventListener.D(i2, N, elapsedRealtime);
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            case 1:
                DefaultAudioSink.AudioOutputListener audioOutputListener2 = (DefaultAudioSink.AudioOutputListener) ((AudioOutput$Listener) obj);
                audioOutputListener2.getClass();
                DefaultAudioSink.d0.getAndDecrement();
                AudioSink$Listener audioSink$Listener3 = DefaultAudioSink.this.n;
                if (audioSink$Listener3 != null) {
                    ?? obj2 = new Object();
                    AudioRendererEventListener.EventDispatcher eventDispatcher2 = MediaCodecAudioRenderer.this.R0;
                    Handler handler2 = eventDispatcher2.a;
                    if (handler2 != null) {
                        handler2.post(new q3(eventDispatcher2, obj2, 0));
                        return;
                    }
                    return;
                }
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                DefaultAudioSink.AudioOutputListener audioOutputListener3 = (DefaultAudioSink.AudioOutputListener) ((AudioOutput$Listener) obj);
                DefaultAudioSink defaultAudioSink2 = DefaultAudioSink.this;
                if (audioOutputListener3 == defaultAudioSink2.j && (audioSink$Listener = defaultAudioSink2.n) != null && defaultAudioSink2.P && (wakeupListener = MediaCodecAudioRenderer.this.R) != null) {
                    wakeupListener.b();
                    return;
                }
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                DefaultAudioSink.AudioOutputListener audioOutputListener4 = (DefaultAudioSink.AudioOutputListener) ((AudioOutput$Listener) obj);
                DefaultAudioSink defaultAudioSink3 = DefaultAudioSink.this;
                if (audioOutputListener4 == defaultAudioSink3.j && defaultAudioSink3.N) {
                    defaultAudioSink3.O = true;
                    return;
                }
                return;
            default:
                AudioSink$Listener audioSink$Listener4 = ((h7) ((AudioOutputProvider.Listener) obj)).a.n;
                if (audioSink$Listener4 != null) {
                    MediaCodecAudioRenderer mediaCodecAudioRenderer = MediaCodecAudioRenderer.this;
                    synchronized (mediaCodecAudioRenderer.j) {
                        defaultTrackSelector = mediaCodecAudioRenderer.B;
                    }
                    if (defaultTrackSelector != null) {
                        defaultTrackSelector.f.getClass();
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
