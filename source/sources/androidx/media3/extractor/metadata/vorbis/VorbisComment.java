package androidx.media3.extractor.metadata.vorbis;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import com.google.common.base.Ascii;
import com.google.common.primitives.Ints;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VorbisComment implements Metadata.Entry {
    public final String a;
    public final String b;

    public VorbisComment(String str, String str2) {
        this.a = Ascii.d(str);
        this.b = str2;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        String str = this.a;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    c = 0;
                    break;
                }
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    c = 1;
                    break;
                }
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    c = 2;
                    break;
                }
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    c = 3;
                    break;
                }
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    c = 4;
                    break;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    c = 5;
                    break;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    c = 6;
                    break;
                }
                break;
            case 905239725:
                if (str.equals("DISCSUBTITLE")) {
                    c = 7;
                    break;
                }
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    c = '\b';
                    break;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    c = '\t';
                    break;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    c = '\n';
                    break;
                }
                break;
        }
        String str2 = this.b;
        switch (c) {
            case 0:
                Integer f = Ints.f(str2);
                if (f != null) {
                    builder.i = f;
                    return;
                }
                return;
            case 1:
                Integer f2 = Ints.f(str2);
                if (f2 != null) {
                    builder.w = f2;
                    return;
                }
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Integer f3 = Ints.f(str2);
                if (f3 != null) {
                    builder.h = f3;
                    return;
                }
                return;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                builder.c = str2;
                return;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                builder.x = str2;
                return;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                builder.a = str2;
                return;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                builder.e = str2;
                return;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                builder.u = str2;
                return;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Integer f4 = Ints.f(str2);
                if (f4 != null) {
                    builder.v = f4;
                    return;
                }
                return;
            case KeyModifiers.a /* 9 */:
                builder.d = str2;
                return;
            case KeyModifiers.b /* 10 */:
                builder.b = str2;
                return;
            default:
                return;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && VorbisComment.class == obj.getClass()) {
            VorbisComment vorbisComment = (VorbisComment) obj;
            if (this.a.equals(vorbisComment.a) && this.b.equals(vorbisComment.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + jb.c(this.a, 527, 31);
    }

    public final String toString() {
        return "VC: " + this.a + "=" + this.b;
    }
}
