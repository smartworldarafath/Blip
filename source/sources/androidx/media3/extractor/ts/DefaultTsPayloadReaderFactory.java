package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ts.TsPayloadReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultTsPayloadReaderFactory {
    public final List a;

    public DefaultTsPayloadReaderFactory(List list) {
        this.a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    public final List a(TsPayloadReader.EsInfo esInfo) {
        boolean z;
        String str;
        int i;
        List list;
        boolean z2;
        byte[] bArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.c);
        ArrayList arrayList = this.a;
        while (parsableByteArray.a() > 0) {
            int z3 = parsableByteArray.z();
            int z4 = parsableByteArray.b + parsableByteArray.z();
            if (z3 == 134) {
                arrayList = new ArrayList();
                int z5 = parsableByteArray.z() & 31;
                for (int i2 = 0; i2 < z5; i2++) {
                    String x = parsableByteArray.x(3, StandardCharsets.UTF_8);
                    int z6 = parsableByteArray.z();
                    if ((z6 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        i = z6 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte z7 = (byte) parsableByteArray.z();
                    parsableByteArray.N(1);
                    if (z) {
                        if ((z7 & 64) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        byte[] bArr2 = CodecSpecificDataUtil.a;
                        if (z2) {
                            bArr = new byte[]{1};
                        } else {
                            bArr = new byte[]{0};
                        }
                        list = Collections.singletonList(bArr);
                    } else {
                        list = null;
                    }
                    Format.Builder builder = new Format.Builder();
                    builder.o = MimeTypes.l(str);
                    builder.d = x;
                    builder.O = i;
                    builder.r = list;
                    arrayList.add(new Format(builder));
                }
            }
            parsableByteArray.M(z4);
            arrayList = arrayList;
        }
        return arrayList;
    }
}
