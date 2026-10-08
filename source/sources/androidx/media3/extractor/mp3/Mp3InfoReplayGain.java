package androidx.media3.extractor.mp3;

import androidx.media3.common.Metadata;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Mp3InfoReplayGain implements Metadata.Entry {
    public final float a;
    public final GainField b;
    public final GainField c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class GainField {
        public final int a;
        public final int b;
        public final float c;

        public GainField(float f, int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = f;
        }

        public static GainField a(int i) {
            int i2;
            int i3 = (i >> 13) & 7;
            if (i3 == 0) {
                return null;
            }
            int i4 = (i >> 10) & 7;
            int i5 = i & 511;
            if ((i & 512) != 0) {
                i2 = -1;
            } else {
                i2 = 1;
            }
            return new GainField((i5 * i2) / 10.0f, i3, i4);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof GainField)) {
                return false;
            }
            GainField gainField = (GainField) obj;
            if (this.a != gainField.a || this.b != gainField.b || Float.compare(this.c, gainField.c) != 0) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Float.hashCode(this.c) + (((this.a * 31) + this.b) * 31);
        }

        public final String toString() {
            return "GainField{name=" + this.a + ", originator=" + this.b + ", gain=" + this.c + '}';
        }
    }

    public Mp3InfoReplayGain(float f, GainField gainField, GainField gainField2) {
        this.a = f;
        this.b = gainField;
        this.c = gainField2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Mp3InfoReplayGain)) {
            return false;
        }
        Mp3InfoReplayGain mp3InfoReplayGain = (Mp3InfoReplayGain) obj;
        if (Float.compare(this.a, mp3InfoReplayGain.a) != 0 || !Objects.equals(this.b, mp3InfoReplayGain.b) || !Objects.equals(this.c, mp3InfoReplayGain.c)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = Float.hashCode(this.a) * 31;
        int i2 = 0;
        GainField gainField = this.b;
        if (gainField != null) {
            i = gainField.hashCode();
        } else {
            i = 0;
        }
        int i3 = (hashCode + i) * 31;
        GainField gainField2 = this.c;
        if (gainField2 != null) {
            i2 = gainField2.hashCode();
        }
        return i3 + i2;
    }

    public final String toString() {
        return "ReplayGain Xing/Info: peak=" + this.a + ", field 1=" + this.b + ", field 2=" + this.c;
    }
}
