package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Av1SampleDependencyParser {
    public final ByteBuffer a = ByteBuffer.allocateDirect(500);
    public ObuParser.SequenceHeader b;

    public final void a(ArrayList arrayList) {
        ObuParser.SequenceHeader sequenceHeader;
        for (int i = 0; i < arrayList.size(); i++) {
            if (((ObuParser.Obu) arrayList.get(i)).a == 1) {
                try {
                    sequenceHeader = new ObuParser.SequenceHeader((ObuParser.Obu) arrayList.get(i));
                } catch (ObuParser.NotYetImplementedException unused) {
                    sequenceHeader = null;
                }
                this.b = sequenceHeader;
            }
        }
    }
}
