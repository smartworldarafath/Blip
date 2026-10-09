package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;
import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SimpleMetadataDecoder {
    public final Metadata a(MetadataInputBuffer metadataInputBuffer) {
        boolean z;
        ByteBuffer byteBuffer = metadataInputBuffer.m;
        byteBuffer.getClass();
        if (byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        return b(metadataInputBuffer, byteBuffer);
    }

    public abstract Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer);
}
