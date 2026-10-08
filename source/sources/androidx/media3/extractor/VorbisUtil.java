package androidx.media3.extractor;

import android.util.Base64;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import androidx.media3.extractor.metadata.vorbis.VorbisComment;
import com.google.common.primitives.ImmutableIntArray;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VorbisUtil {
    public static final ImmutableIntArray a = new ImmutableIntArray(new int[]{0, 2, 1}, 3);
    public static final ImmutableIntArray b = new ImmutableIntArray(new int[]{0, 2, 1, 3, 4}, 5);
    public static final ImmutableIntArray c = new ImmutableIntArray(new int[]{0, 2, 1, 5, 3, 4}, 6);
    public static final ImmutableIntArray d = ImmutableIntArray.b(2, 1, 6, 5, 3, 4);
    public static final ImmutableIntArray e = ImmutableIntArray.b(2, 1, 7, 5, 6, 3, 4);

    public static Metadata a(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            String str2 = Util.a;
            String[] split = str.split("=", 2);
            if (split.length != 2) {
                Log.f("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (split[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.d(new ParsableByteArray(Base64.decode(split[1], 0))));
                } catch (RuntimeException e2) {
                    Log.g("VorbisUtil", "Failed to parse vorbis picture", e2);
                }
            } else {
                arrayList.add(new VorbisComment(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }
}
