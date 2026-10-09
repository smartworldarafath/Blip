package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.FileTypes;
import androidx.media3.common.MimeTypes;
import androidx.media3.datasource.DataSource;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorOutput;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import defpackage.u2;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {
    public final DefaultExtractorsFactory a;
    public Extractor b;
    public DefaultExtractorInput c;

    public BundledExtractorsAdapter(DefaultExtractorsFactory defaultExtractorsFactory) {
        this.a = defaultExtractorsFactory;
    }

    public final long a() {
        DefaultExtractorInput defaultExtractorInput = this.c;
        if (defaultExtractorInput != null) {
            return defaultExtractorInput.d;
        }
        return -1L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x02b0, code lost:
    
        if (r2.d != r33) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x02b3, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02d6, code lost:
    
        if (r2.d != r33) goto L206;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0257 A[Catch: all -> 0x025b, TRY_ENTER, TryCatch #1 {all -> 0x025b, blocks: (B:8:0x0017, B:10:0x002d, B:13:0x0034, B:19:0x0257, B:20:0x025e, B:23:0x0266, B:26:0x026c, B:29:0x0272, B:31:0x0275, B:35:0x0278, B:79:0x0044), top: B:7:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0264 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x026c A[Catch: all -> 0x025b, TryCatch #1 {all -> 0x025b, blocks: (B:8:0x0017, B:10:0x002d, B:13:0x0034, B:19:0x0257, B:20:0x025e, B:23:0x0266, B:26:0x026c, B:29:0x0272, B:31:0x0275, B:35:0x0278, B:79:0x0044), top: B:7:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0044 A[Catch: all -> 0x025b, TRY_LEAVE, TryCatch #1 {all -> 0x025b, blocks: (B:8:0x0017, B:10:0x002d, B:13:0x0034, B:19:0x0257, B:20:0x025e, B:23:0x0266, B:26:0x026c, B:29:0x0272, B:31:0x0275, B:35:0x0278, B:79:0x0044), top: B:7:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(DataSource dataSource, Uri uri, Map map, long j, long j2, ExtractorOutput extractorOutput) {
        String str;
        boolean z;
        int i;
        char c;
        int a;
        int i2;
        Extractor[] extractorArr;
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, j, j2);
        this.c = defaultExtractorInput;
        if (this.b != null) {
            return;
        }
        DefaultExtractorsFactory defaultExtractorsFactory = this.a;
        synchronized (defaultExtractorsFactory) {
            try {
                int[] iArr = DefaultExtractorsFactory.c;
                ArrayList arrayList = new ArrayList(21);
                List list = (List) map.get("Content-Type");
                if (list != null && !list.isEmpty()) {
                    str = (String) list.get(0);
                    z = true;
                    if (str == null) {
                        String l = MimeTypes.l(str);
                        l.getClass();
                        i = 20;
                        switch (l.hashCode()) {
                            case -2123537834:
                                if (l.equals("audio/eac3-joc")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1662384011:
                                if (l.equals("video/mp2p")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1662384007:
                                if (l.equals("video/mp2t")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1662095187:
                                if (l.equals("video/webm")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1606874997:
                                if (l.equals("audio/amr-wb")) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1487656890:
                                if (l.equals("image/avif")) {
                                    c = 5;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1487464693:
                                if (l.equals("image/heic")) {
                                    c = 6;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1487464690:
                                if (l.equals("image/heif")) {
                                    c = 7;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1487394660:
                                if (l.equals("image/jpeg")) {
                                    c = '\b';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1487018032:
                                if (l.equals("image/webp")) {
                                    c = '\t';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1248337486:
                                if (l.equals("application/mp4")) {
                                    c = '\n';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1079884372:
                                if (l.equals("video/x-msvideo")) {
                                    c = 11;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1004728940:
                                if (l.equals("text/vtt")) {
                                    c = '\f';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -879272239:
                                if (l.equals("image/bmp")) {
                                    c = '\r';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -879258763:
                                if (l.equals("image/png")) {
                                    c = 14;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -387023398:
                                if (l.equals("audio/x-matroska")) {
                                    c = 15;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -43467528:
                                if (l.equals("application/webm")) {
                                    c = 16;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 13915911:
                                if (l.equals("video/x-flv")) {
                                    c = 17;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187078296:
                                if (l.equals("audio/ac3")) {
                                    c = 18;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187078297:
                                if (l.equals("audio/ac4")) {
                                    c = 19;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187078669:
                                if (l.equals("audio/amr")) {
                                    c = 20;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187090232:
                                if (l.equals("audio/mp4")) {
                                    c = 21;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187091926:
                                if (l.equals("audio/ogg")) {
                                    c = 22;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187099443:
                                if (l.equals("audio/wav")) {
                                    c = 23;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1331848029:
                                if (l.equals("video/mp4")) {
                                    c = 24;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1503095341:
                                if (l.equals("audio/3gpp")) {
                                    c = 25;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1504578661:
                                if (l.equals("audio/eac3")) {
                                    c = 26;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1504619009:
                                if (l.equals("audio/flac")) {
                                    c = 27;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1504824762:
                                if (l.equals("audio/midi")) {
                                    c = 28;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1504831518:
                                if (l.equals("audio/mpeg")) {
                                    c = 29;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1505118770:
                                if (l.equals("audio/webm")) {
                                    c = 30;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 2039520277:
                                if (l.equals("video/x-matroska")) {
                                    c = 31;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                            case 18:
                            case 26:
                                i = 0;
                                break;
                            case 1:
                                i = 10;
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                i = 11;
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            case 15:
                            case 16:
                            case 30:
                            case 31:
                                i = 6;
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            case 20:
                            case 25:
                                i = 3;
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                i = 21;
                                break;
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                i = 14;
                                break;
                            case KeyModifiers.a /* 9 */:
                                i = 18;
                                break;
                            case KeyModifiers.b /* 10 */:
                            case 21:
                            case 24:
                                i = 8;
                                break;
                            case 11:
                                i = 16;
                                break;
                            case KeyModifiers.c /* 12 */:
                                i = 13;
                                break;
                            case '\r':
                                i = 19;
                                break;
                            case 14:
                                i = 17;
                                break;
                            case 17:
                                i = 5;
                                break;
                            case 19:
                                i = 1;
                                break;
                            case 22:
                                i = 9;
                                break;
                            case 23:
                                i = 12;
                                break;
                            case 27:
                                i = 4;
                                break;
                            case 28:
                                i = 15;
                                break;
                            case 29:
                                i = 7;
                                break;
                        }
                        if (i != -1) {
                            defaultExtractorsFactory.a(i, arrayList);
                        }
                        a = FileTypes.a(uri);
                        if (a != -1 && a != i) {
                            defaultExtractorsFactory.a(a, arrayList);
                        }
                        for (i2 = 0; i2 < 21; i2++) {
                            int i3 = iArr[i2];
                            if (i3 != i && i3 != a) {
                                defaultExtractorsFactory.a(i3, arrayList);
                            }
                        }
                        extractorArr = (Extractor[]) arrayList.toArray(new Extractor[0]);
                    }
                    i = -1;
                    if (i != -1) {
                    }
                    a = FileTypes.a(uri);
                    if (a != -1) {
                        defaultExtractorsFactory.a(a, arrayList);
                    }
                    while (i2 < 21) {
                    }
                    extractorArr = (Extractor[]) arrayList.toArray(new Extractor[0]);
                }
                str = null;
                z = true;
                if (str == null) {
                }
                i = -1;
                if (i != -1) {
                }
                a = FileTypes.a(uri);
                if (a != -1) {
                }
                while (i2 < 21) {
                }
                extractorArr = (Extractor[]) arrayList.toArray(new Extractor[0]);
            } catch (Throwable th) {
                throw th;
            }
        }
        ImmutableList.Builder l2 = ImmutableList.l(extractorArr.length);
        if (extractorArr.length == 1) {
            this.b = extractorArr[0];
        } else {
            int length = extractorArr.length;
            int i4 = 0;
            while (true) {
                if (i4 < length) {
                    Extractor extractor = extractorArr[i4];
                    try {
                    } catch (EOFException unused) {
                        if (this.b == null) {
                        }
                    } catch (Throwable th2) {
                        if (this.b == null && defaultExtractorInput.d != j) {
                            z = false;
                        }
                        Preconditions.n(z);
                        defaultExtractorInput.f = 0;
                        throw th2;
                    }
                    if (extractor.b(defaultExtractorInput)) {
                        this.b = extractor;
                        defaultExtractorInput.f = 0;
                    } else {
                        l2.f(extractor.e());
                        if (this.b == null) {
                        }
                        boolean z2 = true;
                        Preconditions.n(z2);
                        defaultExtractorInput.f = 0;
                        i4++;
                    }
                }
            }
            if (this.b == null) {
                StringBuilder sb = new StringBuilder("None of the available extractors (");
                Joiner joiner = new Joiner(", ");
                Iterator it = Lists.b(ImmutableList.o(extractorArr), new u2(8)).iterator();
                StringBuilder sb2 = new StringBuilder();
                joiner.a(sb2, it);
                sb.append(sb2.toString());
                sb.append(") could read the stream.");
                throw new UnrecognizedInputFormatException(sb.toString(), l2.i());
            }
        }
        this.b.d(extractorOutput);
    }
}
