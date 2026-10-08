package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.ClientInfo;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_ClientInfo extends ClientInfo {
    public final ClientInfo.ClientType a;
    public final AndroidClientInfo b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends ClientInfo.Builder {
        public ClientInfo.ClientType a;
        public AndroidClientInfo b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo a() {
            return new AutoValue_ClientInfo(this.a, this.b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo.Builder b(AndroidClientInfo androidClientInfo) {
            this.b = androidClientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo.Builder c() {
            this.a = ClientInfo.ClientType.j;
            return this;
        }
    }

    public AutoValue_ClientInfo(ClientInfo.ClientType clientType, AndroidClientInfo androidClientInfo) {
        this.a = clientType;
        this.b = androidClientInfo;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ClientInfo) {
            ClientInfo clientInfo = (ClientInfo) obj;
            ClientInfo.ClientType clientType = this.a;
            if (clientType != null ? clientType.equals(((AutoValue_ClientInfo) clientInfo).a) : ((AutoValue_ClientInfo) clientInfo).a == null) {
                AndroidClientInfo androidClientInfo = this.b;
                if (androidClientInfo != null ? androidClientInfo.equals(((AutoValue_ClientInfo) clientInfo).b) : ((AutoValue_ClientInfo) clientInfo).b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        ClientInfo.ClientType clientType = this.a;
        if (clientType == null) {
            hashCode = 0;
        } else {
            hashCode = clientType.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        AndroidClientInfo androidClientInfo = this.b;
        if (androidClientInfo != null) {
            i = androidClientInfo.hashCode();
        }
        return i2 ^ i;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.a + ", androidClientInfo=" + this.b + "}";
    }
}
