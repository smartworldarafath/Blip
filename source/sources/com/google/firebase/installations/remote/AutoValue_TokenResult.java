package com.google.firebase.installations.remote;

import com.google.firebase.installations.remote.TokenResult;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AutoValue_TokenResult extends TokenResult {
    public final String a;
    public final long b;
    public final TokenResult.ResponseCode c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends TokenResult.Builder {
        public String a;
        public long b;
        public TokenResult.ResponseCode c;
        public byte d;

        public final TokenResult a() {
            if (this.d == 1) {
                return new AutoValue_TokenResult(this.a, this.b, this.c);
            }
            u2.l("Missing required properties: tokenExpirationTimestamp");
            return null;
        }
    }

    public AutoValue_TokenResult(String str, long j, TokenResult.ResponseCode responseCode) {
        this.a = str;
        this.b = j;
        this.c = responseCode;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public final TokenResult.ResponseCode a() {
        return this.c;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public final String b() {
        return this.a;
    }

    @Override // com.google.firebase.installations.remote.TokenResult
    public final long c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TokenResult) {
            TokenResult tokenResult = (TokenResult) obj;
            String str = this.a;
            if (str != null ? str.equals(((AutoValue_TokenResult) tokenResult).a) : ((AutoValue_TokenResult) tokenResult).a == null) {
                AutoValue_TokenResult autoValue_TokenResult = (AutoValue_TokenResult) tokenResult;
                if (this.b == autoValue_TokenResult.b) {
                    TokenResult.ResponseCode responseCode = autoValue_TokenResult.c;
                    TokenResult.ResponseCode responseCode2 = this.c;
                    if (responseCode2 != null ? responseCode2.equals(responseCode) : responseCode == null) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        String str = this.a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        long j = this.b;
        int i2 = (((hashCode ^ 1000003) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003;
        TokenResult.ResponseCode responseCode = this.c;
        if (responseCode != null) {
            i = responseCode.hashCode();
        }
        return i2 ^ i;
    }

    public final String toString() {
        return "TokenResult{token=" + this.a + ", tokenExpirationTimestamp=" + this.b + ", responseCode=" + this.c + "}";
    }
}
