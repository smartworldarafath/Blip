package androidx.media3.extractor.text;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.dvb.DvbParser;
import androidx.media3.extractor.text.pgs.PgsParser;
import androidx.media3.extractor.text.ssa.SsaParser;
import androidx.media3.extractor.text.subrip.SubripParser;
import androidx.media3.extractor.text.ttml.TtmlParser;
import androidx.media3.extractor.text.tx3g.Tx3gParser;
import androidx.media3.extractor.text.vobsub.VobsubParser;
import androidx.media3.extractor.text.webvtt.Mp4WebvttParser;
import androidx.media3.extractor.text.webvtt.WebvttParser;
import defpackage.jb;
import defpackage.u2;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultSubtitleParserFactory implements SubtitleParser.Factory {
    @Override // androidx.media3.extractor.text.SubtitleParser.Factory
    public final int a(Format format) {
        String str = format.p;
        if (str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1351681404:
                    if (str.equals("application/dvbsubs")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1248334819:
                    if (str.equals("application/pgs")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1026075066:
                    if (str.equals("application/x-mp4-vtt")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1004728940:
                    if (str.equals("text/vtt")) {
                        c = 3;
                        break;
                    }
                    break;
                case 691401887:
                    if (str.equals("application/x-quicktime-tx3g")) {
                        c = 4;
                        break;
                    }
                    break;
                case 822864842:
                    if (str.equals("text/x-ssa")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1157994102:
                    if (str.equals("application/vobsub")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1668750253:
                    if (str.equals("application/x-subrip")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1693976202:
                    if (str.equals("application/ttml+xml")) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    return 2;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    return 1;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    return 2;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    return 1;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    return 2;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return 1;
            }
        }
        u2.g(jb.f("Unsupported MIME type: ", str));
        return 0;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser.Factory
    public final SubtitleParser b(Format format) {
        String str = format.p;
        List list = format.s;
        if (str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1351681404:
                    if (str.equals("application/dvbsubs")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1248334819:
                    if (str.equals("application/pgs")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1026075066:
                    if (str.equals("application/x-mp4-vtt")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1004728940:
                    if (str.equals("text/vtt")) {
                        c = 3;
                        break;
                    }
                    break;
                case 691401887:
                    if (str.equals("application/x-quicktime-tx3g")) {
                        c = 4;
                        break;
                    }
                    break;
                case 822864842:
                    if (str.equals("text/x-ssa")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1157994102:
                    if (str.equals("application/vobsub")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1668750253:
                    if (str.equals("application/x-subrip")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1693976202:
                    if (str.equals("application/ttml+xml")) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return new DvbParser(list);
                case 1:
                    return new PgsParser();
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    return new Mp4WebvttParser();
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    return new WebvttParser();
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    return new Tx3gParser(list);
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    return new SsaParser(list);
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    return new VobsubParser(list);
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return new SubripParser();
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    return new TtmlParser();
            }
        }
        u2.g(jb.f("Unsupported MIME type: ", str));
        return null;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser.Factory
    public final boolean f(Format format) {
        String str = format.p;
        if (!Objects.equals(str, "text/x-ssa") && !Objects.equals(str, "text/vtt") && !Objects.equals(str, "application/x-mp4-vtt") && !Objects.equals(str, "application/x-subrip") && !Objects.equals(str, "application/x-quicktime-tx3g") && !Objects.equals(str, "application/pgs") && !Objects.equals(str, "application/vobsub") && !Objects.equals(str, "application/dvbsubs") && !Objects.equals(str, "application/ttml+xml")) {
            return false;
        }
        return true;
    }
}
