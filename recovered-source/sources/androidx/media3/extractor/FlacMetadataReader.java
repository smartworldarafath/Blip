package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import defpackage.k8;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FlacMetadataReader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FlacStreamMetadataHolder {
        public FlacStreamMetadata a;
    }

    public static Metadata a(ExtractorInput extractorInput, boolean z, boolean z2) {
        k8 k8Var;
        if (!z) {
            k8Var = Id3Decoder.b;
        } else if (z2) {
            k8Var = Id3Decoder.c;
        } else {
            k8Var = null;
        }
        Metadata a = new Id3Peeker().a(extractorInput, k8Var, 0);
        if (a == null || a.a.length == 0) {
            return null;
        }
        return a;
    }

    public static FlacStreamMetadata.SeekTable b(ParsableByteArray parsableByteArray) {
        parsableByteArray.N(1);
        int C = parsableByteArray.C();
        long j = parsableByteArray.b + C;
        int i = C / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long t = parsableByteArray.t();
            if (t == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = t;
            jArr2[i2] = parsableByteArray.t();
            parsableByteArray.N(2);
            i2++;
        }
        parsableByteArray.N((int) (j - parsableByteArray.b));
        return new FlacStreamMetadata.SeekTable(jArr, jArr2);
    }
}
