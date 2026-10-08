package androidx.media3.common.text;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Cue {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String H;
    public static final String I;
    public static final String J;
    public static final String K;
    public static final String L;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;
    public final CharSequence a;
    public final Layout.Alignment b;
    public final Layout.Alignment c;
    public final Bitmap d;
    public final float e;
    public final int f;
    public final int g;
    public final float h;
    public final int i;
    public final float j;
    public final float k;
    public final boolean l;
    public final int m;
    public final int n;
    public final float o;
    public final int p;
    public final float q;
    public final int r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public CharSequence a = null;
        public Bitmap b = null;
        public Layout.Alignment c = null;
        public Layout.Alignment d = null;
        public float e = -3.4028235E38f;
        public int f = Integer.MIN_VALUE;
        public int g = Integer.MIN_VALUE;
        public float h = -3.4028235E38f;
        public int i = Integer.MIN_VALUE;
        public int j = Integer.MIN_VALUE;
        public float k = -3.4028235E38f;
        public float l = -3.4028235E38f;
        public float m = -3.4028235E38f;
        public boolean n = false;
        public int o = -16777216;
        public int p = Integer.MIN_VALUE;
        public float q;
        public int r;

        public final Cue a() {
            return new Cue(this.a, this.c, this.d, this.b, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r);
        }

        public final void b(CharSequence charSequence) {
            this.a = charSequence;
            this.b = null;
        }
    }

    static {
        Builder builder = new Builder();
        builder.a = "";
        builder.b = null;
        builder.a();
        String str = Util.a;
        s = Integer.toString(0, 36);
        t = Integer.toString(17, 36);
        u = Integer.toString(1, 36);
        v = Integer.toString(2, 36);
        w = Integer.toString(3, 36);
        x = Integer.toString(18, 36);
        y = Integer.toString(4, 36);
        z = Integer.toString(5, 36);
        A = Integer.toString(6, 36);
        B = Integer.toString(7, 36);
        C = Integer.toString(8, 36);
        D = Integer.toString(9, 36);
        E = Integer.toString(10, 36);
        F = Integer.toString(11, 36);
        G = Integer.toString(12, 36);
        H = Integer.toString(13, 36);
        I = Integer.toString(14, 36);
        J = Integer.toString(15, 36);
        K = Integer.toString(16, 36);
        L = Integer.toString(19, 36);
    }

    public Cue(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z2, int i5, int i6, float f6, int i7) {
        boolean z3;
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            if (bitmap == null) {
                z3 = true;
            } else {
                z3 = false;
            }
            Preconditions.e(z3);
        }
        if (charSequence instanceof Spanned) {
            this.a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.a = charSequence.toString();
        } else {
            this.a = null;
        }
        this.b = alignment;
        this.c = alignment2;
        this.d = bitmap;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = f2;
        this.i = i3;
        this.j = f4;
        this.k = f5;
        this.l = z2;
        this.m = i5;
        this.n = i4;
        this.o = f3;
        this.p = i6;
        this.q = f6;
        this.r = i7;
    }

    public static Cue b(Bundle bundle) {
        Builder builder = new Builder();
        CharSequence charSequence = bundle.getCharSequence(s);
        if (charSequence != null) {
            builder.b(charSequence);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(t);
            if (parcelableArrayList != null) {
                SpannableString valueOf = SpannableString.valueOf(charSequence);
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    Bundle bundle2 = (Bundle) it.next();
                    int i = bundle2.getInt(CustomSpanBundler.a);
                    int i2 = bundle2.getInt(CustomSpanBundler.b);
                    int i3 = bundle2.getInt(CustomSpanBundler.c);
                    int i4 = bundle2.getInt(CustomSpanBundler.d, -1);
                    Bundle bundle3 = bundle2.getBundle(CustomSpanBundler.e);
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (i4 == 4) {
                                    bundle3.getClass();
                                    String string = bundle3.getString(VoiceSpan.b);
                                    string.getClass();
                                    valueOf.setSpan(new VoiceSpan(string), i, i2, i3);
                                }
                            } else {
                                valueOf.setSpan(new Object(), i, i2, i3);
                            }
                        } else {
                            bundle3.getClass();
                            valueOf.setSpan(new TextEmphasisSpan(bundle3.getInt(TextEmphasisSpan.d), bundle3.getInt(TextEmphasisSpan.e), bundle3.getInt(TextEmphasisSpan.f)), i, i2, i3);
                        }
                    } else {
                        bundle3.getClass();
                        String string2 = bundle3.getString(RubySpan.c);
                        string2.getClass();
                        valueOf.setSpan(new RubySpan(string2, bundle3.getInt(RubySpan.d)), i, i2, i3);
                    }
                }
                builder.b(valueOf);
            }
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(u);
        if (alignment != null) {
            builder.c = alignment;
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(v);
        if (alignment2 != null) {
            builder.d = alignment2;
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(w);
        if (bitmap != null) {
            builder.b = bitmap;
            builder.a = null;
        } else {
            byte[] byteArray = bundle.getByteArray(x);
            if (byteArray != null) {
                builder.b = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                builder.a = null;
            }
        }
        String str = y;
        if (bundle.containsKey(str)) {
            String str2 = z;
            if (bundle.containsKey(str2)) {
                float f = bundle.getFloat(str);
                int i5 = bundle.getInt(str2);
                builder.e = f;
                builder.f = i5;
            }
        }
        String str3 = A;
        if (bundle.containsKey(str3)) {
            builder.g = bundle.getInt(str3);
        }
        String str4 = B;
        if (bundle.containsKey(str4)) {
            builder.h = bundle.getFloat(str4);
        }
        String str5 = C;
        if (bundle.containsKey(str5)) {
            builder.i = bundle.getInt(str5);
        }
        String str6 = E;
        if (bundle.containsKey(str6)) {
            String str7 = D;
            if (bundle.containsKey(str7)) {
                float f2 = bundle.getFloat(str6);
                int i6 = bundle.getInt(str7);
                builder.k = f2;
                builder.j = i6;
            }
        }
        String str8 = F;
        if (bundle.containsKey(str8)) {
            builder.l = bundle.getFloat(str8);
        }
        String str9 = G;
        if (bundle.containsKey(str9)) {
            builder.m = bundle.getFloat(str9);
        }
        String str10 = H;
        if (bundle.containsKey(str10)) {
            builder.o = bundle.getInt(str10);
            builder.n = true;
        }
        if (!bundle.getBoolean(I, false)) {
            builder.n = false;
        }
        String str11 = J;
        if (bundle.containsKey(str11)) {
            builder.p = bundle.getInt(str11);
        }
        String str12 = K;
        if (bundle.containsKey(str12)) {
            builder.q = bundle.getFloat(str12);
        }
        String str13 = L;
        if (bundle.containsKey(str13)) {
            builder.r = bundle.getInt(str13);
        }
        return builder.a();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.text.Cue$Builder, java.lang.Object] */
    public final Builder a() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.d;
        obj.c = this.b;
        obj.d = this.c;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.n;
        obj.k = this.o;
        obj.l = this.j;
        obj.m = this.k;
        obj.n = this.l;
        obj.o = this.m;
        obj.p = this.p;
        obj.q = this.q;
        obj.r = this.r;
        return obj;
    }

    public final Bundle c() {
        Bundle bundle = new Bundle();
        CharSequence charSequence = this.a;
        if (charSequence != null) {
            bundle.putCharSequence(s, charSequence);
            if (charSequence instanceof Spanned) {
                Spanned spanned = (Spanned) charSequence;
                String str = CustomSpanBundler.a;
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                for (RubySpan rubySpan : (RubySpan[]) spanned.getSpans(0, spanned.length(), RubySpan.class)) {
                    rubySpan.getClass();
                    Bundle bundle2 = new Bundle();
                    bundle2.putString(RubySpan.c, rubySpan.a);
                    bundle2.putInt(RubySpan.d, rubySpan.b);
                    arrayList.add(CustomSpanBundler.a(spanned, rubySpan, 1, bundle2));
                }
                for (TextEmphasisSpan textEmphasisSpan : (TextEmphasisSpan[]) spanned.getSpans(0, spanned.length(), TextEmphasisSpan.class)) {
                    textEmphasisSpan.getClass();
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(TextEmphasisSpan.d, textEmphasisSpan.a);
                    bundle3.putInt(TextEmphasisSpan.e, textEmphasisSpan.b);
                    bundle3.putInt(TextEmphasisSpan.f, textEmphasisSpan.c);
                    arrayList.add(CustomSpanBundler.a(spanned, textEmphasisSpan, 2, bundle3));
                }
                for (HorizontalTextInVerticalContextSpan horizontalTextInVerticalContextSpan : (HorizontalTextInVerticalContextSpan[]) spanned.getSpans(0, spanned.length(), HorizontalTextInVerticalContextSpan.class)) {
                    arrayList.add(CustomSpanBundler.a(spanned, horizontalTextInVerticalContextSpan, 3, null));
                }
                for (VoiceSpan voiceSpan : (VoiceSpan[]) spanned.getSpans(0, spanned.length(), VoiceSpan.class)) {
                    voiceSpan.getClass();
                    Bundle bundle4 = new Bundle();
                    bundle4.putString(VoiceSpan.b, voiceSpan.a);
                    arrayList.add(CustomSpanBundler.a(spanned, voiceSpan, 4, bundle4));
                }
                if (!arrayList.isEmpty()) {
                    bundle.putParcelableArrayList(t, arrayList);
                }
            }
        }
        bundle.putSerializable(u, this.b);
        bundle.putSerializable(v, this.c);
        bundle.putFloat(y, this.e);
        bundle.putInt(z, this.f);
        bundle.putInt(A, this.g);
        bundle.putFloat(B, this.h);
        bundle.putInt(C, this.i);
        bundle.putInt(D, this.n);
        bundle.putFloat(E, this.o);
        bundle.putFloat(F, this.j);
        bundle.putFloat(G, this.k);
        bundle.putBoolean(I, this.l);
        bundle.putInt(H, this.m);
        bundle.putInt(J, this.p);
        bundle.putFloat(K, this.q);
        bundle.putInt(L, this.r);
        Bitmap bitmap = this.d;
        if (bitmap != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Preconditions.n(bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
            bundle.putByteArray(x, byteArrayOutputStream.toByteArray());
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && Cue.class == obj.getClass()) {
                Cue cue = (Cue) obj;
                if (TextUtils.equals(this.a, cue.a) && this.b == cue.b && this.c == cue.c) {
                    Bitmap bitmap = cue.d;
                    Bitmap bitmap2 = this.d;
                    if (bitmap2 == null) {
                        if (bitmap != null) {
                            return false;
                        }
                    } else if (bitmap == null || !bitmap2.sameAs(bitmap)) {
                        return false;
                    }
                    if (this.e == cue.e && this.f == cue.f && this.g == cue.g && this.h == cue.h && this.i == cue.i && this.j == cue.j && this.k == cue.k && this.l == cue.l && this.m == cue.m && this.n == cue.n && this.o == cue.o && this.p == cue.p && this.q == cue.q && this.r == cue.r) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, Float.valueOf(this.e), Integer.valueOf(this.f), Integer.valueOf(this.g), Float.valueOf(this.h), Integer.valueOf(this.i), Float.valueOf(this.j), Float.valueOf(this.k), Boolean.valueOf(this.l), Integer.valueOf(this.m), Integer.valueOf(this.n), Float.valueOf(this.o), Integer.valueOf(this.p), Float.valueOf(this.q), Integer.valueOf(this.r));
    }
}
