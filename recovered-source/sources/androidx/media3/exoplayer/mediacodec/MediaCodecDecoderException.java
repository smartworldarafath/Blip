package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.media3.decoder.DecoderException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MediaCodecDecoderException extends DecoderException {
    public final int j;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MediaCodecDecoderException(IllegalStateException illegalStateException, MediaCodecInfo mediaCodecInfo) {
        super(r0.toString(), illegalStateException);
        String str;
        int i;
        StringBuilder sb = new StringBuilder("Decoder failed: ");
        if (mediaCodecInfo == null) {
            str = null;
        } else {
            str = mediaCodecInfo.a;
        }
        sb.append(str);
        boolean z = illegalStateException instanceof MediaCodec.CodecException;
        if (z) {
            ((MediaCodec.CodecException) illegalStateException).getDiagnosticInfo();
        }
        if (z) {
            i = ((MediaCodec.CodecException) illegalStateException).getErrorCode();
        } else {
            i = 0;
        }
        this.j = i;
    }
}
