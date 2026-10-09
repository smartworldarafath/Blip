package io.ktor.http;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.fe;
import defpackage.q;
import defpackage.tg;
import defpackage.y4;
import io.ktor.http.Url;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.serialization.KSerializer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Url implements Serializable {
    public static final Companion Companion = new Object();
    public final String j;
    public final int k;
    public final String l;
    public final String m;
    public final String n;
    public final URLProtocol o;
    public final URLProtocol p;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public final KSerializer<Url> serializer() {
            return UrlSerializer.a;
        }
    }

    public Url(URLProtocol uRLProtocol, String str, int i, ArrayList arrayList, Parameters parameters, String str2, String str3, String str4, String str5) {
        str.getClass();
        parameters.getClass();
        str2.getClass();
        this.j = str;
        this.k = i;
        this.l = str3;
        this.m = str4;
        this.n = str5;
        if (i >= 0 && i < 65536) {
            final int i2 = 1;
            LazyKt.b(new y4(1, arrayList));
            this.o = uRLProtocol;
            this.p = uRLProtocol == null ? URLProtocol.l : uRLProtocol;
            final int i3 = 4;
            LazyKt.b(new tg(i3, arrayList, this));
            final int i4 = 0;
            LazyKt.b(new Function0(this) { // from class: ei
                public final /* synthetic */ Url k;

                {
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int d;
                    int i5 = i4;
                    Url url = this.k;
                    switch (i5) {
                        case 0:
                            String str6 = url.n;
                            int q = StringsKt.q(str6, '?', 0, 6) + 1;
                            if (q == 0) {
                                return "";
                            }
                            int q2 = StringsKt.q(str6, '#', q, 4);
                            if (q2 == -1) {
                                return str6.substring(q);
                            }
                            return str6.substring(q, q2);
                        case 1:
                            String str7 = url.n;
                            int q3 = StringsKt.q(str7, '/', url.p.j.length() + 3, 4);
                            if (q3 == -1) {
                                return "";
                            }
                            int q4 = StringsKt.q(str7, '#', q3, 4);
                            if (q4 == -1) {
                                return str7.substring(q3);
                            }
                            return str7.substring(q3, q4);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            String str8 = url.n;
                            String str9 = url.l;
                            if (str9 == null) {
                                return null;
                            }
                            if (str9.length() == 0) {
                                return "";
                            }
                            int length = url.p.j.length() + 3;
                            d = StringsKt__StringsKt.d(str8, new char[]{':', '@'}, length, false);
                            return str8.substring(length, d);
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            String str10 = url.n;
                            String str11 = url.m;
                            if (str11 == null) {
                                return null;
                            }
                            if (str11.length() == 0) {
                                return "";
                            }
                            return str10.substring(StringsKt.q(str10, ':', url.p.j.length() + 3, 4) + 1, StringsKt.q(str10, '@', 0, 6));
                        default:
                            String str12 = url.n;
                            int q5 = StringsKt.q(str12, '#', 0, 6) + 1;
                            if (q5 == 0) {
                                return "";
                            }
                            return str12.substring(q5);
                    }
                }
            });
            LazyKt.b(new Function0(this) { // from class: ei
                public final /* synthetic */ Url k;

                {
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int d;
                    int i5 = i2;
                    Url url = this.k;
                    switch (i5) {
                        case 0:
                            String str6 = url.n;
                            int q = StringsKt.q(str6, '?', 0, 6) + 1;
                            if (q == 0) {
                                return "";
                            }
                            int q2 = StringsKt.q(str6, '#', q, 4);
                            if (q2 == -1) {
                                return str6.substring(q);
                            }
                            return str6.substring(q, q2);
                        case 1:
                            String str7 = url.n;
                            int q3 = StringsKt.q(str7, '/', url.p.j.length() + 3, 4);
                            if (q3 == -1) {
                                return "";
                            }
                            int q4 = StringsKt.q(str7, '#', q3, 4);
                            if (q4 == -1) {
                                return str7.substring(q3);
                            }
                            return str7.substring(q3, q4);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            String str8 = url.n;
                            String str9 = url.l;
                            if (str9 == null) {
                                return null;
                            }
                            if (str9.length() == 0) {
                                return "";
                            }
                            int length = url.p.j.length() + 3;
                            d = StringsKt__StringsKt.d(str8, new char[]{':', '@'}, length, false);
                            return str8.substring(length, d);
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            String str10 = url.n;
                            String str11 = url.m;
                            if (str11 == null) {
                                return null;
                            }
                            if (str11.length() == 0) {
                                return "";
                            }
                            return str10.substring(StringsKt.q(str10, ':', url.p.j.length() + 3, 4) + 1, StringsKt.q(str10, '@', 0, 6));
                        default:
                            String str12 = url.n;
                            int q5 = StringsKt.q(str12, '#', 0, 6) + 1;
                            if (q5 == 0) {
                                return "";
                            }
                            return str12.substring(q5);
                    }
                }
            });
            final int i5 = 2;
            LazyKt.b(new Function0(this) { // from class: ei
                public final /* synthetic */ Url k;

                {
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int d;
                    int i52 = i5;
                    Url url = this.k;
                    switch (i52) {
                        case 0:
                            String str6 = url.n;
                            int q = StringsKt.q(str6, '?', 0, 6) + 1;
                            if (q == 0) {
                                return "";
                            }
                            int q2 = StringsKt.q(str6, '#', q, 4);
                            if (q2 == -1) {
                                return str6.substring(q);
                            }
                            return str6.substring(q, q2);
                        case 1:
                            String str7 = url.n;
                            int q3 = StringsKt.q(str7, '/', url.p.j.length() + 3, 4);
                            if (q3 == -1) {
                                return "";
                            }
                            int q4 = StringsKt.q(str7, '#', q3, 4);
                            if (q4 == -1) {
                                return str7.substring(q3);
                            }
                            return str7.substring(q3, q4);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            String str8 = url.n;
                            String str9 = url.l;
                            if (str9 == null) {
                                return null;
                            }
                            if (str9.length() == 0) {
                                return "";
                            }
                            int length = url.p.j.length() + 3;
                            d = StringsKt__StringsKt.d(str8, new char[]{':', '@'}, length, false);
                            return str8.substring(length, d);
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            String str10 = url.n;
                            String str11 = url.m;
                            if (str11 == null) {
                                return null;
                            }
                            if (str11.length() == 0) {
                                return "";
                            }
                            return str10.substring(StringsKt.q(str10, ':', url.p.j.length() + 3, 4) + 1, StringsKt.q(str10, '@', 0, 6));
                        default:
                            String str12 = url.n;
                            int q5 = StringsKt.q(str12, '#', 0, 6) + 1;
                            if (q5 == 0) {
                                return "";
                            }
                            return str12.substring(q5);
                    }
                }
            });
            final int i6 = 3;
            LazyKt.b(new Function0(this) { // from class: ei
                public final /* synthetic */ Url k;

                {
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int d;
                    int i52 = i6;
                    Url url = this.k;
                    switch (i52) {
                        case 0:
                            String str6 = url.n;
                            int q = StringsKt.q(str6, '?', 0, 6) + 1;
                            if (q == 0) {
                                return "";
                            }
                            int q2 = StringsKt.q(str6, '#', q, 4);
                            if (q2 == -1) {
                                return str6.substring(q);
                            }
                            return str6.substring(q, q2);
                        case 1:
                            String str7 = url.n;
                            int q3 = StringsKt.q(str7, '/', url.p.j.length() + 3, 4);
                            if (q3 == -1) {
                                return "";
                            }
                            int q4 = StringsKt.q(str7, '#', q3, 4);
                            if (q4 == -1) {
                                return str7.substring(q3);
                            }
                            return str7.substring(q3, q4);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            String str8 = url.n;
                            String str9 = url.l;
                            if (str9 == null) {
                                return null;
                            }
                            if (str9.length() == 0) {
                                return "";
                            }
                            int length = url.p.j.length() + 3;
                            d = StringsKt__StringsKt.d(str8, new char[]{':', '@'}, length, false);
                            return str8.substring(length, d);
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            String str10 = url.n;
                            String str11 = url.m;
                            if (str11 == null) {
                                return null;
                            }
                            if (str11.length() == 0) {
                                return "";
                            }
                            return str10.substring(StringsKt.q(str10, ':', url.p.j.length() + 3, 4) + 1, StringsKt.q(str10, '@', 0, 6));
                        default:
                            String str12 = url.n;
                            int q5 = StringsKt.q(str12, '#', 0, 6) + 1;
                            if (q5 == 0) {
                                return "";
                            }
                            return str12.substring(q5);
                    }
                }
            });
            LazyKt.b(new Function0(this) { // from class: ei
                public final /* synthetic */ Url k;

                {
                    this.k = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    int d;
                    int i52 = i3;
                    Url url = this.k;
                    switch (i52) {
                        case 0:
                            String str6 = url.n;
                            int q = StringsKt.q(str6, '?', 0, 6) + 1;
                            if (q == 0) {
                                return "";
                            }
                            int q2 = StringsKt.q(str6, '#', q, 4);
                            if (q2 == -1) {
                                return str6.substring(q);
                            }
                            return str6.substring(q, q2);
                        case 1:
                            String str7 = url.n;
                            int q3 = StringsKt.q(str7, '/', url.p.j.length() + 3, 4);
                            if (q3 == -1) {
                                return "";
                            }
                            int q4 = StringsKt.q(str7, '#', q3, 4);
                            if (q4 == -1) {
                                return str7.substring(q3);
                            }
                            return str7.substring(q3, q4);
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            String str8 = url.n;
                            String str9 = url.l;
                            if (str9 == null) {
                                return null;
                            }
                            if (str9.length() == 0) {
                                return "";
                            }
                            int length = url.p.j.length() + 3;
                            d = StringsKt__StringsKt.d(str8, new char[]{':', '@'}, length, false);
                            return str8.substring(length, d);
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            String str10 = url.n;
                            String str11 = url.m;
                            if (str11 == null) {
                                return null;
                            }
                            if (str11.length() == 0) {
                                return "";
                            }
                            return str10.substring(StringsKt.q(str10, ':', url.p.j.length() + 3, 4) + 1, StringsKt.q(str10, '@', 0, 6));
                        default:
                            String str12 = url.n;
                            int q5 = StringsKt.q(str12, '#', 0, 6) + 1;
                            if (q5 == 0) {
                                return "";
                            }
                            return str12.substring(q5);
                    }
                }
            });
            return;
        }
        fe.l(q.g(i, "Port must be between 0 and 65535, or 0 if not set. Provided: "));
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Url.class == obj.getClass()) {
            return this.n.equals(((Url) obj).n);
        }
        return false;
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final String toString() {
        return this.n;
    }
}
