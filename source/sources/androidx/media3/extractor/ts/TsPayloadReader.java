package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.ExtractorOutput;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface TsPayloadReader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DvbSubtitleInfo {
        public final String a;
        public final byte[] b;

        public DvbSubtitleInfo(String str, byte[] bArr) {
            this.a = str;
            this.b = bArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EsInfo {
        public final int a;
        public final List b;
        public final byte[] c;

        public EsInfo(int i, String str, int i2, ArrayList arrayList, byte[] bArr) {
            List unmodifiableList;
            this.a = i2;
            if (arrayList == null) {
                unmodifiableList = Collections.EMPTY_LIST;
            } else {
                unmodifiableList = Collections.unmodifiableList(arrayList);
            }
            this.b = unmodifiableList;
            this.c = bArr;
        }

        public final int a() {
            int i = this.a;
            if (i != 2) {
                if (i != 3) {
                    return 0;
                }
                return 512;
            }
            return 2048;
        }
    }

    void a();

    void b(int i, ParsableByteArray parsableByteArray);

    void c(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TrackIdGenerator trackIdGenerator);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackIdGenerator {
        public final String a;
        public final int b;
        public final int c;
        public int d;
        public String e;

        public TrackIdGenerator(int i, int i2, int i3) {
            String str;
            if (i == Integer.MIN_VALUE) {
                str = "";
            } else {
                str = i + "/";
            }
            this.a = str;
            this.b = i2;
            this.c = i3;
            this.d = Integer.MIN_VALUE;
            this.e = "";
        }

        public final void a() {
            int i;
            int i2 = this.d;
            if (i2 == Integer.MIN_VALUE) {
                i = this.b;
            } else {
                i = i2 + this.c;
            }
            this.d = i;
            this.e = this.a + this.d;
        }

        public final void b() {
            if (this.d != Integer.MIN_VALUE) {
                return;
            }
            u2.l("generateNewId() must be called before retrieving ids.");
        }

        public TrackIdGenerator(int i, int i2) {
            this(Integer.MIN_VALUE, i, i2);
        }
    }
}
