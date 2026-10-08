package androidx.media3.extractor.metadata.emsg;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import defpackage.jb;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EventMessage implements Metadata.Entry {
    public static final Format g;
    public static final Format h;
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final byte[] e;
    public int f;

    static {
        Format.Builder builder = new Format.Builder();
        builder.o = MimeTypes.l("application/id3");
        g = new Format(builder);
        Format.Builder builder2 = new Format.Builder();
        builder2.o = MimeTypes.l("application/x-scte35");
        h = new Format(builder2);
    }

    public EventMessage(String str, String str2, long j, long j2, byte[] bArr) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = bArr;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final Format a() {
        String str = this.a;
        char c = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals("urn:scte:scte35:2014:bin")) {
                    c = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals("https://aomedia.org/emsg/ID3")) {
                    c = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return h;
            case 1:
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return g;
            default:
                return null;
        }
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final byte[] c() {
        if (a() != null) {
            return this.e;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && EventMessage.class == obj.getClass()) {
                EventMessage eventMessage = (EventMessage) obj;
                if (this.c == eventMessage.c && this.d == eventMessage.d && this.a.equals(eventMessage.a) && this.b.equals(eventMessage.b) && Arrays.equals(this.e, eventMessage.e)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        if (this.f == 0) {
            int c = jb.c(this.b, jb.c(this.a, 527, 31), 31);
            long j = this.c;
            int i = (c + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.d;
            this.f = Arrays.hashCode(this.e) + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        }
        return this.f;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.a + ", id=" + this.d + ", durationMs=" + this.c + ", value=" + this.b;
    }
}
