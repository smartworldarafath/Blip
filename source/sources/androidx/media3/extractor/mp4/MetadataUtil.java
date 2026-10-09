package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.extractor.metadata.id3.ApicFrame;
import androidx.media3.extractor.metadata.id3.CommentFrame;
import androidx.media3.extractor.metadata.id3.Id3Frame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MetadataUtil {
    public static ApicFrame a(ParsableByteArray parsableByteArray) {
        String str;
        int m = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385) {
            int m2 = parsableByteArray.m();
            byte[] bArr = BoxParser.a;
            int i = m2 & 16777215;
            if (i == 13) {
                str = "image/jpeg";
            } else if (i == 14) {
                str = "image/png";
            } else {
                str = null;
            }
            if (str == null) {
                q.x("Unrecognized cover art flags: ", i, "MetadataUtil");
                return null;
            }
            parsableByteArray.N(4);
            int i2 = m - 16;
            byte[] bArr2 = new byte[i2];
            parsableByteArray.k(bArr2, 0, i2);
            return new ApicFrame(str, null, 3, bArr2);
        }
        Log.f("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    public static TextInformationFrame b(int i, ParsableByteArray parsableByteArray, String str) {
        int m = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385 && m >= 22) {
            parsableByteArray.N(10);
            int G = parsableByteArray.G();
            if (G > 0) {
                String g = q.g(G, "");
                int G2 = parsableByteArray.G();
                if (G2 > 0) {
                    g = g + "/" + G2;
                }
                return new TextInformationFrame(str, null, ImmutableList.t(g));
            }
        }
        Log.f("MetadataUtil", "Failed to parse index/count attribute: ".concat(Mp4Box.a(i)));
        return null;
    }

    public static int c(ParsableByteArray parsableByteArray) {
        int m = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385) {
            parsableByteArray.N(8);
            int i = m - 16;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4 && (parsableByteArray.j() & 128) == 0) {
                            return parsableByteArray.D();
                        }
                    } else {
                        return parsableByteArray.C();
                    }
                } else {
                    return parsableByteArray.G();
                }
            } else {
                return parsableByteArray.z();
            }
        }
        Log.f("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    public static Id3Frame d(int i, String str, ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        int c = c(parsableByteArray);
        if (z2) {
            c = Math.min(1, c);
        }
        if (c >= 0) {
            if (z) {
                return new TextInformationFrame(str, null, ImmutableList.t(Integer.toString(c)));
            }
            return new CommentFrame("und", str, Integer.toString(c));
        }
        Log.f("MetadataUtil", "Failed to parse uint8 attribute: ".concat(Mp4Box.a(i)));
        return null;
    }

    public static TextInformationFrame e(int i, ParsableByteArray parsableByteArray, String str) {
        int m = parsableByteArray.m();
        if (parsableByteArray.m() == 1684108385) {
            parsableByteArray.N(8);
            return new TextInformationFrame(str, null, ImmutableList.t(parsableByteArray.v(m - 16)));
        }
        Log.f("MetadataUtil", "Failed to parse text attribute: ".concat(Mp4Box.a(i)));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(int i, Metadata metadata, Format.Builder builder, Metadata metadata2, Metadata... metadataArr) {
        if (metadata2 == null) {
            metadata2 = new Metadata(new Metadata.Entry[0]);
        }
        if (metadata != null) {
            ImmutableList.Builder k = ImmutableList.k();
            for (Metadata.Entry entry : metadata.a) {
                if (MdtaMetadataEntry.class.isAssignableFrom(entry.getClass())) {
                    k.d((Metadata.Entry) MdtaMetadataEntry.class.cast(entry));
                }
            }
            UnmodifiableListIterator listIterator = k.i().listIterator(0);
            while (listIterator.hasNext()) {
                MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) listIterator.next();
                if (!mdtaMetadataEntry.a.equals("com.android.capture.fps") || i == 2) {
                    metadata2 = metadata2.a(mdtaMetadataEntry);
                }
            }
        }
        for (Metadata metadata3 : metadataArr) {
            metadata2 = metadata2.b(metadata3);
        }
        if (metadata2.a.length > 0) {
            builder.l = metadata2;
        }
    }
}
