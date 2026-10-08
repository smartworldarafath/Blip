package androidx.media3.extractor.metadata.emsg;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EventMessageDecoder extends SimpleMetadataDecoder {
    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(byteBuffer.limit(), byteBuffer.array());
        String u = parsableByteArray.u();
        u.getClass();
        String u2 = parsableByteArray.u();
        u2.getClass();
        return new Metadata(new EventMessage(u, u2, parsableByteArray.t(), parsableByteArray.t(), Arrays.copyOfRange(parsableByteArray.a, parsableByteArray.b, parsableByteArray.c)));
    }
}
