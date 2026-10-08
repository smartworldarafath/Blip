package androidx.media3.common;

import android.text.TextUtils;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import defpackage.q;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaMetadata {
    public static final MediaMetadata C;
    public final Integer A;
    public final ImmutableList B;
    public final CharSequence a;
    public final CharSequence b;
    public final CharSequence c;
    public final CharSequence d;
    public final CharSequence e;
    public final byte[] f;
    public final Integer g;
    public final Integer h;
    public final Integer i;
    public final Integer j;
    public final Boolean k;
    public final Integer l;
    public final Integer m;
    public final Integer n;
    public final Integer o;
    public final Integer p;
    public final Integer q;
    public final Integer r;
    public final CharSequence s;
    public final CharSequence t;
    public final CharSequence u;
    public final CharSequence v;
    public final Integer w;
    public final Integer x;
    public final CharSequence y;
    public final CharSequence z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public ImmutableList A;
        public CharSequence a;
        public CharSequence b;
        public CharSequence c;
        public CharSequence d;
        public CharSequence e;
        public byte[] f;
        public Integer g;
        public Integer h;
        public Integer i;
        public Integer j;
        public Boolean k;
        public Integer l;
        public Integer m;
        public Integer n;
        public Integer o;
        public Integer p;
        public Integer q;
        public CharSequence r;
        public CharSequence s;
        public CharSequence t;
        public CharSequence u;
        public Integer v;
        public Integer w;
        public CharSequence x;
        public CharSequence y;
        public Integer z;

        public final void a(int i, byte[] bArr) {
            if (this.f != null && i != 3 && Objects.equals(this.g, 3)) {
                return;
            }
            this.f = (byte[]) bArr.clone();
            this.g = Integer.valueOf(i);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.MediaMetadata$Builder, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.A = ImmutableList.r();
        C = new MediaMetadata(obj);
        q.q(0, 1, 2, 3, 4);
        q.q(5, 6, 8, 9, 10);
        q.q(11, 12, 13, 14, 15);
        q.q(16, 17, 18, 19, 20);
        q.q(21, 22, 23, 24, 25);
        q.q(26, 27, 28, 29, 30);
        q.q(31, 32, 33, 34, 35);
        Util.z(1000);
    }

    public MediaMetadata(Builder builder) {
        Boolean bool = builder.k;
        Integer num = builder.j;
        Integer num2 = builder.z;
        int i = 1;
        int i2 = 0;
        if (bool != null) {
            if (!bool.booleanValue()) {
                num = -1;
            } else if (num == null || num.intValue() == -1) {
                if (num2 != null) {
                    switch (num2.intValue()) {
                        case 1:
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        case KeyModifiers.a /* 9 */:
                        case KeyModifiers.b /* 10 */:
                        case 11:
                        case KeyModifiers.c /* 12 */:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                            break;
                        case 20:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        default:
                            i = 0;
                            break;
                        case 21:
                            i = 2;
                            break;
                        case 22:
                            i = 3;
                            break;
                        case 23:
                            i = 4;
                            break;
                        case 24:
                            i = 5;
                            break;
                        case 25:
                            i = 6;
                            break;
                    }
                    i2 = i;
                }
                num = Integer.valueOf(i2);
            }
        } else if (num != null) {
            boolean z = num.intValue() != -1;
            bool = Boolean.valueOf(z);
            if (z && num2 == null) {
                switch (num.intValue()) {
                    case 1:
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        i2 = 21;
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        i2 = 22;
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        i2 = 23;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        i2 = 24;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        i2 = 25;
                        break;
                    default:
                        i2 = 20;
                        break;
                }
                num2 = Integer.valueOf(i2);
            }
        }
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
        this.j = num;
        this.k = bool;
        Integer num3 = builder.l;
        this.l = num3;
        this.m = num3;
        this.n = builder.m;
        this.o = builder.n;
        this.p = builder.o;
        this.q = builder.p;
        this.r = builder.q;
        this.s = builder.r;
        this.t = builder.s;
        this.u = builder.t;
        this.v = builder.u;
        this.w = builder.v;
        this.x = builder.w;
        this.y = builder.x;
        this.z = builder.y;
        this.A = num2;
        this.B = builder.A;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.MediaMetadata$Builder, java.lang.Object] */
    public final Builder a() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.m;
        obj.m = this.n;
        obj.n = this.o;
        obj.o = this.p;
        obj.p = this.q;
        obj.q = this.r;
        obj.r = this.s;
        obj.s = this.t;
        obj.t = this.u;
        obj.v = this.w;
        obj.u = this.v;
        obj.w = this.x;
        obj.x = this.y;
        obj.y = this.z;
        obj.z = this.A;
        obj.A = this.B;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && MediaMetadata.class == obj.getClass()) {
                MediaMetadata mediaMetadata = (MediaMetadata) obj;
                if (TextUtils.equals(this.a, mediaMetadata.a) && TextUtils.equals(this.b, mediaMetadata.b) && TextUtils.equals(this.c, mediaMetadata.c) && TextUtils.equals(this.d, mediaMetadata.d) && TextUtils.equals(null, null) && TextUtils.equals(null, null) && TextUtils.equals(this.e, mediaMetadata.e) && Arrays.equals(this.f, mediaMetadata.f) && Objects.equals(this.g, mediaMetadata.g) && Objects.equals(this.h, mediaMetadata.h) && Objects.equals(this.i, mediaMetadata.i) && Objects.equals(this.j, mediaMetadata.j) && Objects.equals(this.k, mediaMetadata.k) && Objects.equals(this.m, mediaMetadata.m) && Objects.equals(this.n, mediaMetadata.n) && Objects.equals(this.o, mediaMetadata.o) && Objects.equals(this.p, mediaMetadata.p) && Objects.equals(this.q, mediaMetadata.q) && Objects.equals(this.r, mediaMetadata.r) && TextUtils.equals(this.s, mediaMetadata.s) && TextUtils.equals(this.t, mediaMetadata.t) && TextUtils.equals(this.u, mediaMetadata.u) && TextUtils.equals(this.v, mediaMetadata.v) && Objects.equals(this.w, mediaMetadata.w) && Objects.equals(this.x, mediaMetadata.x) && TextUtils.equals(this.y, mediaMetadata.y) && TextUtils.equals(null, null) && TextUtils.equals(this.z, mediaMetadata.z) && Objects.equals(this.A, mediaMetadata.A) && Objects.equals(this.B, mediaMetadata.B)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, null, null, this.e, null, null, null, Integer.valueOf(Arrays.hashCode(this.f)), this.g, null, this.h, this.i, this.j, this.k, null, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, this.y, null, this.z, this.A, true, this.B);
    }
}
