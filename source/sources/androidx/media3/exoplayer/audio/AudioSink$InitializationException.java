package androidx.media3.exoplayer.audio;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioSink$InitializationException extends Exception {
    public final boolean j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AudioSink$InitializationException(int i, int i2, int i3, int i4, Format format, boolean z, AudioOutputProvider.InitializationException initializationException) {
        super(r3.toString(), initializationException);
        String str;
        StringBuilder k = jb.k("AudioTrack init failed 0 Config(", i, ", ", i2, ", ");
        k.append(i3);
        k.append(", ");
        k.append(i4);
        k.append(") ");
        k.append(format);
        if (z) {
            str = " (recoverable)";
        } else {
            str = "";
        }
        k.append(str);
        this.j = z;
    }
}
