package androidx.media3.common.audio;

import android.media.AudioFocusRequest;
import android.os.Handler;
import androidx.media3.common.AudioAttributes;
import defpackage.d3;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioFocusRequestCompat {
    public final int a;
    public final d3 b;
    public final Handler c;
    public final AudioAttributes d;
    public final AudioFocusRequest e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public int a;
        public AudioAttributes b;
        public boolean c;
    }

    public AudioFocusRequestCompat(int i, d3 d3Var, Handler handler, AudioAttributes audioAttributes, boolean z) {
        this.a = i;
        this.c = handler;
        this.d = audioAttributes;
        this.b = d3Var;
        this.e = new AudioFocusRequest.Builder(i).setAudioAttributes(audioAttributes.a()).setWillPauseWhenDucked(false).setOnAudioFocusChangeListener(d3Var, handler).setAcceptsDelayedFocusGain(z).build();
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AudioFocusRequestCompat) {
                AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
                if (this.a == audioFocusRequestCompat.a && equals(audioFocusRequestCompat.b) && Objects.equals(this.c, audioFocusRequestCompat.c) && Objects.equals(this.d, audioFocusRequestCompat.d)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), this.b, this.c, this.d, Boolean.FALSE);
    }
}
