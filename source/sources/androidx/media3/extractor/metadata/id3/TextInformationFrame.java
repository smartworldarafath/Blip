package androidx.media3.extractor.metadata.id3;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import defpackage.jb;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextInformationFrame extends Id3Frame {
    public final String b;
    public final ImmutableList c;

    /* JADX WARN: Multi-variable type inference failed */
    public TextInformationFrame(String str, String str2, List list) {
        super(str);
        Preconditions.e(!((AbstractCollection) list).isEmpty());
        this.b = str2;
        ImmutableList m = ImmutableList.m(list);
        this.c = m;
    }

    public static ArrayList d(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        char c;
        String str = this.a;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 2581856:
                if (str.equals("TPOS")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 2584864:
                if (str.equals("TSST")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        Integer num = null;
        ImmutableList immutableList = this.c;
        try {
            switch (c) {
                case 0:
                case KeyModifiers.b /* 10 */:
                    builder.c = (CharSequence) immutableList.get(0);
                    return;
                case 1:
                case 11:
                    builder.s = (CharSequence) immutableList.get(0);
                    return;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                case '\r':
                    String str2 = (String) immutableList.get(0);
                    int parseInt = Integer.parseInt(str2.substring(2, 4));
                    int parseInt2 = Integer.parseInt(str2.substring(0, 2));
                    builder.m = Integer.valueOf(parseInt);
                    builder.n = Integer.valueOf(parseInt2);
                    return;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                case 18:
                    builder.b = (CharSequence) immutableList.get(0);
                    return;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                case 19:
                    builder.d = (CharSequence) immutableList.get(0);
                    return;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                case 20:
                    builder.t = (CharSequence) immutableList.get(0);
                    return;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                case 22:
                    String str3 = (String) immutableList.get(0);
                    String str4 = Util.a;
                    String[] split = str3.split("/", -1);
                    int parseInt3 = Integer.parseInt(split[0]);
                    if (split.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(split[1]));
                    }
                    builder.h = Integer.valueOf(parseInt3);
                    builder.i = num;
                    return;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case 17:
                    builder.a = (CharSequence) immutableList.get(0);
                    return;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                case 16:
                    builder.r = (CharSequence) immutableList.get(0);
                    return;
                case KeyModifiers.a /* 9 */:
                case 24:
                    builder.l = Integer.valueOf(Integer.parseInt((String) immutableList.get(0)));
                    return;
                case KeyModifiers.c /* 12 */:
                    Integer f = Ints.f((String) immutableList.get(0));
                    if (f == null) {
                        builder.x = (CharSequence) immutableList.get(0);
                        return;
                    }
                    String a = Id3Util.a(f.intValue());
                    if (a != null) {
                        builder.x = a;
                        return;
                    }
                    return;
                case 14:
                    ArrayList d = d((String) immutableList.get(0));
                    int size = d.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                builder.n = (Integer) d.get(2);
                            } else {
                                return;
                            }
                        }
                        builder.m = (Integer) d.get(1);
                    }
                    builder.l = (Integer) d.get(0);
                    return;
                case 15:
                    ArrayList d2 = d((String) immutableList.get(0));
                    int size2 = d2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                builder.q = (Integer) d2.get(2);
                            } else {
                                return;
                            }
                        }
                        builder.p = (Integer) d2.get(1);
                    }
                    builder.o = (Integer) d2.get(0);
                    return;
                case 21:
                    String str5 = (String) immutableList.get(0);
                    String str6 = Util.a;
                    String[] split2 = str5.split("/", -1);
                    int parseInt4 = Integer.parseInt(split2[0]);
                    if (split2.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(split2[1]));
                    }
                    builder.v = Integer.valueOf(parseInt4);
                    builder.w = num;
                    return;
                case 23:
                    builder.u = (CharSequence) immutableList.get(0);
                    return;
                default:
                    return;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && TextInformationFrame.class == obj.getClass()) {
                TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
                if (this.a.equals(textInformationFrame.a) && Objects.equals(this.b, textInformationFrame.b) && this.c.equals(textInformationFrame.c)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int c = jb.c(this.a, 527, 31);
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return this.c.hashCode() + ((c + i) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": description=" + this.b + ": values=" + this.c;
    }
}
