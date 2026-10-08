package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.DefaultAudioSink;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultAudioOffloadSupportProvider implements DefaultAudioSink.AudioOffloadSupportProvider {
    public final Context a;
    public Boolean b;

    public DefaultAudioOffloadSupportProvider(Context context) {
        Context applicationContext;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        this.a = applicationContext;
    }

    /* JADX WARN: Type inference failed for: r8v11, types: [androidx.media3.exoplayer.audio.AudioOffloadSupport$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7, types: [androidx.media3.exoplayer.audio.AudioOffloadSupport$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.media3.exoplayer.audio.AudioOffloadSupport$Builder, java.lang.Object] */
    public final AudioOffloadSupport a(Format format, AudioAttributes audioAttributes) {
        boolean booleanValue;
        boolean z;
        boolean isOffloadedPlaybackSupported;
        int playbackOffloadSupport;
        int directPlaybackSupport;
        format.getClass();
        int i = format.L;
        audioAttributes.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 && i != -1) {
            Boolean bool = this.b;
            boolean z2 = false;
            if (bool != null) {
                booleanValue = bool.booleanValue();
            } else {
                Context context = this.a;
                if (context != null) {
                    String parameters = AudioManagerCompat.a(context).getParameters("offloadVariableRateSupported");
                    if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.b = Boolean.valueOf(z);
                } else {
                    this.b = Boolean.FALSE;
                }
                booleanValue = this.b.booleanValue();
            }
            String str = format.p;
            str.getClass();
            int b = MimeTypes.b(str, format.l);
            if (b != 0 && i2 >= Util.l(b)) {
                int i3 = format.K;
                if (i3 == -1) {
                    i3 = Util.m(format.J);
                }
                if (i3 == 0) {
                    return AudioOffloadSupport.d;
                }
                try {
                    AudioFormat build = new AudioFormat.Builder().setSampleRate(i).setChannelMask(i3).setEncoding(b).build();
                    if (i2 >= 33) {
                        directPlaybackSupport = AudioManager.getDirectPlaybackSupport(build, audioAttributes.a());
                        if ((directPlaybackSupport & 1) == 0) {
                            return AudioOffloadSupport.d;
                        }
                        if ((directPlaybackSupport & 3) == 3) {
                            z2 = true;
                        }
                        ?? obj = new Object();
                        obj.a = true;
                        obj.b = z2;
                        obj.c = booleanValue;
                        return obj.a();
                    }
                    if (i2 >= 31) {
                        playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(build, audioAttributes.a());
                        if (playbackOffloadSupport == 0) {
                            return AudioOffloadSupport.d;
                        }
                        ?? obj2 = new Object();
                        if (i2 > 32 && playbackOffloadSupport == 2) {
                            z2 = true;
                        }
                        obj2.a = true;
                        obj2.b = z2;
                        obj2.c = booleanValue;
                        return obj2.a();
                    }
                    isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(build, audioAttributes.a());
                    if (!isOffloadedPlaybackSupported) {
                        return AudioOffloadSupport.d;
                    }
                    ?? obj3 = new Object();
                    obj3.a = true;
                    obj3.c = booleanValue;
                    return obj3.a();
                } catch (IllegalArgumentException unused) {
                    return AudioOffloadSupport.d;
                }
            }
            return AudioOffloadSupport.d;
        }
        return AudioOffloadSupport.d;
    }
}
