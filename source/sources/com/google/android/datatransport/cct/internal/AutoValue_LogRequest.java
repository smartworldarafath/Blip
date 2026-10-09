package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.LogRequest;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_LogRequest extends LogRequest {
    public final long a;
    public final long b;
    public final ClientInfo c;
    public final Integer d;
    public final String e;
    public final List f;
    public final QosTier g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends LogRequest.Builder {
        public Long a;
        public Long b;
        public ClientInfo c;
        public Integer d;
        public String e;
        public ArrayList f;
        public QosTier g;

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest a() {
            String str;
            if (this.a == null) {
                str = " requestTimeMs";
            } else {
                str = "";
            }
            if (this.b == null) {
                str = str.concat(" requestUptimeMs");
            }
            if (str.isEmpty()) {
                return new AutoValue_LogRequest(this.a.longValue(), this.b.longValue(), this.c, this.d, this.e, this.f, this.g);
            }
            u2.l("Missing required properties:".concat(str));
            return null;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder b(ClientInfo clientInfo) {
            this.c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder c(ArrayList arrayList) {
            this.f = arrayList;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder d() {
            this.g = QosTier.j;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder e(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder f(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    public AutoValue_LogRequest(long j, long j2, ClientInfo clientInfo, Integer num, String str, ArrayList arrayList, QosTier qosTier) {
        this.a = j;
        this.b = j2;
        this.c = clientInfo;
        this.d = num;
        this.e = str;
        this.f = arrayList;
        this.g = qosTier;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LogRequest) {
            AutoValue_LogRequest autoValue_LogRequest = (AutoValue_LogRequest) ((LogRequest) obj);
            if (this.a == autoValue_LogRequest.a && this.b == autoValue_LogRequest.b) {
                ClientInfo clientInfo = autoValue_LogRequest.c;
                ClientInfo clientInfo2 = this.c;
                if (clientInfo2 != null ? clientInfo2.equals(clientInfo) : clientInfo == null) {
                    Integer num = autoValue_LogRequest.d;
                    Integer num2 = this.d;
                    if (num2 != null ? num2.equals(num) : num == null) {
                        String str = autoValue_LogRequest.e;
                        String str2 = this.e;
                        if (str2 != null ? str2.equals(str) : str == null) {
                            List list = autoValue_LogRequest.f;
                            List list2 = this.f;
                            if (list2 != null ? list2.equals(list) : list == null) {
                                QosTier qosTier = autoValue_LogRequest.g;
                                QosTier qosTier2 = this.g;
                                if (qosTier2 != null ? qosTier2.equals(qosTier) : qosTier == null) {
                                    return true;
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
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        int i2 = 0;
        ClientInfo clientInfo = this.c;
        if (clientInfo == null) {
            hashCode = 0;
        } else {
            hashCode = clientInfo.hashCode();
        }
        int i3 = (i ^ hashCode) * 1000003;
        Integer num = this.d;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i4 = (i3 ^ hashCode2) * 1000003;
        String str = this.e;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i5 = (i4 ^ hashCode3) * 1000003;
        List list = this.f;
        if (list == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list.hashCode();
        }
        int i6 = (i5 ^ hashCode4) * 1000003;
        QosTier qosTier = this.g;
        if (qosTier != null) {
            i2 = qosTier.hashCode();
        }
        return i6 ^ i2;
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.a + ", requestUptimeMs=" + this.b + ", clientInfo=" + this.c + ", logSource=" + this.d + ", logSourceName=" + this.e + ", logEvents=" + this.f + ", qosTier=" + this.g + "}";
    }
}
