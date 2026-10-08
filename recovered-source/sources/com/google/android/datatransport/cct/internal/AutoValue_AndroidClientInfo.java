package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.AndroidClientInfo;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_AndroidClientInfo extends AndroidClientInfo {
    public final Integer a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends AndroidClientInfo.Builder {
        public Integer a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
        public String l;

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo a() {
            return new AutoValue_AndroidClientInfo(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder b(String str) {
            this.l = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder c(String str) {
            this.j = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder d(String str) {
            this.d = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder e(String str) {
            this.h = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder f(String str) {
            this.c = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder g(String str) {
            this.i = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder h(String str) {
            this.g = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder i(String str) {
            this.k = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder j(String str) {
            this.b = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder k(String str) {
            this.f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder l(String str) {
            this.e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder m(Integer num) {
            this.a = num;
            return this;
        }
    }

    public AutoValue_AndroidClientInfo(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.a = num;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AndroidClientInfo) {
            AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
            Integer num = this.a;
            if (num != null ? num.equals(((AutoValue_AndroidClientInfo) androidClientInfo).a) : ((AutoValue_AndroidClientInfo) androidClientInfo).a == null) {
                String str = this.b;
                if (str != null ? str.equals(((AutoValue_AndroidClientInfo) androidClientInfo).b) : ((AutoValue_AndroidClientInfo) androidClientInfo).b == null) {
                    String str2 = this.c;
                    if (str2 != null ? str2.equals(((AutoValue_AndroidClientInfo) androidClientInfo).c) : ((AutoValue_AndroidClientInfo) androidClientInfo).c == null) {
                        String str3 = this.d;
                        if (str3 != null ? str3.equals(((AutoValue_AndroidClientInfo) androidClientInfo).d) : ((AutoValue_AndroidClientInfo) androidClientInfo).d == null) {
                            String str4 = this.e;
                            if (str4 != null ? str4.equals(((AutoValue_AndroidClientInfo) androidClientInfo).e) : ((AutoValue_AndroidClientInfo) androidClientInfo).e == null) {
                                String str5 = this.f;
                                if (str5 != null ? str5.equals(((AutoValue_AndroidClientInfo) androidClientInfo).f) : ((AutoValue_AndroidClientInfo) androidClientInfo).f == null) {
                                    String str6 = this.g;
                                    if (str6 != null ? str6.equals(((AutoValue_AndroidClientInfo) androidClientInfo).g) : ((AutoValue_AndroidClientInfo) androidClientInfo).g == null) {
                                        String str7 = this.h;
                                        if (str7 != null ? str7.equals(((AutoValue_AndroidClientInfo) androidClientInfo).h) : ((AutoValue_AndroidClientInfo) androidClientInfo).h == null) {
                                            String str8 = this.i;
                                            if (str8 != null ? str8.equals(((AutoValue_AndroidClientInfo) androidClientInfo).i) : ((AutoValue_AndroidClientInfo) androidClientInfo).i == null) {
                                                String str9 = this.j;
                                                if (str9 != null ? str9.equals(((AutoValue_AndroidClientInfo) androidClientInfo).j) : ((AutoValue_AndroidClientInfo) androidClientInfo).j == null) {
                                                    String str10 = this.k;
                                                    if (str10 != null ? str10.equals(((AutoValue_AndroidClientInfo) androidClientInfo).k) : ((AutoValue_AndroidClientInfo) androidClientInfo).k == null) {
                                                        String str11 = this.l;
                                                        if (str11 != null ? str11.equals(((AutoValue_AndroidClientInfo) androidClientInfo).l) : ((AutoValue_AndroidClientInfo) androidClientInfo).l == null) {
                                                            return true;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int i = 0;
        Integer num = this.a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        String str = this.b;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str2 = this.c;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i4 = (i3 ^ hashCode3) * 1000003;
        String str3 = this.d;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i5 = (i4 ^ hashCode4) * 1000003;
        String str4 = this.e;
        if (str4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str4.hashCode();
        }
        int i6 = (i5 ^ hashCode5) * 1000003;
        String str5 = this.f;
        if (str5 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str5.hashCode();
        }
        int i7 = (i6 ^ hashCode6) * 1000003;
        String str6 = this.g;
        if (str6 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str6.hashCode();
        }
        int i8 = (i7 ^ hashCode7) * 1000003;
        String str7 = this.h;
        if (str7 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = str7.hashCode();
        }
        int i9 = (i8 ^ hashCode8) * 1000003;
        String str8 = this.i;
        if (str8 == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = str8.hashCode();
        }
        int i10 = (i9 ^ hashCode9) * 1000003;
        String str9 = this.j;
        if (str9 == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = str9.hashCode();
        }
        int i11 = (i10 ^ hashCode10) * 1000003;
        String str10 = this.k;
        if (str10 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = str10.hashCode();
        }
        int i12 = (i11 ^ hashCode11) * 1000003;
        String str11 = this.l;
        if (str11 != null) {
            i = str11.hashCode();
        }
        return i12 ^ i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.a);
        sb.append(", model=");
        sb.append(this.b);
        sb.append(", hardware=");
        sb.append(this.c);
        sb.append(", device=");
        sb.append(this.d);
        sb.append(", product=");
        sb.append(this.e);
        sb.append(", osBuild=");
        sb.append(this.f);
        sb.append(", manufacturer=");
        sb.append(this.g);
        sb.append(", fingerprint=");
        sb.append(this.h);
        sb.append(", locale=");
        sb.append(this.i);
        sb.append(", country=");
        sb.append(this.j);
        sb.append(", mccMnc=");
        sb.append(this.k);
        sb.append(", applicationBuild=");
        return q.l(sb, this.l, "}");
    }
}
