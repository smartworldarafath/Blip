package androidx.media3.extractor.metadata.dvbsi;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AppInfoTableDecoder extends SimpleMetadataDecoder {
    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            ParsableBitArray parsableBitArray = new ParsableBitArray(byteBuffer.limit(), byteBuffer.array());
            parsableBitArray.o(12);
            int d = (parsableBitArray.d() + parsableBitArray.g(12)) - 4;
            parsableBitArray.o(44);
            parsableBitArray.p(parsableBitArray.g(12));
            parsableBitArray.o(16);
            ArrayList arrayList = new ArrayList();
            while (parsableBitArray.d() < d) {
                parsableBitArray.o(48);
                int g = parsableBitArray.g(8);
                parsableBitArray.o(4);
                int d2 = parsableBitArray.d() + parsableBitArray.g(12);
                String str = null;
                String str2 = null;
                while (parsableBitArray.d() < d2) {
                    int g2 = parsableBitArray.g(8);
                    int g3 = parsableBitArray.g(8);
                    int d3 = parsableBitArray.d() + g3;
                    if (g2 == 2) {
                        int g4 = parsableBitArray.g(16);
                        parsableBitArray.o(8);
                        if (g4 != 3) {
                        }
                        while (parsableBitArray.d() < d3) {
                            int g5 = parsableBitArray.g(8);
                            Charset charset = StandardCharsets.US_ASCII;
                            byte[] bArr = new byte[g5];
                            parsableBitArray.j(g5, bArr);
                            str = new String(bArr, charset);
                            int g6 = parsableBitArray.g(8);
                            for (int i = 0; i < g6; i++) {
                                parsableBitArray.p(parsableBitArray.g(8));
                            }
                        }
                    } else if (g2 == 21) {
                        Charset charset2 = StandardCharsets.US_ASCII;
                        byte[] bArr2 = new byte[g3];
                        parsableBitArray.j(g3, bArr2);
                        str2 = new String(bArr2, charset2);
                    }
                    parsableBitArray.m(d3 * 8);
                }
                parsableBitArray.m(d2 * 8);
                if (str != null && str2 != null) {
                    arrayList.add(new AppInfoTable(g, str.concat(str2)));
                }
            }
            if (!arrayList.isEmpty()) {
                return new Metadata(arrayList);
            }
        }
        return null;
    }
}
