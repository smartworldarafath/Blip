package androidx.media3.exoplayer.audio;

import androidx.media3.common.Format;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioSink$ConfigurationException extends Exception {
    public final Format j;

    public AudioSink$ConfigurationException(Exception exc, Format format) {
        super(exc);
        this.j = format;
    }

    public AudioSink$ConfigurationException(Format format, String str) {
        super(str);
        this.j = format;
    }
}
