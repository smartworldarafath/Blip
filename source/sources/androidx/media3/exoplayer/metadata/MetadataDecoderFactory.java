package androidx.media3.exoplayer.metadata;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import androidx.media3.extractor.metadata.icy.IcyDecoder;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import androidx.media3.extractor.metadata.scte35.SpliceInfoDecoder;
import defpackage.jb;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MetadataDecoderFactory {
    public static final MetadataDecoderFactory a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.exoplayer.metadata.MetadataDecoderFactory$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements MetadataDecoderFactory {
        /* JADX WARN: Type inference failed for: r2v3, types: [androidx.media3.extractor.metadata.SimpleMetadataDecoder, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v6, types: [androidx.media3.extractor.metadata.SimpleMetadataDecoder, java.lang.Object] */
        public final SimpleMetadataDecoder a(Format format) {
            String str = format.p;
            if (str != null) {
                char c = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals("application/id3")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals("application/x-emsg")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals("application/x-scte35")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        return new Object();
                    case 1:
                        return new IcyDecoder();
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return new Id3Decoder(null);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return new Object();
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return new SpliceInfoDecoder();
                }
            }
            u2.g(jb.f("Attempted to create decoder for unsupported MIME type: ", str));
            return null;
        }

        public final boolean b(Format format) {
            String str = format.p;
            if (!"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str)) {
                return false;
            }
            return true;
        }
    }
}
