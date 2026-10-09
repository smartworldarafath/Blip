package androidx.media3.extractor.flv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.TrackOutput;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class VideoTagPayloadReader extends TagPayloadReader {
    public final ParsableByteArray b;
    public final ParsableByteArray c;
    public int d;
    public boolean e;
    public boolean f;
    public int g;

    public VideoTagPayloadReader(TrackOutput trackOutput) {
        super(trackOutput);
        this.b = new ParsableByteArray(NalUnitUtil.a);
        this.c = new ParsableByteArray(4);
    }
}
